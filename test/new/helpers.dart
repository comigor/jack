import 'package:jack/new/jack.dart';

final bg = BeancountParser();

final _stocksBeanFile = '''
2020-09-01 * "Buying stocks"
  Assets:Stocks:PETR4 100 PETR4 {22.78 BRL} ; wrong purchase
  Expenses:Taxes 3.70 BRL
    what: "CBLC"
  Expenses:Taxes 0.46 BRL ; meh
    what: "Bolsa"
  Expenses:Taxes 0.04 BRL
    what: "IRRF S/DAY TRADE"
  Assets:Clear:Cash -4.20 BRL ; taxes
  Assets:Clear:Cash ; should be -2278.00 BRL

2020-09-01 * "Selling PETR4"
  Assets:Stocks:PETR4 -100 PETR4 {22.78 BRL} @ 22.84 BRL
  Assets:Clear:Cash 2284.00 BRL ; sell
  Income:Clear:PnL ; loss, should be -6.00 BRL

; 2020-03-03 open Income:Clear:PnL BRL ; profit and loss
; 2020-03-03 open Assets:Clear:Cash BRL
; 2020-03-03 open Assets:Stocks:PETR4 PETR4
; 2018-01-01 open Expenses:Taxes BRL
''';

final _stocksParsed = bg.parse(_stocksBeanFile).value;
final stocksBuy = _stocksParsed.first as Transaction;
final stocksSell = _stocksParsed.elementAt(1) as Transaction;
