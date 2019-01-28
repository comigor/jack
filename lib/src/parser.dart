import 'dart:core';
import 'package:petitparser/petitparser.dart';

import 'grammar.dart';
import 'model.dart';

class BeancountParser extends GrammarParser {
  BeancountParser() : super(const BeancountParserDefinition());
}

class BeancountParserDefinition extends BeancountGrammarDefinition {
  const BeancountParserDefinition();

  Parser numberToken() => super.numberToken().map((each) => double.parse(each));
  Parser stringToken() =>
      super.stringToken().map((each) => each.toString().replaceAll('"', ''));
  Parser dateToken() => super.dateToken().map((each) => DateTime.parse(each));
  Parser tagToken() =>
      super.tagToken().map((each) => each.toString().substring(1));
  Parser linkToken() =>
      super.linkToken().map((each) => each.toString().substring(1));
  Parser metadataToken() => super.metadataToken().map((each) =>
      Map<String, String>.fromIterable(each as List,
          key: (e) => e.first, value: (e) => e.elementAt(2)));
  Parser costToken() => super.costToken().map((each) {
        final e = each as List;
        return Cost(
          amount: e.first,
          currency: e.last,
        );
      });

  Parser singlePosting() => super.singlePosting().map((each) {
        final List e = each;
        final Cost cost = e.elementAt(2);
        return Posting(
          flag: e.first,
          account: e.elementAt(1),
          cost: cost,
          metadata: e.last,
        );
      });

  Parser tags() => super.tags().map((each) => (each as List).cast<String>());
  Parser links() => super.links().map((each) => (each as List).cast<String>());
  Parser postings() =>
      super.postings().map((each) => (each as List).cast<Posting>());

  Parser transaction() => super.transaction().map((each) {
        final e = each as List;
        String payee = (e.elementAt(2) as List).first;
        String comment = (e.elementAt(2) as List).last;
        if (payee != null && comment == null) {
          comment = payee;
          payee = null;
        }
        return Transaction(
          date: e.first,
          flag: e.elementAt(1),
          payee: payee,
          comment: comment,
          tags: e.elementAt(3),
          links: e.elementAt(4),
          metadata: e.elementAt(6),
          postings: e.last,
        );
      });
  Parser balance() => super.balance().map((each) {
        final e = each as List;
        return Balance(
          date: e.first,
          account: e.elementAt(2),
          cost: e.elementAt(3) as Cost,
          metadata: e.elementAt(5),
        );
      });
  Parser accountAction() => super.accountAction().map((each) {
        final e = each as List;
        return AccountAction(
          date: e.first,
          action: e.elementAt(1),
          account: e.elementAt(2),
          currencies: ((e.elementAt(3) as List) ?? [])
              .where(
                  (i) => i.toString().trim().isNotEmpty && i.toString() != ',')
              .toList()
              .cast<String>(),
        );
      });
}
