import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

import 'model.dart';

part 'actions.freezed.dart';

@freezed
abstract class AccountAction with _$AccountAction {
  AccountAction._();

  factory AccountAction.open({
    required DateTime date,
    required String type,
    required Account account,
    @Default([]) List<String> currencies,
     String? bookingMethod,
     String? comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = AccountOpenAction;

  factory AccountAction.close({
    required DateTime date,
    required String type,
    required Account account,
    @Default([]) List<String> currencies,
     String? bookingMethod,
     String? comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = AccountCloseAction;

  String get stringify => (() {
        final buffer = StringBuffer()
          ..write('${formatter.format(date)} $type ${account.stringify}');

        if (currencies.isNotEmpty) {
          buffer.write(' ${currencies.join(',')}');
        }

        if (bookingMethod != null) {
          buffer.write(' "$bookingMethod"');
        }

        if (comment != null && comment!.isNotEmpty) {
          buffer.write(' ; $comment');
        }

        for (final meta in metadata.entries) {
          buffer.write('\n  ${meta.key}: ${meta.value.stringify}');
        }

        return buffer.toString();
      })();
}

@freezed
abstract class CommodityAction with _$CommodityAction {
  CommodityAction._();

  factory CommodityAction({
    required DateTime date,
    required String code,
     String? comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = _CommodityAction;

  String get stringify => (() {
        final buffer = StringBuffer()
          ..write('${formatter.format(date)} commodity $code');

        if (comment != null && comment!.isNotEmpty) {
          buffer.write(' ; $comment');
        }

        for (final meta in metadata.entries) {
          buffer.write('\n  ${meta.key}: ${meta.value.stringify}');
        }

        return buffer.toString();
      })();

  int get precision => metadata.containsKey('precision')
      ? int.parse(metadata['precision']!.value)
      : 2;

  Currency get currency => Currency.create(code, precision,
      pattern: '0${precision > 0 ? '.' : ''}${'0' * precision} CCC');
}

@freezed
abstract class BalanceAction with _$BalanceAction {
  BalanceAction._();

  factory BalanceAction({
    required DateTime date,
    required Account account,
    required Money unit,
     String? comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = _BalanceAction;

  String get stringify => (() {
        final buffer = StringBuffer()
          ..write(
              '${formatter.format(date)} balance ${account.stringify} $unit');

        if (comment != null && comment!.isNotEmpty) {
          buffer.write(' ; $comment');
        }

        for (final meta in metadata.entries) {
          buffer.write('\n  ${meta.key}: ${meta.value.stringify}');
        }

        return buffer.toString();
      })();
}

@freezed
abstract class PadAction with _$PadAction {
  PadAction._();

  factory PadAction({
    required DateTime date,
    required Account account,
    required Account padAccount,
     String? comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = _PadAction;

  String get stringify => (() {
        final buffer = StringBuffer()
          ..write(
              '${formatter.format(date)} pad ${account.stringify} ${padAccount.stringify}');

        if (comment != null && comment!.isNotEmpty) {
          buffer.write(' ; $comment');
        }

        for (final meta in metadata.entries) {
          buffer.write('\n  ${meta.key}: ${meta.value.stringify}');
        }

        return buffer.toString();
      })();
}

@freezed
abstract class NoteAction with _$NoteAction {
  NoteAction._();

  factory NoteAction({
    required DateTime date,
    required Account account,
    required String note,
     String? comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = _NoteAction;

  String get stringify => (() {
        final buffer = StringBuffer()
          ..write(
              '${formatter.format(date)} note ${account.stringify} "$note"');

        if (comment != null && comment!.isNotEmpty) {
          buffer.write(' ; $comment');
        }

        for (final meta in metadata.entries) {
          buffer.write('\n  ${meta.key}: ${meta.value.stringify}');
        }

        return buffer.toString();
      })();
}

@freezed
abstract class DocumentAction with _$DocumentAction {
  DocumentAction._();

  factory DocumentAction({
    required DateTime date,
    required Account account,
    required String path,
     String? comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = _DocumentAction;

  String get stringify => (() {
        final buffer = StringBuffer()
          ..write(
              '${formatter.format(date)} document ${account.stringify} "$path"');

        if (comment != null && comment!.isNotEmpty) {
          buffer.write(' ; $comment');
        }

        for (final meta in metadata.entries) {
          buffer.write('\n  ${meta.key}: ${meta.value.stringify}');
        }

        return buffer.toString();
      })();
}

@freezed
abstract class PriceAction with _$PriceAction {
  PriceAction._();

  factory PriceAction({
    required DateTime date,
    required String currency,
    required Money amount,
     String? comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = _PriceAction;

  String get stringify => (() {
        final buffer = StringBuffer()
          ..write('${formatter.format(date)} price $currency $amount');

        if (comment != null && comment!.isNotEmpty) {
          buffer.write(' ; $comment');
        }

        for (final meta in metadata.entries) {
          buffer.write('\n  ${meta.key}: ${meta.value.stringify}');
        }

        return buffer.toString();
      })();
}

@freezed
abstract class EventAction with _$EventAction {
  EventAction._();

  factory EventAction({
    required DateTime date,
    required String name,
    required String value,
     String? comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = _EventAction;

  String get stringify => (() {
        final buffer = StringBuffer()
          ..write('${formatter.format(date)} event "$name" "$value"');

        if (comment != null && comment!.isNotEmpty) {
          buffer.write(' ; $comment');
        }

        for (final meta in metadata.entries) {
          buffer.write('\n  ${meta.key}: ${meta.value.stringify}');
        }

        return buffer.toString();
      })();
}

@freezed
abstract class QueryAction with _$QueryAction {
  QueryAction._();

  factory QueryAction({
    required DateTime date,
    required String name,
    required String query,
     String? comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = _QueryAction;

  String get stringify => (() {
        final buffer = StringBuffer()
          ..write('${formatter.format(date)} query "$name" "$query"');

        if (comment != null && comment!.isNotEmpty) {
          buffer.write(' ; $comment');
        }

        for (final meta in metadata.entries) {
          buffer.write('\n  ${meta.key}: ${meta.value.stringify}');
        }

        return buffer.toString();
      })();
}

@freezed
abstract class CustomAction with _$CustomAction {
  CustomAction._();

  factory CustomAction.custom({
    required DateTime date,
    required String type,
    @Default([]) List<dynamic> values,
     String? comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = CustomCustomAction;

  factory CustomAction.budget({
    required DateTime date,
    @Default('budget') String type,
    @Default([]) List<dynamic> values,
     String? comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = BudgetAction;

  String get stringify => (() {
        final buffer = StringBuffer()
          ..write('${formatter.format(date)} custom "$type"');

        for (final item in values) {
          if (item is Account) {
            buffer.write(' ${item.stringify}');
          } else if (item is DateTime) {
            buffer.write(' ${formatter.format(date)}');
          } else if (item is String) {
            buffer.write(' "$item"');
          } else {
            buffer.write(' $item');
          }
        }

        if (comment != null && comment!.isNotEmpty) {
          buffer.write(' ; $comment');
        }

        for (final meta in metadata.entries) {
          buffer.write('\n  ${meta.key}: ${meta.value.stringify}');
        }

        return buffer.toString();
      })();
}
