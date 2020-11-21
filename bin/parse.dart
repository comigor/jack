import 'dart:io';

import 'package:jack/jack.dart';

void main() {
  final file = File('${Directory.current.absolute.path}/../beancount/main.bean')
      .readAsStringSync();

  final bg = BeancountParser();
  final defs = bg.parse(file).value as List;

  final bg2 = BeancountParser(
    currencyList:
        defs.whereType<CommodityAction>().map((c) => c.currency).toList(),
  );

  final result = bg2.parse(file);
  // print(result.message);

  final l = result.value as List;
  // print(l.length);

  print(l.map((e) {
    if (e is String) return e;
    return e.stringify;
  }).join('\n'));
}
