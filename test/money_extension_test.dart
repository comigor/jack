import 'package:test/test.dart';
import 'package:money2/money2.dart';

import 'package:jack/jack.dart';

void main() {
  final brl = Currencies().findByCode('BRL')!;

  group('on parsing Money loosely', () {
    test('without decimals', () {
      expect(
        MoneyExt.fromLooseString('5', brl),
        equals(Money.fromInt(500, code: 'BRL')),
      );
    });

    test('with complete (2/2) decimals', () {
      expect(
        MoneyExt.fromLooseString('5.50', brl),
        equals(Money.fromInt(550, code: 'BRL')),
      );
    });

    test('with uncomplete (1/2) decimals', () {
      expect(
        MoneyExt.fromLooseString('5.5', brl),
        equals(Money.fromInt(550, code: 'BRL')),
      );
    });

    // test('with overloaded (3/2) decimals (it will be truncated)', () {
    //   expect(
    //     MoneyExt.fromLooseString('5.509', brl),
    //     equals(Money.fromInt(550, code: 'BRL')),
    //   );
    // });
  });
}
