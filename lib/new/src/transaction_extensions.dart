import 'package:money2/money2.dart';
import 'model.dart';

Money _getEffectiveMoney(Posting posting) {
  if (posting.position?.cost?.value != null) {
    return posting.position.cost.value;
  } else if (posting.position?.price != null) {
    return posting.position?.price;
  }
  return posting.position?.unit;
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
  bool get isBalanced {
    final hasBlankPosting =
        postings.where((posting) => posting.position?.unit == null).length == 1;
    if (hasBlankPosting) return true;

    final sums = _sumsMap(this);
    return sums.values.every((money) => money.isZero);
  }

  Transaction balance() {
    final blankPosting =
        postings.where((posting) => posting.position?.unit == null).single;
    assert(blankPosting != null);

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
