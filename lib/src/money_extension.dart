import 'package:money2/money2.dart';

extension MoneyExt on Money {
  /// Accepts inputs even if they don't fill minor digits completely.
  /// All of the following examples would work:
  /// ```
  /// final usd = Currency.create('USD', 2, pattern: '0.00 CCC');
  /// MoneyExt.fromLooseString('10', usd);
  /// MoneyExt.fromLooseString('10.5', usd);
  /// MoneyExt.fromLooseString('10.25', usd);
  /// MoneyExt.fromLooseString('10.259', usd);
  /// ```
  static Money fromLooseString(String str, Currency currency) =>
      Money.fromFixedWithCurrency(Fixed.parse(str), currency);
}
