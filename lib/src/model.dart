import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

class MetaValue {
  String value;
  String comment;

  MetaValue(this.value, {String comment = ''}) : comment = comment.trim();

  @override
  String toString() => '"$value"${comment.isNotEmpty ? ' $comment' : ''}';
}

class Account {
  String name;

  Account(this.name);

  @override
  String toString() => name;
}

class Cost {
  double amount;
  String currency;

  Cost({
    @required this.amount,
    @required this.currency,
  });

  Cost copyWith({
    double amount,
    String currency,
  }) {
    return Cost(
      amount: amount ?? this.amount,
      currency: currency ?? this.currency,
    );
  }

  @override
  String toString() => '${amount.toStringAsFixed(2)} $currency';
}

class Posting {
  String flag;
  Account account;
  Cost cost;
  Map<String, MetaValue> metadata;
  String comment;

  Posting({
    this.flag,
    this.account,
    this.cost,
    this.metadata,
    this.comment = '',
  }) {
    flag = flag ?? '*';
    metadata = metadata ?? {};
    comment = comment.trim();
  }

  Posting copyWith({
    String flag,
    Account account,
    Cost cost,
    Map<String, MetaValue> metadata,
    String comment,
  }) {
    return Posting(
      flag: flag ?? this.flag,
      account: account ?? this.account,
      cost: cost ?? this.cost,
      metadata: metadata ?? this.metadata,
      comment: comment ?? this.comment,
    );
  }

  @override
  String toString() {
    var buffer = StringBuffer();

    if (flag != '*') buffer.write('$flag ');

    buffer.write(account ?? '');

    if (cost != null) {
      buffer.write(' $cost');
    }

    if (comment.isNotEmpty) {
      buffer.write(' $comment');
    }

    for (MapEntry<String, MetaValue> meta in metadata.entries) {
      buffer.write('\n  ${meta.key}: ${meta.value}');
    }

    return buffer.toString();
  }
}

var formatter = DateFormat('yyyy-MM-dd');

class Transaction {
  DateTime date;
  String flag;
  String payee;
  String narration;
  List<String> tags;
  List<String> links;
  Map<String, MetaValue> metadata;
  List<Posting> postings;
  String comment;

  Transaction({
    DateTime date,
    this.flag = '*',
    this.payee,
    this.narration,
    this.tags = const [],
    this.links = const [],
    this.metadata = const {},
    this.postings = const [],
    String comment = '',
  })  : date = date ?? DateTime.now(),
        comment = comment.trim();

  Transaction copyWith({
    DateTime date,
    String flag,
    String payee,
    String narration,
    List<String> tags,
    List<String> links,
    Map<String, MetaValue> metadata,
    List<Posting> postings,
    String comment,
  }) {
    return Transaction(
      date: date ?? this.date,
      flag: flag ?? this.flag,
      payee: payee ?? this.payee,
      narration: narration ?? this.narration,
      tags: tags ?? this.tags,
      links: links ?? this.links,
      metadata: metadata ?? this.metadata,
      postings: postings ?? this.postings,
      comment: comment ?? this.comment,
    );
  }

  String headerToString() {
    var buffer = StringBuffer()..write('${formatter.format(date)} $flag');

    if (payee != null && payee.isNotEmpty) {
      buffer.write(' "$payee" "${narration ?? ''}"');
    } else {
      if (narration != null && narration.isNotEmpty) {
        buffer.write(' "$narration"');
      }
    }

    for (String tag in tags.where((t) => t != null)) {
      buffer.write(' #$tag');
    }
    for (String link in links.where((l) => l != null)) {
      buffer.write(' ^$link');
    }

    if (comment.isNotEmpty) {
      buffer.write(' $comment');
    }

    return buffer.toString();
  }

  @override
  String toString() {
    var buffer = StringBuffer()..write(headerToString());

    for (MapEntry<String, MetaValue> meta in metadata.entries) {
      buffer.write('\n  ${meta.key}: ${meta.value}');
    }

    for (Posting posting in postings) {
      buffer.write('\n  ${posting.toString().replaceAll('\n', '\n  ')}');
    }

    return buffer.toString();
  }
}

