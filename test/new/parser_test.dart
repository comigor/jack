import 'package:test/test.dart';

import 'package:jack/new/jack.dart';

void main() {
  group('Beancount parser can go back-and-forth on some records', () {
    test('on a full transaction', () {
      final bg = BeancountParser();
      final fullTransactionRecord = '''
2019-01-22 ! "Payee" "Comment" #tag ^link ; comments
  meta: "data" ; are
  Expenses:A 20.98 USD ; NOT
    meta: "data" ; ignored
    x: "y"
  ! Liabilities:B -330.66 BRL
  Income:C:D:E:F -99.00 BITCOIN
  Equity:G 1234.56 USD {10.00 BRL} ; blah
  Equity:H 1234.56 USD {{10.00 BRL, 2020-11-19, "tag"}}
  Equity:I 1234.56 USD @ 10.01 BRL ; blah
  Equity:J 1234.56 USD @@ 10.01 BRL
  Equity:K 1234.56 USD {10.00 BRL} @@ 5000.01 BRL
  Assets:I
'''
          .trim();
      final transaction =
          bg.parse(fullTransactionRecord).value.first as Transaction;
      expect(transaction.stringify.trim(), fullTransactionRecord);
    });
  });
}
