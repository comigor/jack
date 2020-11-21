import 'dart:io';

import 'package:jack/jack.dart';

void main() {
  final bg = BeancountParser();
  final file = File('${Directory.current.absolute.path}/../beancount/main.bean')
      .readAsStringSync();
  final result = bg.parse(file);
  // print(result.message);

  final l = result.value as List;
  // print(l.length);

  print(l.map((e) {
    if (e is String) return e;
    return e.stringify;
  }).join('\n'));
}
