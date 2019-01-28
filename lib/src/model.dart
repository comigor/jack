import 'package:meta/meta.dart';
import 'package:intl/intl.dart';

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
  String account;
  Cost cost;
  Map<String, String> metadata;

  Posting({
    this.flag,
    @required this.account,
    this.cost,
    this.metadata,
  }) {
    flag = flag ?? '*';
    metadata = metadata ?? {};
  }

  Posting copyWith({
    String flag,
    String account,
    Cost cost,
    Map<String, String> metadata,
  }) {
    return Posting(
      flag: flag ?? this.flag,
      account: account ?? this.account,
      cost: cost ?? this.cost,
      metadata: metadata ?? this.metadata,
    );
  }

  @override
  String toString() {
    var buffer = new StringBuffer();

    if (flag != '*') buffer.write('$flag ');

    buffer.write('$account');

    if (cost != null) {
      buffer.write(' $cost');
    }

    for (MapEntry<String, String> meta in metadata.entries) {
      buffer.write('\n  ${meta.key}: "${meta.value}"');
    }

    return buffer.toString();
  }
}

var formatter = new DateFormat('yyyy-MM-dd');

class Transaction {
  DateTime date;
  String flag;
  String payee;
  String comment;
  List<String> tags;
  List<String> links;
  Map<String, String> metadata;
  List<Posting> postings;

  Transaction({
    this.date,
    this.flag,
    this.payee,
    this.comment,
    this.tags,
    this.links,
    this.metadata,
    this.postings,
  }) {
    date = date ?? DateTime.now();
    flag = flag ?? '*';
    tags = tags ?? [];
    links = links ?? [];
    metadata = metadata ?? {};
    postings = postings ?? [];
  }

  Transaction copyWith({
    DateTime date,
    String flag,
    String payee,
    String comment,
    List<String> tags,
    List<String> links,
    Map<String, String> metadata,
    List<Posting> postings,
  }) {
    return Transaction(
      date: date ?? this.date,
      flag: flag ?? this.flag,
      payee: payee ?? this.payee,
      comment: comment ?? this.comment,
      tags: tags ?? this.tags,
      links: links ?? this.links,
      metadata: metadata ?? this.metadata,
      postings: postings ?? this.postings,
    );
  }

  @override
  String toString() {
    var buffer = new StringBuffer();
    buffer.write(formatter.format(date));
    buffer.write(' $flag');

    if (payee != null && payee.isNotEmpty) {
      buffer.write(' "$payee" "${comment ?? ''}"');
    } else {
      if (comment != null && comment.isNotEmpty) {
        buffer.write(' "$comment"');
      }
    }

    for (String tag in tags.where((t) => t != null)) {
      buffer.write(' #$tag');
    }
    for (String link in links.where((l) => l != null)) {
      buffer.write(' ^$link');
    }
    buffer.writeln();

    for (MapEntry<String, String> meta in metadata.entries) {
      buffer.writeln('  ${meta.key}: "${meta.value}"');
    }

    for (Posting posting in postings) {
      buffer.writeln('  ${posting.toString().replaceAll('\n', '\n  ')}');
    }

    return buffer.toString();
  }
}

class Balance {
  DateTime date;
  String account;
  Cost cost;
  Map<String, String> metadata;

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
    String account,
    Cost cost,
    Map<String, String> metadata,
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
    var buffer = new StringBuffer();
    buffer.writeln('${formatter.format(date)} balance $account $cost');

    for (MapEntry<String, String> meta in metadata.entries) {
      buffer.writeln('  ${meta.key}: "${meta.value}"');
    }

    return buffer.toString();
  }
}

class AccountAction {
  DateTime date;
  String action;
  String account;
  List<String> currencies;

  AccountAction({
    @required this.date,
    @required this.action,
    @required this.account,
    this.currencies,
  }) {
    currencies = currencies ?? [];
  }

  AccountAction copyWith({
    DateTime date,
    String action,
    String account,
    List<String> currencies,
  }) {
    return AccountAction(
      date: date ?? this.date,
      action: action ?? this.action,
      account: account ?? this.account,
      currencies: currencies ?? this.currencies,
    );
  }

  @override
  String toString() {
    var buffer = new StringBuffer();
    buffer.write(formatter.format(date));
    buffer.write(' $action $account');

    if (currencies.isNotEmpty) {
      buffer.write(' ${currencies.join(',')}');
    }

    return buffer.toString();
  }
}
