import 'dart:core';

import 'package:money2/money2.dart';
import 'package:petitparser/petitparser.dart';

import 'actions.dart';
import 'grammar.dart';
import 'model.dart';
import 'money_extension.dart';

class BeancountParser extends GrammarParser {
  BeancountParser({
    List<Currency> currencyList = const [],
  }) : super(BeancountParserDefinition(currencyList: currencyList));
}

class BeancountParserDefinition extends BeancountGrammarDefinition {
  BeancountParserDefinition({
    this.currencyList = const [],
  });

  final List<Currency> currencyList;

  String _sanitizeComment(dynamic comment) =>
      comment?.toString()?.trim()?.replaceFirst(RegExp(r'^; +'), '');

  @override
  Parser stringToken() =>
      super.stringToken().map((each) => each.toString().replaceAll('"', ''));
  @override
  Parser dateToken() =>
      super.dateToken().map((each) => DateTime.parse(each.toString()));
  @override
  Parser accountToken() =>
      super.accountToken().map((each) => Account(name: each.toString()));
  @override
  Parser tagToken() =>
      super.tagToken().map((each) => each.toString().substring(1));
  @override
  Parser linkToken() =>
      super.linkToken().map((each) => each.toString().substring(1));
  @override
  Parser metadataToken() => super.metadataToken().map((each) => {
        for (var e in each as List)
          e.first.toString(): MetaValue(
            value: e.elementAt(2).toString(),
            comment: e.elementAt(3) as String,
          )
      });
  @override
  Parser amountWithCurrencyToken() =>
      super.amountWithCurrencyToken().map((each) {
        final e = each as List;
        final ccode = e.last.toString();

        final currency = currencyList.firstWhere(
          (c) => c.code == ccode,
          orElse: () => Currency.create(ccode, 2, pattern: '0.00 CCC'),
        );

        return MoneyExt.fromLooseString(
          e.first.toString(),
          currency,
        );
      });
  @override
  Parser costToken() => super.costToken().map((each) {
        final e = each as List;
        final type = e.first as String;
        final items = e.elementAt(1) as List;
        final value =
            items.singleWhere((e) => e is Money, orElse: () => null) as Money;
        final date = items.singleWhere((e) => e is DateTime, orElse: () => null)
            as DateTime;
        final label =
            items.singleWhere((e) => e is String, orElse: () => null) as String;

        return Cost(
          perUnitValue: type == '{' ? value : null,
          value: type == '{{' ? value : null,
          date: date,
          label: label,
        );
      });

  @override
  Parser singlePosting() => super.singlePosting().map((each) {
        final e = each as List;
        return Posting(
          flag: e.first?.toString(),
          account: e.elementAt(1) as Account,
          position: e.elementAt(2) as Position,
          comment: e.elementAt(3) as String,
          metadata: e.last as Map<String, MetaValue>,
        );
      });

  @override
  Parser singlePosition() => super.singlePosition().map((each) {
        final e = each as List;
        final price = e.elementAt(2) as List;
        final type = price?.first as String;
        final unit = price?.last as Money;

        return Position(
          unit: e.first as Money,
          cost: e.elementAt(1) as Cost,
          perUnitPrice: type == '@' ? unit : null,
          price: type == '@@' ? unit : null,
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
        var payee = e.elementAt(2) != null
            ? (e.elementAt(2) as List).first?.toString()
            : null;
        var comment = e.elementAt(2) != null
            ? (e.elementAt(2) as List).last?.toString()
            : null;
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
          comment: e.elementAt(5) as String,
        );
      });

