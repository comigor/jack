import 'package:test/test.dart';
import 'package:money2/money2.dart';

import 'package:jack/new/jack.dart';

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
            position: Position(unit: Money.from(10, c01)),
          ),
          Posting(
            account: Account(name: 'B'),
          ),
        ],
      );
      expect(transaction.isBalanced, isTrue);
    });

    test('simple postings', () {
      final transaction = Transaction(
        date: DateTime.now(),
        postings: [
          Posting(
            account: Account(name: 'A'),
            position: Position(unit: Money.from(10, c01)),
          ),
          Posting(
            account: Account(name: 'B'),
            position: Position(unit: Money.from(-10, c01)),
          ),
        ],
      );
      expect(transaction.isBalanced, isTrue);
    });

    test('postings with multiple ccurrencies', () {
      final transaction = Transaction(
        date: DateTime.now(),
        postings: [
          Posting(
            account: Account(name: 'A'),
            position: Position(unit: Money.from(10, c01)),
          ),
          Posting(
            account: Account(name: 'C'),
            position: Position(unit: Money.from(-10, c01)),
          ),
          Posting(
            account: Account(name: 'A'),
            position: Position(unit: Money.from(10, c02)),
          ),
          Posting(
            account: Account(name: 'B'),
            position: Position(unit: Money.from(-10, c02)),
          ),
        ],
      );
      expect(transaction.isBalanced, isTrue);
    });
  });

  group('on Transaction balancing', () {
    test('posting without position', () {
      final beforeBalancing = Transaction(
        date: DateTime.now(),
        postings: [
          Posting(
            account: Account(name: 'A'),
            position: Position(unit: Money.from(10, c01)),
          ),
          Posting(
            account: Account(name: 'B'),
          ),
        ],
      );

      final afterBalancing = [
        Posting(
          account: Account(name: 'A'),
          position: Position(unit: Money.from(10, c01)),
        ),
        Posting(
          account: Account(name: 'B'),
          position: Position(unit: Money.from(-10, c01)),
        ),
      ];

      expect(beforeBalancing.balance().postings, equals(afterBalancing));
    });

    test('with multiple currencies and price', () {
      final beforeBalancing = Transaction(
        date: DateTime.now(),
        postings: [
          Posting(
            account: Account(name: 'A'),
            position: Position(unit: Money.from(10, c01)),
          ),
          Posting(
            account: Account(name: 'B'),
            position: Position(
              unit: Money.from(23472, c02),
              price: Money.from(-5, c01),
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
          position: Position(unit: Money.from(10, c01)),
        ),
        Posting(
          account: Account(name: 'B'),
          position: Position(
            unit: Money.from(23472, c02),
            price: Money.from(-5, c01),
          ),
        ),
        Posting(
          account: Account(name: 'C'),
          position: Position(unit: Money.from(-5, c01)),
        ),
      ];

      expect(beforeBalancing.balance().postings, equals(afterBalancing));
    });

    test('with multiple currencies and cost', () {
      final beforeBalancing = Transaction(
        date: DateTime.now(),
        postings: [
          Posting(
            account: Account(name: 'A'),
            position: Position(unit: Money.from(10, c01)),
          ),
          Posting(
            account: Account(name: 'B'),
            position: Position(
              unit: Money.from(500, c02),
              cost: Cost(value: Money.from(-5, c01)),
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
          position: Position(unit: Money.from(10, c01)),
        ),
        Posting(
          account: Account(name: 'B'),
          position: Position(
            unit: Money.from(500, c02),
            cost: Cost(value: Money.from(-5, c01)),
          ),
        ),
        Posting(
          account: Account(name: 'C'),
          position: Position(unit: Money.from(-5, c01)),
        ),
      ];

      expect(beforeBalancing.balance().postings, equals(afterBalancing));
    });

    test('with multiple currencies, price and cost (price is ignored)', () {
      final beforeBalancing = Transaction(
        date: DateTime.now(),
        postings: [
          Posting(
            account: Account(name: 'A'),
            position: Position(unit: Money.from(10, c01)),
          ),
          Posting(
            account: Account(name: 'B'),
            position: Position(
              unit: Money.from(500, c02),
              cost: Cost(value: Money.from(-5, c01)),
              price: Money.from(57827, c01),
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
          position: Position(unit: Money.from(10, c01)),
        ),
        Posting(
          account: Account(name: 'B'),
          position: Position(
            unit: Money.from(500, c02),
            cost: Cost(value: Money.from(-5, c01)),
            price: Money.from(57827, c01),
          ),
        ),
        Posting(
          account: Account(name: 'C'),
          position: Position(unit: Money.from(-5, c01)),
        ),
      ];

      expect(beforeBalancing.balance().postings, equals(afterBalancing));
    });
  });
}