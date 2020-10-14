import 'dart:core';
import 'package:petitparser/petitparser.dart';

import 'grammar.dart';
import 'model.dart';

class BeancountParser extends GrammarParser {
  BeancountParser() : super(const BeancountParserDefinition());
}

class BeancountParserDefinition extends BeancountGrammarDefinition {
  const BeancountParserDefinition();

  @override
  Parser numberToken() =>
      super.numberToken().map((each) => double.parse(each as String));
  @override
  Parser stringToken() =>
      super.stringToken().map((each) => each.toString().replaceAll('"', ''));
  @override
  Parser dateToken() =>
      super.dateToken().map((each) => DateTime.parse(each as String));
  @override
  Parser tagToken() =>
      super.tagToken().map((each) => each.toString().substring(1));
  @override
  Parser linkToken() =>
      super.linkToken().map((each) => each.toString().substring(1));
  @override
  Parser metadataToken() => super.metadataToken().map((each) => {
        for (var e in each as List) e.first as String: e.elementAt(2) as String
      });
  @override
  Parser costToken() => super.costToken().map((each) {
        final e = each as List;
        return Cost(
          amount: e.first as double,
          currency: e.last as String,
        );
      });

  @override
  Parser singlePosting() => super.singlePosting().map((each) {
        final e = each as List<dynamic>;
        final cost = e.elementAt(2) as Cost;
        return Posting(
          flag: e.first as String,
          account: e.elementAt(1) as String,
          cost: cost,
          metadata: e.last as Map<String, String>,
        );
      });

  @override
  Parser tags() => super.tags().map((each) => (each as List).cast<String>());
  @override
  Parser links() => super.links().map((each) => (each as List).cast<String>());
  @override
  Parser postings() =>
      super.postings().map((each) => (each as List).cast<Posting>());

  @override
  Parser transaction() => super.transaction().map((each) {
        final e = each as List;
        var payee = (e.elementAt(2) as List).first as String;
        var comment = (e.elementAt(2) as List).last as String;
        if (payee != null && comment == null) {
          comment = payee;
          payee = null;
        }
        return Transaction(
          date: e.first as DateTime,
          flag: e.elementAt(1) as String,
          payee: payee,
          comment: comment,
          tags: e.elementAt(3) as List<String>,
          links: e.elementAt(4) as List<String>,
          metadata: e.elementAt(6) as Map<String, String>,
          postings: e.last as List<Posting>,
        );
      });
  @override
  Parser balance() => super.balance().map((each) {
        final e = each as List;
        return Balance(
          date: e.first as DateTime,
          account: e.elementAt(2) as String,
          cost: e.elementAt(3) as Cost,
          metadata: e.elementAt(5) as Map<String, String>,
        );
      });
  @override
  Parser accountAction() => super.accountAction().map((each) {
        final e = each as List;
        return AccountAction(
          date: e.first as DateTime,
          action: e.elementAt(1) as String,
          account: e.elementAt(2) as String,
          currencies: ((e.elementAt(3) as List) ?? [])
              .where(
                  (i) => i.toString().trim().isNotEmpty && i.toString() != ',')
              .toList()
              .cast<String>(),
        );
      });
}
