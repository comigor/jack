import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:money2/money2.dart';

part 'model.freezed.dart';

@freezed
abstract class MetaValue with _$MetaValue {
  factory MetaValue({
    @required String value,
    String comment,
  }) = _MetaValue;
}

@freezed
abstract class Account with _$Account {
  factory Account({@required String name}) = _Account;
}

extension AccountPrint on Account {
  String print() => name;
}

@freezed
abstract class CommodityDirective with _$CommodityDirective {
  factory CommodityDirective({
    @required DateTime date,
    @required String code,
    @Default({}) Map<String, MetaValue> metadata,
    @Default(2) int precision_,
  }) = _CommodityDirective;

  @late
  int get precision => metadata.containsKey('precision')
      ? int.tryParse(metadata['precision'].value)
      : precision_;
}

extension CommodityDirectiveExt on CommodityDirective {
  Currency toCurrency() =>
      Currency.create(code, precision, pattern: '0.${'0' * precision} CCC');
}

final formatter = DateFormat('yyyy-MM-dd');

@freezed
abstract class Transaction with _$Transaction {
  factory Transaction({
    @required DateTime date,
    @Default('*') String flag,
    String payee,
    String narration,
    @Default([]) List<String> tags,
    @Default([]) List<String> links,
    @Default({}) Map<String, MetaValue> metadata,
    @Default([]) List<Posting> postings,
    String comment,
  }) = _Transaction;
}

extension TransactionPrint on Transaction {
  String print() {
    var buffer = StringBuffer()..write(headerToString());

    for (final meta in metadata.entries) {
      buffer.write('\n  ${meta.key}: ${meta.value}');
    }

    for (final posting in postings) {
      buffer.write('\n  ${posting.print().replaceAll('\n', '\n  ')}');
    }

    return buffer.toString();
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

    for (final tag in tags.where((t) => t != null)) {
      buffer.write(' #$tag');
    }
    for (final link in links.where((l) => l != null)) {
      buffer.write(' ^$link');
    }

    if (comment.isNotEmpty) {
      buffer.write(' $comment');
    }

    return buffer.toString();
  }
}

@freezed
abstract class Posting with _$Posting {
  factory Posting({
    String flag,
    @required Account account,
    Position position,
    @Default({}) Map<String, MetaValue> metadata,
    String comment,
  }) = _Posting;
}

extension PostingPrint on Posting {
  String print() {
    final buffer = StringBuffer();

    if (flag == '!') buffer.write('! ');

    buffer.write(account.print());

    if (position != null) {
      buffer.write(' ${position.print()}');
    }

    if (comment != null && comment.isNotEmpty) {
      buffer.write(' $comment');
    }

    for (final meta in metadata.entries) {
      buffer.write('\n  ${meta.key}: "${meta.value.value}"');
      if (meta.value.comment != null && meta.value.comment.isNotEmpty) {
        buffer.write(' ${meta.value.comment}');
      }
    }

    return buffer.toString();
  }
}

@freezed
abstract class Position with _$Position {
  factory Position({
    @required Money unit, // amount + currency
    Cost cost, // {} or {{}}
    Money price, // @@ -> used only to balance when no cost is defined
    Money perUnitPrice, // @
  }) = _Position;
}

extension PositionPrint on Position {
  String print() {
    final buffer = StringBuffer()..write(unit);

    if (cost != null) {
      buffer.write(' ${cost.print()}');
    }

    if ((price ?? perUnitPrice) != null) {
      final isAbsolutePrice = price != null;
      buffer.write(' ${isAbsolutePrice ? '@@' : '@'} ${price ?? perUnitPrice}');
    }

    return buffer.toString();
  }
}

@freezed
abstract class Cost with _$Cost {
  factory Cost({
    Money value, // amount + currency
    Money perUnitValue,
    DateTime date,
    String label,
  }) = _Cost;
}

extension CostPrint on Cost {
  String print() {
    final isAbsoluteValue = value != null;
    final lotData = [
      if ((value ?? perUnitValue) != null) value ?? perUnitValue,
      if (date != null) formatter.format(date),
      if (label != null) '"$label"'
    ];

    final buffer = StringBuffer()
      ..write(isAbsoluteValue ? '{{' : '{')
      ..write(lotData.join(', '))
      ..write(isAbsoluteValue ? '}}' : '}');
    return buffer.toString();
  }
}
