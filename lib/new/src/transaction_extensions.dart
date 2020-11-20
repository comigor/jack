import 'package:money2/money2.dart';
import 'model.dart';

Money _getEffectiveMoney(Posting posting) {
  if (posting.position == null) return null;

  final unit = posting.position.unit;
  final unitDouble = unit.minorUnits / unit.currency.minorDigitsFactor;

  if (posting.position.cost?.value != null) {
    return posting.position.cost.value;
  } else if (posting.position.cost?.perUnitValue != null) {
    return posting.position.cost.perUnitValue * unitDouble;
  } else if (posting.position.price != null) {
    return posting.position.price;
  } else if (posting.position.perUnitPrice != null) {
    return posting.position.perUnitPrice * unitDouble;
  }

  return posting.position.unit;
}

Map<Currency, Money> _sumsMap(Transaction transaction) {
  final sums = <Currency, Money>{};
  transaction.postings.map(_getEffectiveMoney).forEach((money) {
    if (money != null) {
      sums.update(
        money.currency,
        (oldMoney) => oldMoney += money,
        ifAbsent: () => money,
      );
    }
  });
  return sums;
}

extension TransactionExtension on Transaction {
  bool get canBeBalanced =>
      postings.where((posting) => posting.position == null).length == 1;

  bool get isBalanced => _sumsMap(this).values.every((money) => money.isZero);

  Transaction balance() {
    if (!isBalanced) return this;
    if (!canBeBalanced) return null;

    final calculatedUnit =
        -_sumsMap(this).values.where((money) => !money.isZero).single;

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
  }
}
