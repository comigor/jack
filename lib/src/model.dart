import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:money2/money2.dart';

part 'model.freezed.dart';

@freezed
abstract class MetaValue with _$MetaValue {
  MetaValue._();

  factory MetaValue({
    required String value,
     String? comment,
  }) = _MetaValue;

  String get stringify => (() {
        final buffer = StringBuffer()..write('"$value"');

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

  Transaction? get balanced => (() {
        if (isBalanced) return this;
        if (!canBeBalanced) return null;

        final blankPosting = postings.firstWhere((p) => p.position == null);

        return copyWith(
          postings: [
            ...postings.where((p) => p.position != null),
            ...sumsMap.values.where((money) => !money.isZero).map(
              (money) => blankPosting.copyWith(
                position: Position(unit: -money),
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
        final unitFixed = Fixed.fromBigInt(unit.minorUnits, scale: unit.currency.scale);

        if (positionBang.cost?.value != null) {
          return positionBang.cost!.value;
        } else if (positionBang.cost?.perUnitValue != null) {
          return positionBang.cost!.perUnitValue!.multiplyByFixed(unitFixed);
        } else if (positionBang.price != null) {
          return positionBang.price;
        } else if (positionBang.perUnitPrice != null) {
          return positionBang.perUnitPrice!.multiplyByFixed(unitFixed);
        }

        return positionBang.unit;
      })();
}

@freezed
abstract class Position with _$Position {
  Position._();

  factory Position({
    required Money unit, // amount + currency
     Cost? cost, // {} or {{}}
     Money? price, // @@ -> used only to balance when no cost is defined
     Money? perUnitPrice, // @ -> same
  }) = _Position;

  String get stringify => (() {
        final buffer = StringBuffer()..write(unit);

        if (cost != null) {
          buffer.write(' ${cost!.stringify}');
        }

        if ((price ?? perUnitPrice) != null) {
          final isAbsolutePrice = price != null;
          buffer.write(
              ' ${isAbsolutePrice ? '@@' : '@'} ${price ?? perUnitPrice}');
        }

        return buffer.toString();
      })();
}

@freezed
abstract class Cost with _$Cost {
  Cost._();

  // Absolute cost: {{[amount],  [date],     [label]}}
  //                {{10.00 BRL, 2020-11-19, "lot-A"}}
  // Per unit cost: {[amount],  [date],     [label]}
  //                {10.00 BRL, 2020-11-19, "lot-A"}
  factory Cost({
     Money? value, // amount + currency
     Money? perUnitValue, // amount + currency
     DateTime? date,
     String? label,
  }) = _Cost;

  String get stringify => (() {
        final isAbsoluteValue = value != null;
        final lotData = [
          if ((value ?? perUnitValue) != null) value ?? perUnitValue,
          if (date != null) formatter.format(date!),
          if (label != null) '"$label"'
        ];

        final buffer = StringBuffer()
          ..write(isAbsoluteValue ? '{{' : '{')
          ..write(lotData.join(', '))
          ..write(isAbsoluteValue ? '}}' : '}');
        return buffer.toString();
      })();
}
