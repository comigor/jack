import 'package:test/test.dart';
import 'package:jack/jack.dart';

void main() {
  group('Beancount parser can go back-and-forth on some records', () {
    test('on a simple transaction', () {
      final bg = BeancountParser();
      final singleRecord = '''
2019-01-22 * "Payee" ""
  Expenses:A 20.98 USD
  Assets:B
'''
          .trim();
      final transaction = bg.parse(singleRecord).value.first;
      expect(transaction.toString().trim(), singleRecord);
    });

    final fullTransactionRecord = '''
2019-01-22 ! "Payee" "Comment" #tag ^link
  meta: "data"
  Expenses:A 20.98 USD
    meta: "data"
    x: "y"
  Liabilities:B -330.66 BRL
  Income:C:D:E:F -99.00 BITCOINS
  Equity:G:H 1234.56 USD
  Assets:I
'''
        .trim();

    test('on a full transaction', () {
      final bg = BeancountParser();
      final transaction = bg.parse(fullTransactionRecord).value.first;
      expect(transaction.toString().trim(), fullTransactionRecord);
    });

    test('comments are ignored', () {
      final bg = BeancountParser();
      final singleRecord = '''
2019-01-22 ! "Payee" "Comment" #tag ^link ; every
  meta: "data"                            ; comment
  Expenses:A 20.98 USD                    ; line
    meta: "data"                          ; is
    x: "y"                                ; solemnly
  Liabilities:B -330.66 BRL               ; ignored
  Income:C:D:E:F -99.00 BITCOINS          ; by
  Equity:G:H 1234.56 USD                  ; the
  Assets:I                                ; parser
''';
      final transaction = bg.parse(singleRecord).value.first;
      expect(transaction.toString().trim(), fullTransactionRecord);
    });

    test('on a balance', () {
      final bg = BeancountParser();
      final singleRecord = '''
2019-01-22 balance Assets:A 0.12 BRL
  meta: "data"
'''
          .trim();
      final balance = bg.parse(singleRecord).value.first;
      expect(balance.toString().trim(), singleRecord);
    });

    test('on a account action', () {
      final bg = BeancountParser();
      final singleRecord = '''
2016-01-01 open Income:A BRL
'''
          .trim();
      final action = bg.parse(singleRecord).value.first;
      expect(action.toString().trim(), singleRecord);
    });
  });
}
