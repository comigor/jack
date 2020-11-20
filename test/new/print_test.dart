import 'package:test/test.dart';
import 'package:money2/money2.dart';

import 'package:jack/new/jack.dart';

void main() {
  final c01 = Currency.create('BRL', 2, pattern: r'0.00 CCC');

  group('on Cost.print', () {
    test('an empty cost', () {
      final cost = Cost();
      expect(cost.print(), equals('{}'));
    });

    test('a cost with per unit value', () {
      final cost = Cost(perUnitValue: Money.from(102.345, c01));
      expect(cost.print(), equals('{102.34 BRL}'));
    });

    test('a cost with absolute value', () {
      final cost = Cost(value: Money.from(102.345, c01));
      expect(cost.print(), equals('{{102.34 BRL}}'));
    });

    test('a cost with date', () {
      final cost = Cost(date: DateTime(2020, 04, 21));
      expect(cost.print(), equals('{2020-04-21}'));
    });

    test('a cost with label', () {
      final cost = Cost(label: 'some-tag');
      expect(cost.print(), equals('{"some-tag"}'));
    });

    test('a cost with per-unit value, date and label', () {
      final cost = Cost(
        perUnitValue: Money.from(13, c01),
        date: DateTime(2020, 04, 21),
        label: 'some-tag',
      );
      expect(cost.print(), equals('{13.00 BRL, 2020-04-21, "some-tag"}'));
    });
  });

  group('on Position.print', () {
    test('a position with just unit', () {
      final position = Position(unit: Money.from(10, c01));
      expect(position.print(), equals('10.00 BRL'));
    });

    test('a position with unit and cost', () {
      final position = Position(
        unit: Money.from(10, c01),
        cost: Cost(),
      );
      expect(position.print(), equals('10.00 BRL {}'));
    });

    test('a position with unit and absolute price', () {
      final position = Position(
        unit: Money.from(10, c01),
        perUnitPrice: Money.from(2, c01),
      );
      expect(position.print(), equals('10.00 BRL @ 2.00 BRL'));
    });

    test('a position with unit and per-unit price', () {
      final position = Position(
        unit: Money.from(10, c01),
        price: Money.from(2, c01),
      );
      expect(position.print(), equals('10.00 BRL @@ 2.00 BRL'));
    });

    test('a position with unit, cost and absolute price', () {
      final position = Position(
        unit: Money.from(10, c01),
        cost: Cost(),
        perUnitPrice: Money.from(2, c01),
      );
      expect(position.print(), equals('10.00 BRL {} @ 2.00 BRL'));
    });
  });

  group('on Posting.print', () {
    test('a posting with just an account', () {
      final posting = Posting(account: Account(name: 'A'));
      expect(posting.print(), equals('A'));
    });

    test('a posting with account and comment', () {
      final posting = Posting(
        account: Account(name: 'A'),
        comment: '; empty posting',
      );
      expect(posting.print(), equals('A ; empty posting'));
    });

    test('a posting lots of things', () {
      final posting = Posting(
        flag: '!',
        account: Account(name: 'A'),
        position: Position(unit: Money.from(10, c01)),
        comment: '; not empty anymore',
      );
      expect(posting.print(), equals('! A 10.00 BRL ; not empty anymore'));
    });

    test('a posting with metadata', () {
      final posting = Posting(
        account: Account(name: 'A'),
        metadata: {
          'a-meta': MetaValue(value: 'aaaaaaa'),
          'b-meta': MetaValue(value: 'bbbbbbb', comment: '; comm'),
        },
      );
      expect(posting.print(), equals('''A
  a-meta: "aaaaaaa"
  b-meta: "bbbbbbb" ; comm'''));
    });
  });
}
