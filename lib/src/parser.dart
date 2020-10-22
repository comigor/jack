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
  Parser numberToken() => super.numberToken().map((each) => double.parse(each.toString()));
  @override
  Parser stringToken() =>
      super.stringToken().map((each) => each.toString().replaceAll('"', ''));
  @override
  Parser dateToken() => super.dateToken().map((each) => DateTime.parse(each.toString()));
  @override
  Parser accountToken() => super.accountToken().map((each) => Account(each.toString()));
  @override
  Parser tagToken() =>
      super.tagToken().map((each) => each.toString().substring(1));
  @override
  Parser linkToken() =>
      super.linkToken().map((each) => each.toString().substring(1));
  @override
  Parser metadataToken() => super
      .metadataToken()
      .map((each) => { for (var e in each as List) e.first.toString() : MetaValue(
                e.elementAt(2).toString(),
                comment: e.elementAt(3).toString().trim(),
              ) });
  @override
  Parser costToken() => super.costToken().map((each) {
        final e = each as List;
        return Cost(
          amount: double.parse(e.first.toString()),
          currency: e.last.toString(),
        );
      });

  @override
  Parser singlePosting() => super.singlePosting().map((each) {
        final e = each as List;
        final cost = e.elementAt(2) as Cost;
        return Posting(
          flag: e.first?.toString(),
          account: e.elementAt(1) as Account,
          cost: cost,
          comment: e.elementAt(3)?.toString(),
          metadata: e.last as Map<String, MetaValue>,
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
        var payee =
            e.elementAt(2) != null ? (e.elementAt(2) as List).first?.toString() : null;
        var comment =
            e.elementAt(2) != null ? (e.elementAt(2) as List).last?.toString() : null;
        if (payee != null && comment == null) {
          comment = payee;
          payee = null;
        }
        return Transaction(
          date: e.first as DateTime,
          flag: e.elementAt(1)?.toString(),
          payee: payee,
          narration: comment,
          tags: e.elementAt(3) as List<String>,
          links: e.elementAt(4) as List<String>,
          metadata: e.elementAt(6) as Map<String, MetaValue>,
          postings: e.last as List<Posting>,
          comment: e.elementAt(5)?.toString(),
        );
      });
  @override
  Parser balance() => super.balance().map((each) {
        final e = each as List;
        return Balance(
          date: e.first as DateTime,
          account: e.elementAt(2) as Account,
          cost: e.elementAt(3) as Cost,
          metadata: e.elementAt(5) as Map<String, MetaValue>,
        );
      });
  @override
  Parser accountAction() => super.accountAction().map((each) {
        final e = each as List;
        return AccountAction(
          date: e.first as DateTime,
          action: e.elementAt(1)?.toString(),
          account: e.elementAt(2) as Account,
          currencies: ((e.elementAt(3) as List) ?? [])
              .where(
                  (i) => i.toString().trim().isNotEmpty && i.toString() != ',')
              .toList()
              .cast<String>(),
          comment: e.last.toString(),
        );
      });
  @override
  Parser padAction() => super.padAction().map((each) {
        final e = each as List;
        return PadAction(
          date: e.first as DateTime,
          account: e.elementAt(2) as Account,
          padAccount: e.elementAt(3) as Account,
        );
      });
  @override
  Parser noteAction() => super.noteAction().map((each) {
        final e = each as List;
        return NoteAction(
          date: e.first as DateTime,
          account: e.elementAt(2) as Account,
          note: e.elementAt(3).toString().replaceAll('"', ''),
        );
      });
  @override
  Parser customAction() => super.customAction().map((each) {
        final e = each as List;
        final type = e.elementAt(2).toString().replaceAll('"', '');

        if (type == 'budget') {
          return BudgetAction(
            date: e.first as DateTime,
            type: e.elementAt(2).toString().replaceAll('"', ''),
            values: e.elementAt(3) as List,
          );
        }

        return CustomAction(
          date: e.first as DateTime,
          type: e.elementAt(2).toString().replaceAll('"', ''),
          values: e.elementAt(3) as List,
        );
      });

  @override
  Parser option() => super.option().map((each) {
        final e = each as List;
        return 'option "${e.elementAt(1)}" "${e.elementAt(2)}"${e.elementAt(3)}';
      });

  @override
  Parser orgModeSection() => super.orgModeSection().map((each) => each.trim());
  @override
  Parser blankLine() => super.blankLine().map((each) => each.trim());

  @override
  Parser comment() => super.comment().map((each) => each.trim());
  @override
  Parser fullLineComment() =>
      super.fullLineComment().map((each) => each.trim());
  @override
  Parser ignoredDirective() =>
      super.ignoredDirective().map((each) => each.join().trim());
}