  @override
  Parser accountAction() => super.accountAction().map((each) {
        final e = each as List;
        final date = e.first as DateTime;
        final type = e.elementAt(1).toString().replaceAll('"', '');
        final account = e.elementAt(2) as Account;
        final currencies =
            (e.elementAt(3) as List)?.map((e) => e.toString())?.toList();
        final bookingMethod = e.elementAt(4)?.toString()?.replaceAll('"', '');
        final comment = e.elementAt(5) as String;
        final metadata = e.elementAt(6) as Map<String, MetaValue>;

        switch (type) {
          case 'open':
            return AccountAction.open(
              date: date,
              type: type,
              account: account,
              currencies: currencies,
              bookingMethod: bookingMethod,
              comment: comment,
              metadata: metadata,
            );
          case 'close':
          default:
            return AccountAction.close(
              date: date,
              type: type,
              account: account,
              comment: comment,
              metadata: metadata,
            );
        }
      });
  @override
  Parser commodityAction() => super.commodityAction().map((each) {
        final e = each as List;
        return CommodityAction(
          date: e.first as DateTime,
          code: e.elementAt(2) as String,
          comment: e.elementAt(3) as String,
          metadata: e.elementAt(4) as Map<String, MetaValue>,
        );
      });
  @override
  Parser balanceAction() => super.balanceAction().map((each) {
        final e = each as List;
        return BalanceAction(
          date: e.first as DateTime,
          account: e.elementAt(2) as Account,
          unit: e.elementAt(3) as Money,
          comment: e.elementAt(4) as String,
          metadata: e.elementAt(5) as Map<String, MetaValue>,
        );
      });
  @override
  Parser padAction() => super.padAction().map((each) {
        final e = each as List;
        return PadAction(
          date: e.first as DateTime,
          account: e.elementAt(2) as Account,
          padAccount: e.elementAt(3) as Account,
          comment: e.elementAt(4) as String,
          metadata: e.elementAt(5) as Map<String, MetaValue>,
        );
      });
  @override
  Parser noteAction() => super.noteAction().map((each) {
        final e = each as List;
        return NoteAction(
          date: e.first as DateTime,
          account: e.elementAt(2) as Account,
          note: e.elementAt(3).toString().replaceAll('"', ''),
          comment: e.elementAt(4) as String,
          metadata: e.elementAt(5) as Map<String, MetaValue>,
        );
      });
  @override
  Parser documentAction() => super.documentAction().map((each) {
        final e = each as List;
        return DocumentAction(
          date: e.first as DateTime,
          account: e.elementAt(2) as Account,
          path: e.elementAt(3).toString().replaceAll('"', ''),
          comment: e.elementAt(4) as String,
          metadata: e.elementAt(5) as Map<String, MetaValue>,
        );
      });
  @override
  Parser priceAction() => super.priceAction().map((each) {
        final e = each as List;
        return PriceAction(
          date: e.first as DateTime,
          currency: e.elementAt(2) as String,
          amount: e.elementAt(3) as Money,
          comment: e.elementAt(4) as String,
          metadata: e.elementAt(5) as Map<String, MetaValue>,
        );
      });
  @override
  Parser eventAction() => super.eventAction().map((each) {
        final e = each as List;
        return EventAction(
          date: e.first as DateTime,
          name: e.elementAt(2).toString().replaceAll('"', ''),
          value: e.elementAt(3).toString().replaceAll('"', ''),
          comment: e.elementAt(4) as String,
          metadata: e.elementAt(5) as Map<String, MetaValue>,
        );
      });
  @override
  Parser queryAction() => super.queryAction().map((each) {
        final e = each as List;
        return QueryAction(
          date: e.first as DateTime,
          name: e.elementAt(2).toString().replaceAll('"', ''),
          query: e.elementAt(3).toString().replaceAll('"', ''),
          comment: e.elementAt(4) as String,
          metadata: e.elementAt(5) as Map<String, MetaValue>,
        );
      });
  @override
  Parser customAction() => super.customAction().map((each) {
        final e = each as List;
        final date = e.first as DateTime;
        final type = e.elementAt(2).toString().replaceAll('"', '');
        final values = e.elementAt(3) as List;
        final comment = e.elementAt(4) as String;
        final metadata = e.elementAt(5) as Map<String, MetaValue>;

        switch (type) {
          case 'budget':
            return CustomAction.budget(
              date: date,
              values: values,
              comment: comment,
              metadata: metadata,
            );
          case 'custom':
          default:
            return CustomAction.custom(
              date: date,
              type: type,
              values: values,
              comment: comment,
              metadata: metadata,
            );
        }
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
  Parser comment() => super.comment().map(_sanitizeComment);
  @override
  Parser fullLineComment() =>
      super.fullLineComment().map((each) => each.trim());
  @override
  Parser ignoredDirective() =>
      super.ignoredDirective().map((each) => each.join().trim());
}
