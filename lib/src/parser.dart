import 'dart:core';

import 'package:money2/money2.dart';
import 'package:petitparser/petitparser.dart';

import 'actions.dart';
import 'grammar.dart';
import 'model.dart';
import 'money_extension.dart';

class BeancountParser extends BeancountGrammarDefinition {
  BeancountParser({
    this.currencyList = const [],
  });

  final List<Currency> currencyList;

  String _sanitizeComment(dynamic comment) =>
      comment.toString().trim().replaceFirst(RegExp(r'^; +'), '');

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
            value: e.elementAt(2),
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

        Currencies().register(currency);

        return MoneyExt.fromLooseString(
          e.first.toString(),
          currency,
        );
      });
  @override
  Parser costToken() => super.costToken().map((each) {
        final items = (each as SeparatedList<dynamic, String>).elements;
        final value =
            items.singleWhere((e) => e is Money, orElse: () => null) as Money?;
        final date = items.singleWhere((e) => e is DateTime, orElse: () => null)
            as DateTime?;
        final label = items.singleWhere((e) => e is String, orElse: () => null)
            as String?;

        return Cost(
          value: value,
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
          position: e.elementAt(2) as Position?,
          comment: e.elementAt(3) as String,
          metadata: e.last as Map<String, MetaValue>,
        );
      });

  @override
  Parser singlePosition() => super.singlePosition().map((each) {
        final e = each as List;

        final unit = e.first as Money;

        final allCost = e.elementAt(1) as List?;
        final costType = allCost?.elementAt(0) as String?;
        final isAbsoluteCost = costType == '{{';
        var cost = allCost?.elementAt(1) as Cost?;
        cost = cost?.copyWith(
          value: costType != null && isAbsoluteCost && cost.value != null
              ? Money.fromFixedWithCurrency(
                  cost.value!.amount / (unit.amount * Fixed.fromNum(1.0)),
                  cost.value!.currency,
                  scale: 16)
              : cost.value,
        );

        final price = e.elementAt(2) as List?;
        final priceType = price?.first as String?;
        final isAbsolutePrice = priceType == '@@';
        var priceUnit = price?.last as Money?;
        priceUnit = priceType != null && isAbsolutePrice && priceUnit != null
            ? Money.fromFixedWithCurrency(
                priceUnit.amount / (unit.amount * Fixed.fromNum(1.0)),
                priceUnit.currency,
                scale: 16)
            : priceUnit;

        return Position(
          unit: unit,
          cost: costType != null ? (cost ?? Cost()) : null,
          isAbsoluteCost: isAbsoluteCost,
          price: priceUnit,
          isAbsolutePrice: isAbsolutePrice,
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
          flag: e.elementAt(1).toString(),
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
        final currencies = (e.elementAt(3) as SeparatedList<dynamic, String>?)
                ?.elements
                .map((e) => e.toString())
                .toList() ??
            const [];
        final bookingMethod = e.elementAt(4)?.toString().replaceAll('"', '');
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

        final commodityAction = CommodityAction(
          date: e.first as DateTime,
          code: e.elementAt(2) as String,
          comment: e.elementAt(3) as String,
          metadata: e.elementAt(4) as Map<String, MetaValue>,
        );

        Currencies().register(commodityAction.currency);

        return commodityAction;
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
