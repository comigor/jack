import 'package:petitparser/petitparser.dart';

class BeancountGrammarDefinition extends GrammarDefinition {
  const BeancountGrammarDefinition();

  @override
  Parser start() => ref0(value).end();
  Parser token(Parser parser) => parser.flatten().trim(anyOf(' \t\r'));

  Parser value() => ref0((transaction() |
          accountAction() |
          commodityAction() |
          balanceAction() |
          padAction() |
          noteAction() |
          documentAction() |
          priceAction() |
          eventAction() |
          queryAction() |
          customAction() |
          option() |
          fullLineComment() |
          orgModeSection() |
          blankLine() |
          ignoredDirective())
      .star);

  Parser numberToken() => ref1(
      token,
      char('-').optional() &
          char('0').or(digit().plus()) &
          char('.').seq(digit().plus()).optional());
  Parser stringToken() =>
      ref1(token, char('"') & pattern('^"').star() & char('"'));
  Parser flagToken() =>
      ref1(token, char('*') | char('!') | string('txn') | string('P'));
  Parser dateToken() => ref1(
      token,
      digit().times(4) &
          char('-') &
          digit().times(2) &
          char('-') &
          digit().times(2));
  Parser accountToken() => ref1(
      token,
      accountPreffixPrimitive() &
          (char(':') & tagsCharacterPrimitive().plus()).star());
  Parser currencyToken() => ref1(
      token,
      uppercaseCharacterPrimitive() &
          (uppercaseCharacterPrimitive() | char('.')).star());
  Parser tagToken() => ref1(token, char('#') & tagsCharacterPrimitive().plus());
  Parser linkToken() =>
      ref1(token, char('^') & tagsCharacterPrimitive().plus());
  Parser singleMetadataToken() =>
      ref1(token, lowercaseCharacterPrimitive().plus()) &
      ref1(token, char(':')) &
      (stringToken() | dateToken()) &
      comment();
  Parser metadataToken() => singleMetadataToken().star();
  Parser amountWithCurrencyToken() => numberToken() & currencyToken();
  Parser costToken() =>
      (amountWithCurrencyToken() | dateToken() | stringToken())
          .plusSeparated(char(','));
  Parser priceToken() =>
      ref1(token, char('@').repeat(1, 2)) & amountWithCurrencyToken();

  Parser tags() => tagToken().star();
  Parser links() => linkToken().star();
  Parser singlePosition() =>
      amountWithCurrencyToken() &
      (ref1(token, char('{').repeat(1, 2)) &
              costToken().optional() &
              ref1(token, char('}').repeat(1, 2)))
          .optional() &
      priceToken().optional();
  Parser singlePosting() =>
      flagToken().optional() &
      accountToken() &
      singlePosition().optional() &
      comment() &
      metadataToken();
  Parser postings() => singlePosting().star();
  Parser currencies() => currencyToken().plusSeparated(char(',')).optional();
  Parser transaction() =>
      dateToken() &
      flagToken() &
      (stringToken() & stringToken().optional()).optional() &
      tags() &
      links() &
      comment() &
      metadataToken() &
      postings();

  Parser accountAction() =>
      dateToken() &
      accountActionPrimitive() &
      accountToken() &
      currencies().optional() &
      (string('STRICT') | string('NONE')).optional() &
      comment() &
      metadataToken();
  Parser commodityAction() =>
      dateToken() &
      string('commodity') &
      currencyToken() &
      comment() &
      metadataToken();
  Parser balanceAction() =>
      dateToken() &
      string('balance') &
      accountToken() &
      amountWithCurrencyToken() &
      comment() &
      metadataToken();
  Parser padAction() =>
      dateToken() &
      string('pad') &
      accountToken() &
      accountToken() &
      comment() &
      metadataToken();
  Parser noteAction() =>
      dateToken() &
      string('note') &
      accountToken() &
      stringToken() &
      comment() &
      metadataToken();
  Parser documentAction() =>
      dateToken() &
      string('document') &
      accountToken() &
      stringToken() &
      comment() &
      metadataToken();
  Parser priceAction() =>
      dateToken() &
      string('price') &
      currencyToken() &
      amountWithCurrencyToken() &
      comment() &
      metadataToken();
  Parser eventAction() =>
      dateToken() &
      string('event') &
      stringToken() &
      stringToken() &
      comment() &
      metadataToken();
  Parser queryAction() =>
      dateToken() &
      string('query') &
      stringToken() &
      stringToken() &
      comment() &
      metadataToken();
  Parser customAction() =>
      dateToken() &
      string('custom') &
      stringToken() &
      (accountToken() |
              amountWithCurrencyToken() |
              stringToken() |
              dateToken() |
              currencyToken())
          .star() &
      comment() &
      metadataToken();
  Parser option() =>
      string('option') & stringToken() & stringToken() & comment();

  Parser fullLineComment() =>
      ref1(token, char(';') & noneOf('\n').star() & char('\n').optional());
  Parser comment() => ref1(token,
      fullLineComment() | whitespacenlb().star() & char('\n').optional());
  Parser orgModeSection() => ref1(
      token, char('*').plus() & noneOf('\n').star() & char('\n').optional());
  Parser blankLine() => char('\n');
  Parser ignoredDirective() => noneOf('\n').plus().flatten() & comment();

  Parser accountActionPrimitive() => string('open') | string('close');
  Parser accountPreffixPrimitive() =>
      string('Assets') |
      string('Liabilities') |
      string('Equity') |
      string('Income') |
      string('Expenses');
  Parser uppercaseCharacterPrimitive() => pattern('0-9A-Z_');
  Parser lowercaseCharacterPrimitive() => pattern('0-9a-z_-');
  Parser tagsCharacterPrimitive() => pattern('0-9a-zA-Z-_');
}

Parser<String> whitespacenlb([String message = 'whitespace expected']) {
  return SingleCharacterParser(
      const WhitespaceCharPredicateNonLinebreak(), message);
}

class WhitespaceCharPredicateNonLinebreak extends WhitespaceCharPredicate {
  const WhitespaceCharPredicateNonLinebreak();

  @override
  bool test(int value) => value == 10 ? false : super.test(value);
}
