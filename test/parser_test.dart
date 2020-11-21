import 'package:test/test.dart';

import 'package:jack/jack.dart';

void main() {
  group('Beancount parser can go back-and-forth on records', () {
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

    test('on actions', () {
      final bg = BeancountParser();
      final actionsString = '''
2020-11-20 open Assets:Cash BRL ; comment
  meta: "data" ; comment
2020-11-20 close Assets:Cash ; comment
  meta: "data" ; comment
2020-11-20 commodity BRL ; comment
  meta: "data" ; comment
2020-11-20 balance Assets:Cash -3492.02 USD ; comment
  meta: "data" ; comment
2020-11-20 pad Assets:A Assets:B ; comment
  meta: "data" ; comment
2020-11-20 note Assets:A "note" ; comment
  meta: "data" ; comment
2020-11-20 document Assets:A "/tmp/doc.jpg" ; comment
  meta: "data" ; comment
2020-11-20 price PETR4 29.99 BRL ; comment
  meta: "data" ; comment
2020-11-20 event "name" "value" ; comment
  meta: "data" ; comment
2020-11-20 query "name" "SELECT query" ; comment
  meta: "data" ; comment
2020-11-20 custom "budget" Expenses:Food:Lunch "monthly" 600.00 BRL ; comment
  meta: "data" ; comment
2020-11-20 custom "other" Expenses:Food:Lunch "monthly" 600.00 BRL ; comment
  meta: "data" ; comment
'''
          .trim();
      final actions = bg.parse(actionsString).value;
      expect(actions.map((a) => a.stringify).join('\n').trim(), actionsString);
    });
  });
}
