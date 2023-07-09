import 'package:test/test.dart';
import 'package:money2/money2.dart';

import 'package:jack/jack.dart';
import 'helpers.dart';

void main() {
  final c01 = Currency.create('BRL', 2);
  final c02 = Currency.create('BTC', 8);

  group('on Transaction extensions balance check', () {
    test('posting without position', () {
      final transaction = Transaction(
        date: DateTime.now(),
        postings: [
          Posting(
            account: Account(name: 'A'),
            position: Position(unit: Money.fromNumWithCurrency(10, c01)),
          ),
          Posting(
            account: Account(name: 'B'),
          ),
        ],
      );
      expect(transaction.canBeBalanced, isTrue);
    });

    test('simple postings', () {
      final transaction = Transaction(
        date: DateTime.now(),
        postings: [
          Posting(
            account: Account(name: 'A'),
            position: Position(unit: Money.fromNumWithCurrency(10, c01)),
          ),
          Posting(
            account: Account(name: 'B'),
            position: Position(unit: Money.fromNumWithCurrency(-10, c01)),
          ),
        ],
      );
      expect(transaction.canBeBalanced, isFalse);
    });

    test('postings with multiple currencies', () {
      final transaction = Transaction(
        date: DateTime.now(),
        postings: [
          Posting(
            account: Account(name: 'A'),
            position: Position(unit: Money.fromNumWithCurrency(10, c01)),
          ),
          Posting(
            account: Account(name: 'C'),
            position: Position(unit: Money.fromNumWithCurrency(-10, c01)),
          ),
          Posting(
            account: Account(name: 'A'),
            position: Position(unit: Money.fromNumWithCurrency(10, c02)),
          ),
          Posting(
            account: Account(name: 'B'),
            position: Position(unit: Money.fromNumWithCurrency(-10, c02)),
          ),
        ],
      );
      expect(transaction.canBeBalanced, isFalse);
    });
  });

  group('on Transaction balancing', () {
    test('posting without position', () {
      final beforeBalancing = Transaction(
        date: DateTime.now(),
        postings: [
          Posting(
            account: Account(name: 'A'),
            position: Position(unit: Money.fromNumWithCurrency(10, c01)),
          ),
          Posting(
            account: Account(name: 'B'),
          ),
        ],
      );

      final afterBalancing = [
        Posting(
          account: Account(name: 'A'),
          position: Position(unit: Money.fromNumWithCurrency(10, c01)),
        ),
        Posting(
          account: Account(name: 'B'),
          position: Position(unit: Money.fromNumWithCurrency(-10, c01)),
        ),
      ];

      expect(beforeBalancing.balanced!.postings, equals(afterBalancing));
    });

    test('with multiple currencies and price', () {
      final beforeBalancing = Transaction(
        date: DateTime.now(),
        postings: [
          Posting(
            account: Account(name: 'A'),
            position: Position(unit: Money.fromNumWithCurrency(10, c01)),
          ),
          Posting(
            account: Account(name: 'B'),
            position: Position(
              unit: Money.fromNumWithCurrency(23472, c02),
              price: Money.fromNumWithCurrency(-5, c01),
            ),
          ),
          Posting(
            account: Account(name: 'C'),
          ),
        ],
      );

      final afterBalancing = [
        Posting(
          account: Account(name: 'A'),
          position: Position(unit: Money.fromNumWithCurrency(10, c01)),
        ),
        Posting(
          account: Account(name: 'B'),
          position: Position(
            unit: Money.fromNumWithCurrency(23472, c02),
            price: Money.fromNumWithCurrency(-5, c01),
          ),
        ),
        Posting(
          account: Account(name: 'C'),
          position: Position(unit: Money.fromNumWithCurrency(-5, c01)),
        ),
      ];

      expect(beforeBalancing.balanced!.postings, equals(afterBalancing));
    });

    test('with multiple currencies and cost', () {
      final beforeBalancing = Transaction(
        date: DateTime.now(),
        postings: [
          Posting(
            account: Account(name: 'A'),
            position: Position(unit: Money.fromNumWithCurrency(10, c01)),
          ),
          Posting(
            account: Account(name: 'B'),
            position: Position(
              unit: Money.fromNumWithCurrency(500, c02),
              cost: Cost(value: Money.fromNumWithCurrency(-5, c01)),
            ),
          ),
          Posting(
            account: Account(name: 'C'),
          ),
        ],
      );

      final afterBalancing = [
        Posting(
          account: Account(name: 'A'),
          position: Position(unit: Money.fromNumWithCurrency(10, c01)),
        ),
        Posting(
          account: Account(name: 'B'),
          position: Position(
            unit: Money.fromNumWithCurrency(500, c02),
            cost: Cost(value: Money.fromNumWithCurrency(-5, c01)),
          ),
        ),
        Posting(
          account: Account(name: 'C'),
          position: Position(unit: Money.fromNumWithCurrency(-5, c01)),
        ),
      ];

      expect(beforeBalancing.balanced!.postings, equals(afterBalancing));
    });

    test('with multiple currencies, price and cost (price is ignored)', () {
      final beforeBalancing = Transaction(
        date: DateTime.now(),
        postings: [
          Posting(
            account: Account(name: 'A'),
            position: Position(unit: Money.fromNumWithCurrency(10, c01)),
          ),
          Posting(
            account: Account(name: 'B'),
            position: Position(
              unit: Money.fromNumWithCurrency(500, c02),
              cost: Cost(value: Money.fromNumWithCurrency(-5, c01)),
              price: Money.fromNumWithCurrency(57827, c01),
            ),
          ),
          Posting(
            account: Account(name: 'C'),
          ),
        ],
      );

      final afterBalancing = [
        Posting(
          account: Account(name: 'A'),
          position: Position(unit: Money.fromNumWithCurrency(10, c01)),
        ),
        Posting(
          account: Account(name: 'B'),
          position: Position(
            unit: Money.fromNumWithCurrency(500, c02),
            cost: Cost(value: Money.fromNumWithCurrency(-5, c01)),
            price: Money.fromNumWithCurrency(57827, c01),
          ),
        ),
        Posting(
          account: Account(name: 'C'),
          position: Position(unit: Money.fromNumWithCurrency(-5, c01)),
        ),
      ];

      expect(beforeBalancing.balanced!.postings, equals(afterBalancing));
    });

    test('balancing complex transactions', () {
      expect(
        stocksBuy.balanced!.postings.last,
        equals(
          Posting(
            account: Account(name: 'Assets:Clear:Cash'),
            position: Position(
              unit: Money.parseWithCurrency('-2278.00 BRL',
                  Currency.create('BRL', 2, pattern: '0.00 CCC')),
            ),
            comment: 'should be -2278.00 BRL',
          ),
        ),
      );
    });

    test('with multiple currency for the same posting', () {
      final beforeBalancing = Transaction(
        date: DateTime.now(),
        postings: [
          Posting(
            account: Account(name: 'A'),
            position: Position(unit: Money.fromNumWithCurrency(10, c01)),
          ),
          Posting(
            account: Account(name: 'B'),
            position: Position(unit: Money.fromNumWithCurrency(10, c02)),
          ),
          Posting(
            account: Account(name: 'Equity:FX'),
          ),
        ],
      );

      final afterBalancing = [
        Posting(
          account: Account(name: 'A'),
          position: Position(unit: Money.fromNumWithCurrency(10, c01)),
        ),
        Posting(
          account: Account(name: 'B'),
          position: Position(unit: Money.fromNumWithCurrency(10, c02)),
        ),
        Posting(
          account: Account(name: 'Equity:FX'),
          position: Position(unit: Money.fromNumWithCurrency(-10, c01)),
        ),
        Posting(
          account: Account(name: 'Equity:FX'),
          position: Position(unit: Money.fromNumWithCurrency(-10, c02)),
        ),
      ];

      expect(beforeBalancing.balanced!.postings, equals(afterBalancing));
    });
  });
}