class Balance {
  DateTime date;
  Account account;
  Cost cost;
  Map<String, MetaValue> metadata;

  Balance({
    @required this.date,
    @required this.account,
    @required this.cost,
    this.metadata,
  }) {
    metadata = metadata ?? {};
  }

  Balance copyWith({
    DateTime date,
    Account account,
    Cost cost,
    Map<String, MetaValue> metadata,
  }) {
    return Balance(
      date: date ?? this.date,
      account: account ?? this.account,
      cost: cost ?? this.cost,
      metadata: metadata ?? this.metadata,
    );
  }

  @override
  String toString() {
    var buffer = StringBuffer()
      ..write('${formatter.format(date)} balance $account $cost');

    for (MapEntry<String, MetaValue> meta in metadata.entries) {
      buffer.write('\n  ${meta.key}: ${meta.value}');
    }

    return buffer.toString();
  }
}

class AccountAction {
  DateTime date;
  String action;
  Account account;
  List<String> currencies;
  String comment;

  AccountAction({
    @required this.date,
    @required this.action,
    @required this.account,
    this.currencies,
    this.comment = '',
  }) {
    currencies = currencies ?? [];
    comment = comment.trim();
  }

  AccountAction copyWith({
    DateTime date,
    String action,
    Account account,
    List<String> currencies,
    String comment,
  }) {
    return AccountAction(
      date: date ?? this.date,
      action: action ?? this.action,
      account: account ?? this.account,
      currencies: currencies ?? this.currencies,
      comment: comment ?? this.comment,
    );
  }

  @override
  String toString() {
    var buffer = StringBuffer()
      ..write('${formatter.format(date)} $action $account');

    if (currencies.isNotEmpty) {
      buffer.write(' ${currencies.join(',')}');
    }

    if (comment.isNotEmpty) {
      buffer.write(' $comment');
    }

    return buffer.toString();
  }
}

class PadAction {
  DateTime date;
  Account account;
  Account padAccount;

  PadAction({
    @required this.date,
    @required this.account,
    @required this.padAccount,
  });

  PadAction copyWith({
    DateTime date,
    Account account,
    Account padAccount,
  }) {
    return PadAction(
      date: date ?? this.date,
      account: account ?? this.account,
      padAccount: padAccount ?? this.padAccount,
    );
  }

  @override
  String toString() {
    var buffer = StringBuffer()
      ..write('${formatter.format(date)} pad $account $padAccount');
    return buffer.toString();
  }
}

class NoteAction {
  DateTime date;
  Account account;
  String note;

  NoteAction({
    @required this.date,
    @required this.account,
    @required this.note,
  });

  NoteAction copyWith({
    DateTime date,
    Account account,
    String note,
  }) {
    return NoteAction(
      date: date ?? this.date,
      account: account ?? this.account,
      note: note ?? this.note,
    );
  }

  @override
  String toString() {
    var buffer = StringBuffer()
      ..write('${formatter.format(date)} note $account "$note"');
    return buffer.toString();
  }
}

class CustomAction {
  DateTime date;
  String type;
  List values;

  CustomAction({
    @required this.date,
    @required this.type,
    this.values = const [],
  });

  CustomAction copyWith({
    DateTime date,
    String type,
    List values,
  }) {
    return CustomAction(
      date: date ?? this.date,
      type: type ?? this.type,
      values: values ?? this.values,
    );
  }

  @override
  String toString() {
    var buffer = StringBuffer()
      ..write(
          '${formatter.format(date)} custom "$type" "${values.join('" "')}"');
    return buffer.toString();
  }
}

class BudgetAction extends CustomAction {
  BudgetAction({
    @required DateTime date,
    @required String type,
    List values = const [],
  }) : super(
          date: date,
          type: type,
          values: values,
        ) {
    final sp = values.elementAt(2).toString().split(' ');
    cost = Cost(
      amount: double.parse(sp[0]),
      currency: sp[1],
    );
  }
  Account get account => values.elementAt(0) as Account;
  String get periodicity => values.elementAt(1).toString().replaceAll('"', '');
  Cost cost;

  @override
  String toString() =>
      '${formatter.format(date)} custom "budget" $account "$periodicity" $cost';
}
