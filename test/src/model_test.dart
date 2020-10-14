import 'package:test/test.dart';
import 'package:jack/jack.dart';

void main() {
  group('Posting.toString()', () {
    test('on the simplest posting', () {
      final posting = Posting(account: 'Assets');
      final expected = '''Assets''';
      expect(posting.toString(), equals(expected));
    });

    test('on a posting with flag', () {
      final posting = Posting(account: 'Assets:A', flag: '!');
      final expected = '''! Assets:A''';
      expect(posting.toString(), equals(expected));
    });

    test('on a posting with cost', () {
      final posting =
          Posting(account: 'Assets:A', cost: Cost(amount: 10, currency: 'BRL'));
      final expected = '''Assets:A 10.00 BRL''';
      expect(posting.toString(), equals(expected));
    });

    test('on a posting with metadata', () {
      final posting =
          Posting(account: 'Assets:B', metadata: {'dont-know': 'don\'t care'});
      final expected = '''Assets:B
  dont-know: "don't care"''';
      expect(posting.toString(), equals(expected));
    });
  });

  group('Transaction.toString()', () {
    test('on (an invalid) blank transaction', () {
      final transaction = Transaction(date: DateTime(2018));
      final expected = '''
2018-01-01 *
''';
      expect(transaction.toString(), equals(expected));
    });

    test('on simple transaction', () {
      final transaction = Transaction(
        date: DateTime(2018),
        postings: [
          Posting(account: 'A', cost: Cost(amount: 10, currency: 'MONEY')),
          Posting(account: 'B'),
        ],
      );
      final expected = '''
2018-01-01 *
  A 10.00 MONEY
  B
''';
      expect(transaction.toString(), equals(expected));
    });

    test('on transaction with multiple different postings', () {
      final transaction = Transaction(
        date: DateTime(2018),
        postings: [
          Posting(account: 'A', cost: Cost(amount: 10.0, currency: 'MONEY')),
          Posting(account: 'B', cost: Cost(amount: 0.0, currency: 'MONEY')),
          Posting(
              account: 'C', cost: Cost(amount: -999.999, currency: 'MONEY')),
          Posting(account: 'D'),
        ],
      );
      final expected = '''
2018-01-01 *
  A 10.00 MONEY
  B 0.00 MONEY
  C -1000.00 MONEY
  D
''';
      expect(transaction.toString(), equals(expected));
    });

    test('on transaction with tags', () {
      final transaction = Transaction(
        date: DateTime(2018),
        postings: [
          Posting(account: 'A', cost: Cost(amount: 10.0, currency: 'MONEY')),
          Posting(account: 'B'),
        ],
        tags: ['z', 'a', 'b', null, '_0', 'd', '5', 'ç'],
      );
      final expected = '''
2018-01-01 * #z #a #b #_0 #d #5 #ç
  A 10.00 MONEY
  B
''';
      expect(transaction.toString(), equals(expected));
    });

    test('on transaction with links', () {
      final transaction = Transaction(
        date: DateTime(2018),
        postings: [
          Posting(account: 'A', cost: Cost(amount: 10.0, currency: 'MONEY')),
          Posting(account: 'B'),
        ],
        links: ['z', 'a', 'b', null, '_0', 'd', '5', 'ç'],
      );
      final expected = '''
2018-01-01 * ^z ^a ^b ^_0 ^d ^5 ^ç
  A 10.00 MONEY
  B
''';
      expect(transaction.toString(), equals(expected));
    });

    test('on transaction with tags & links', () {
      final transaction = Transaction(
        date: DateTime(2018),
        postings: [
          Posting(account: 'A', cost: Cost(amount: 10.0, currency: 'MONEY')),
          Posting(account: 'B'),
        ],
        tags: ['z', 'a', 'b', '_0', 'd', '5', 'ç'],
        links: ['z', 'a', 'b', '_0', 'd', '5', 'ç'],
      );
      final expected = '''
2018-01-01 * #z #a #b #_0 #d #5 #ç ^z ^a ^b ^_0 ^d ^5 ^ç
  A 10.00 MONEY
  B
''';
      expect(transaction.toString(), equals(expected));
    });

    test('on transaction with a comment', () {
      final transaction = Transaction(
        date: DateTime(2018),
        postings: [
          Posting(account: 'A', cost: Cost(amount: 10.0, currency: 'MONEY')),
          Posting(account: 'B'),
        ],
        comment: 'comment',
      );
      final expected = '''
2018-01-01 * "comment"
  A 10.00 MONEY
  B
''';
      expect(transaction.toString(), equals(expected));
    });

    test('on transaction with a payee and comment', () {
      final transaction = Transaction(
        date: DateTime(2018),
        postings: [
          Posting(account: 'A', cost: Cost(amount: 10.0, currency: 'MONEY')),
          Posting(account: 'B'),
        ],
        payee: 'payee',
        comment: 'comment',
      );
      final expected = '''
2018-01-01 * "payee" "comment"
  A 10.00 MONEY
  B
''';
      expect(transaction.toString(), equals(expected));
    });

    test('on transaction with a payee only', () {
      final transaction = Transaction(
        date: DateTime(2018),
        postings: [
          Posting(account: 'A', cost: Cost(amount: 10.0, currency: 'MONEY')),
          Posting(account: 'B'),
        ],
        payee: 'payee',
      );
      final expected = '''
2018-01-01 * "payee" ""
  A 10.00 MONEY
  B
''';
      expect(transaction.toString(), equals(expected));
    });

    test('on transaction with everything', () {
      final transaction = Transaction(
        date: DateTime(2018),
        postings: [
          Posting(account: 'A', cost: Cost(amount: 10.0, currency: 'MONEY')),
          Posting(account: 'B'),
        ],
        payee: 'payee',
        comment: 'comment',
        tags: ['a'],
        links: ['a'],
      );
      final expected = '''
2018-01-01 * "payee" "comment" #a ^a
  A 10.00 MONEY
  B
''';
      expect(transaction.toString(), equals(expected));
    });
  });

  group('Cost.toString()', () {
    test('on a cost', () {
      final cost = Cost(amount: 99, currency: 'S');
      final expected = '''99.00 S''';
      expect(cost.toString(), equals(expected));
    });

    test('on a rounded cost', () {
      final cost = Cost(amount: 99.9999, currency: 'S');
      final expected = '''100.00 S''';
      expect(cost.toString(), equals(expected));
    });
  });
}
