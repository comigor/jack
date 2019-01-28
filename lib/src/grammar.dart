import 'package:petitparser/petitparser.dart';

class BeancountGrammar extends GrammarParser {
  BeancountGrammar() : super(const BeancountGrammarDefinition());
}

class BeancountGrammarDefinition extends GrammarDefinition {
  const BeancountGrammarDefinition();

  Parser start() => ref(value).end();
  Parser token(Parser parser) => parser.flatten().trim(anyOf(' \t\r'));

  Parser value() => ref((transaction() |
          balance() |
          accountAction() |
          option() |
          fullLineComment())
      .star);

  Parser numberToken() => ref(
      token,
      char('-').optional() &
          char('0').or(digit().plus()) &
          char('.').seq(digit().plus()).optional());
  Parser stringToken() =>
      ref(token, char('"') & pattern('^"').star() & char('"'));
  Parser flagToken() => ref(token, char('*') | char('!') | string('txn'));
  Parser dateToken() => ref(
      token,
      digit().times(4) &
          char('-') &
          digit().times(2) &
          char('-') &
          digit().times(2));
  Parser accountToken() => ref(
      token,
      accountPreffixPrimitive() &
          (char(':') & tagsCharacterPrimitive().plus()).star());
  Parser currencyToken() => ref(token, uppercaseCharacterPrimitive().plus());
  Parser tagToken() => ref(token, char('#') & tagsCharacterPrimitive().plus());
  Parser linkToken() => ref(token, char('^') & tagsCharacterPrimitive().plus());
  Parser singleMetadataToken() =>
      ref(token, lowercaseCharacterPrimitive().plus()) &
      ref(token, char(':')) &
      stringToken() &
      comment();
  Parser metadataToken() => singleMetadataToken().star();
  Parser costToken() => numberToken() & currencyToken();

  Parser tags() => tagToken().star();
  Parser links() => linkToken().star();
  Parser singlePosting() =>
      flagToken().optional() &
      accountToken() &
      costToken().optional() &
      comment() &
      metadataToken();
  Parser postings() => singlePosting().star();
  Parser currencies() => currencyToken().separatedBy(char(',')).optional();
  Parser transaction() =>
      dateToken() &
      flagToken() &
      (stringToken() & stringToken().optional()).optional() &
      tags() &
      links() &
      comment() &
      metadataToken() &
      postings();
  Parser balance() =>
      dateToken() &
      string('balance') &
      accountToken() &
      costToken() &
      comment() &
      metadataToken();
  Parser accountAction() =>
      dateToken() &
      accountActionPrimitive() &
      accountToken() &
      currencies() &
      comment();
  Parser option() =>
      string('option') & stringToken() & stringToken() & comment();
  Parser fullLineComment() =>
      ref(token, char(';') & noneOf('\n').star() & whitespace().star());
  Parser comment() => ref(token, fullLineComment() | whitespace().star());

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
