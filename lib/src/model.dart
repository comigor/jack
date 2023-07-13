import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:money2/money2.dart';

part 'model.freezed.dart';

@freezed
abstract class MetaValue<T> with _$MetaValue<T> {
  MetaValue._();

  factory MetaValue({
    required T value,
     String? comment,
  }) = _MetaValue;

  String get stringify => (() {
        final buffer = StringBuffer();
        switch (value.runtimeType) {
          case DateTime:
            buffer.write(formatter.format(value as DateTime));
            break;
          default:
            buffer.write('"$value"');
            break;
        }

        if (comment != null && comment!.isNotEmpty) {
          buffer.write(' ; $comment');
        }

        return buffer.toString();
      })();
}

@freezed
abstract class Account with _$Account {
  Account._();

  factory Account({required String name}) = _Account;

  String get stringify => name;
}

final formatter = DateFormat('yyyy-MM-dd');

@freezed
abstract class Transaction with _$Transaction {
  Transaction._();

  factory Transaction({
    required DateTime date,
    @Default('*') String flag,
     String? payee,
     String? narration,
    @Default([]) List<String> tags,
    @Default([]) List<String> links,
    @Default({}) Map<String, MetaValue> metadata,
    @Default([]) List<Posting> postings,
     String? comment,
  }) = _Transaction;

  String get stringify => (() {
        final buffer = StringBuffer()..write(headerToString);

        for (final meta in metadata.entries) {
          buffer.write('\n  ${meta.key}: ${meta.value.stringify}');
        }

        for (final posting in postings) {
          buffer.write('\n  ${posting.stringify.replaceAll('\n', '\n  ')}');
        }

        return buffer.toString();
      })();

  String get headerToString => (() {
        final buffer = StringBuffer()..write('${formatter.format(date)} $flag');

        if (payee != null && payee!.isNotEmpty) {
          buffer.write(' "$payee" "${narration ?? ''}"');
        } else if (narration != null && narration!.isNotEmpty) {
          buffer.write(' "$narration"');
        }

        for (final tag in tags) {
          buffer.write(' #$tag');
        }
        for (final link in links) {
          buffer.write(' ^$link');
        }

        if (comment != null && comment!.isNotEmpty) {
          buffer.write(' ; $comment');
        }

        return buffer.toString();
      })();

  bool get canBeBalanced =>
      isBalanced || postings.where((posting) => posting.position == null).length == 1;

  Map<Currency, Money> get sumsMap => (() {
        final sums = <Currency, Money>{};
                  postings.map((p) => p.effectiveMoney).forEach((money) {
          if (money != null) {
            sums.update(
              money.currency,
              (oldMoney) => oldMoney += money,
              ifAbsent: () => money,
            );
          }
        });
        return sums;
      })();

  bool get isBalanced => sumsMap.values.every((money) => money.isZero);

  Transaction get balanced => (() {
        if (isBalanced) return this;
        if (!canBeBalanced) return this;

        final blankPosting = postings.firstWhere((p) => p.position == null);

        return copyWith(
          postings: [
            ...postings.where((p) => p.position != null).map((p) => p.balance(date)),
            ...sumsMap.values.where((money) => !money.isZero).map(
              (money) => blankPosting.copyWith(
                position: Position(unit: -money).balance(date),
              ),
            ),
          ],
        );
      })();
}

@freezed
abstract class Posting with _$Posting {
  Posting._();

  factory Posting({
     String? flag,
    required Account account,
     Position? position,
     String? comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = _Posting;

  String get stringify => (() {
        final buffer = StringBuffer();

        if (flag != null) {
          buffer.write('$flag ');
        }

        buffer.write(account.stringify);

        if (position != null) {
          buffer.write(' ${position!.stringify}');
        }

        if (comment != null && comment!.isNotEmpty) {
          buffer.write(' ; $comment');
        }

        for (final meta in metadata.entries) {
          buffer.write('\n  ${meta.key}: ${meta.value.stringify}');
        }

        return buffer.toString();
      })();

  Money? get effectiveMoney => (() {
        if (position == null) return null;
        final positionBang = position!;

        final unit = positionBang.unit;

        if (positionBang.cost?.value != null && positionBang.isAbsoluteCost) {
          return positionBang.cost!.value;
        } else if (positionBang.cost?.value != null && !positionBang.isAbsoluteCost) {
          return positionBang.cost!.value!.multiplyByFixed(unit.amount);
        } else if (positionBang.price != null && positionBang.isAbsolutePrice) {
          return positionBang.price!;
        } else if (positionBang.price != null && !positionBang.isAbsolutePrice) {
          return positionBang.price!.multiplyByFixed(unit.amount);
        }

        return positionBang.unit;
      })();

  Posting balance(DateTime tansactionDate) => (() {
        return copyWith(
          position: position?.balance(tansactionDate),
        );
      })();
}

@freezed
abstract class Position with _$Position {
  Position._();

  factory Position({
    required Money unit, // amount + currency
     Cost? cost, // {} or {{}}
     @Default(false) bool isAbsoluteCost,
     Money? price, // @@ -> used to balancing only when no cost is defined
     @Default(false) bool isAbsolutePrice,
  }) = _Position;

  String get stringify => (() {
        final buffer = StringBuffer()..write(unit);

        if (cost != null) {
          buffer.write(' ${isAbsoluteCost ? '{{' : '{'}${cost!.stringify}${isAbsoluteCost ? '}}' : '}'}');
        }

        if (price != null) {
          buffer.write(' ${isAbsolutePrice ? '@@' : '@'} $price');
        }

        return buffer.toString();
      })();

  Position balance(DateTime tansactionDate) => (() {
        return copyWith(
          cost: cost?.balance(tansactionDate, unit),
        );
      })();
}

/// A variant of Amount that also includes a date and a label.
@freezed
abstract class Cost with _$Cost {
  Cost._();

    factory Cost.def({
     Money? value,
     DateTime? date,
     String? label,
  }) = _Cost;

  /// Absolute cost: {{[amount],  [date],     [label]}}
  ///                {{10.00 BRL, 2020-11-19, "lot-A"}}
  /// Per unit cost: {[amount],  [date],     [label]}
  ///                {10.00 BRL, 2020-11-19, "lot-A"}
  /// 
  /// For this factory, [value] must be per-unit.
  factory Cost({
     Money? value,
     DateTime? date,
     String? label,
  }) {
    return _Cost(
      value: value,
      date: date,
      label: label,
    );
  }

  String get stringify => (() {
        final lotData = [
          if (value != null) value,
          if (date != null) formatter.format(date!),
          if (label != null) '"$label"'
        ];

        final buffer = StringBuffer()
          ..write(lotData.join(', '));
        return buffer.toString();
      })();

  Cost balance(DateTime tansactionDate, Money positionUnit) => (() {
        return copyWith(
          date: positionUnit.isPositive ? (date ?? tansactionDate) : date,
          value: value,
        );
      })();
}
