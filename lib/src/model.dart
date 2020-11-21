import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:money2/money2.dart';

part 'model.freezed.dart';

@freezed
abstract class MetaValue with _$MetaValue {
  factory MetaValue({
    @required String value,
    @nullable String comment,
  }) = _MetaValue;

  @late
  String get stringify => (() {
        final buffer = StringBuffer()..write('"$value"');

        if (comment != null && comment.isNotEmpty) {
          buffer.write(' ; $comment');
        }

        return buffer.toString();
      })();
}

@freezed
abstract class Account with _$Account {
  factory Account({@required String name}) = _Account;

  @late
  String get stringify => name;
}

final formatter = DateFormat('yyyy-MM-dd');

@freezed
abstract class Transaction with _$Transaction {
  factory Transaction({
    @required DateTime date,
    @nullable String flag,
    @nullable String payee,
    @nullable String narration,
    @Default([]) List<String> tags,
    @Default([]) List<String> links,
    @Default({}) Map<String, MetaValue> metadata,
    @Default([]) List<Posting> postings,
    @nullable String comment,
  }) = _Transaction;

  @late
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

  @late
  String get headerToString => (() {
        final buffer = StringBuffer()..write('${formatter.format(date)}');

        if (flag != null && flag.isNotEmpty) {
          buffer.write(' $flag');
        }

        if (payee != null && payee.isNotEmpty) {
          buffer.write(' "$payee" "${narration ?? ''}"');
        } else if (narration != null && narration.isNotEmpty) {
          buffer.write(' "$narration"');
        }

        for (final tag in tags.where((t) => t != null)) {
          buffer.write(' #$tag');
        }
        for (final link in links.where((l) => l != null)) {
          buffer.write(' ^$link');
        }

        if (comment != null && comment.isNotEmpty) {
          buffer.write(' ; $comment');
        }

        return buffer.toString();
      })();

  @late
  bool get canBeBalanced =>
      postings.where((posting) => posting.position == null).length == 1;

  @late
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

  @late
  bool get isBalanced => sumsMap.values.every((money) => money.isZero);

  @late
  Transaction get balanced => (() {
        if (isBalanced) return this;
        if (!canBeBalanced) return null;

        final calculatedUnit =
            -sumsMap.values.where((money) => !money.isZero).single;

        return copyWith(
          postings: postings.map((p) {
            if (p.position == null) {
              return p.copyWith(
                position: Position(unit: calculatedUnit),
              );
            }
            return p;
          }).toList(),
        );
      })();
}

@freezed
abstract class Posting with _$Posting {
  factory Posting({
    @nullable String flag,
    @required Account account,
    @nullable Position position,
    @nullable String comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = _Posting;

  @late
  String get stringify => (() {
        final buffer = StringBuffer();

        if (flag != null) {
          buffer.write('$flag ');
        }

        buffer.write(account.stringify);

        if (position != null) {
          buffer.write(' ${position.stringify}');
        }

        if (comment != null && comment.isNotEmpty) {
          buffer.write(' ; $comment');
        }

        for (final meta in metadata.entries) {
          buffer.write('\n  ${meta.key}: ${meta.value.stringify}');
        }

        return buffer.toString();
      })();

  @late
  Money get effectiveMoney => (() {
        if (position == null) return null;

        final unit = position.unit;
        final unitDouble = unit.minorUnits / unit.currency.minorDigitsFactor;

        if (position.cost?.value != null) {
          return position.cost.value;
        } else if (position.cost?.perUnitValue != null) {
          return position.cost.perUnitValue * unitDouble;
        } else if (position.price != null) {
          return position.price;
        } else if (position.perUnitPrice != null) {
          return position.perUnitPrice * unitDouble;
        }

        return position.unit;
      })();
}

@freezed
abstract class Position with _$Position {
  factory Position({
    @required Money unit, // amount + currency
    @nullable Cost cost, // {} or {{}}
    @nullable Money price, // @@ -> used only to balance when no cost is defined
    @nullable Money perUnitPrice, // @ -> same
  }) = _Position;

  @late
  String get stringify => (() {
        final buffer = StringBuffer()..write(unit);

        if (cost != null) {
          buffer.write(' ${cost.stringify}');
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
  // Absolute cost: {{[amount],  [date],     [label]}}
  //                {{10.00 BRL, 2020-11-19, "lot-A"}}
  // Per unit cost: {[amount],  [date],     [label]}
  //                {10.00 BRL, 2020-11-19, "lot-A"}
  factory Cost({
    @nullable Money value, // amount + currency
    @nullable Money perUnitValue, // amount + currency
    @nullable DateTime date,
    @nullable String label,
  }) = _Cost;

  @late
  String get stringify => (() {
        final isAbsoluteValue = value != null;
        final lotData = [
          if ((value ?? perUnitValue) != null) value ?? perUnitValue,
          if (date != null) formatter.format(date),
          if (label != null) '"$label"'
        ];

        final buffer = StringBuffer()
          ..write(isAbsoluteValue ? '{{' : '{')
          ..write(lotData.join(', '))
          ..write(isAbsoluteValue ? '}}' : '}');
        return buffer.toString();
      })();
}
