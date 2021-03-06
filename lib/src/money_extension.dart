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
  static Money fromLooseString(String str, Currency currency) {
    final hasDecimals = currency.minorDigits > 0;

    final match = RegExp(r'([-+]?)(\d+)(?:\.(\d+))?')
        .firstMatch(str.replaceAll(RegExp(r'[^-+.\d]+'), ''));

    final isNegative = match.group(1) == '-';
    final msd = match.group(2) ?? '0';
    final lsd = (match.group(3) ?? '')
        .padRight(currency.minorDigits, '0')
        .substring(0, currency.minorDigits);

    return Money.parse(
      '${isNegative ? '-' : ''}$msd${hasDecimals ? '.' : ''}$lsd ${currency.code}',
      currency,
      pattern:
          '0${hasDecimals ? '.' : ''}${''.padLeft(currency.minorDigits, '0')} CCC',
    );
  }
}
