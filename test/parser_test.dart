import 'package:test/test.dart';

import 'package:jack/jack.dart';

void main() {
  group('Beancount parser can go back-and-forth on records', () {
    test('on a full transaction', () {
      final commoditiesDefinition = '''
2019-01-21 commodity BITCOIN
  precision: "8"
2019-01-21 commodity NFLX
  precision: "0"
2019-01-21 commodity GOOG.UNVEST
  precision: "0"
'''
          .trim();
      final fullTransactionRecord = '''
2019-01-22 ! "Payee" "Comment" #tag ^link ; comments
  meta: "data" ; are
  Expenses:A 20.98 USD ; NOT
    meta: "data" ; ignored
    x: "y"
    z: 2023-01-01
  ! Liabilities:B -330.66 BRL
  Income:C:D -99.00000001 BITCOIN
  Income:E -99.00 USD
  Income:F 1234 NFLX
  Income:F 1234 GOOG.UNVEST
  Equity:G 1234.56 USD {} ; empty works
  Equity:G 1234.56 USD {10.00 BRL} ; blah
  Equity:H 1234.56 USD {{10.00 BRL, 2020-11-19, "tag"}}
  Equity:I 1234.56 USD @ 10.01 BRL ; blah
  Equity:J 1234.56 USD @@ 10.01 BRL
  Equity:K 1234.56 USD {10.00 BRL} @@ 5000.01 BRL
  Assets:I
'''
          .trim();

      final bg = BeancountParser().build();
      final defs = bg.parse(commoditiesDefinition).value as List;

      final bg2 = BeancountParser(
        currencyList:
            defs.whereType<CommodityAction>().map((c) => c.currency).toList(),
      ).build();

      final transaction =
          bg2.parse(fullTransactionRecord).value.first as Transaction;
      expect(transaction.stringify.trim(), fullTransactionRecord);
    });

    test('on actions', () {
      final bg = BeancountParser().build();
      final actionsString = '''
2020-11-20 open Assets:Cash BRL,USD ; comment
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
