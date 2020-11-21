import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:money2/money2.dart';

import 'model.dart';

part 'actions.freezed.dart';

@freezed
abstract class AccountAction with _$AccountAction {
  factory AccountAction.open({
    @required DateTime date,
    @required String type,
    @required Account account,
    @Default([]) List<String> currencies,
    @nullable String bookingMethod,
    @nullable String comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = AccountOpenAction;

  factory AccountAction.close({
    @required DateTime date,
    @required String type,
    @required Account account,
    @Default([]) List<String> currencies,
    @nullable String bookingMethod,
    @nullable String comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = AccountCloseAction;

  @late
  String get stringify => (() {
        final buffer = StringBuffer()
          ..write('${formatter.format(date)} $type ${account.stringify}');

        if (currencies.isNotEmpty) {
          buffer.write(' ${currencies.join(',')}');
        }

        if (bookingMethod != null) {
          buffer.write(' "$bookingMethod"');
        }

        if (comment != null && comment.isNotEmpty) {
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
  factory CommodityAction({
    @required DateTime date,
    @required String currency,
    @nullable String comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = _CommodityAction;

  @late
  String get stringify => (() {
        final buffer = StringBuffer()
          ..write('${formatter.format(date)} commodity $currency');

        if (comment != null && comment.isNotEmpty) {
          buffer.write(' ; $comment');
        }

        for (final meta in metadata.entries) {
          buffer.write('\n  ${meta.key}: ${meta.value.stringify}');
        }

        return buffer.toString();
      })();
}

@freezed
abstract class BalanceAction with _$BalanceAction {
  factory BalanceAction({
    @required DateTime date,
    @required Account account,
    @required Money unit,
    @nullable String comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = _BalanceAction;

  @late
  String get stringify => (() {
        final buffer = StringBuffer()
          ..write(
              '${formatter.format(date)} balance ${account.stringify} $unit');

        if (comment != null && comment.isNotEmpty) {
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
  factory PadAction({
    @required DateTime date,
    @required Account account,
    @required Account padAccount,
    @nullable String comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = _PadAction;

  @late
  String get stringify => (() {
        final buffer = StringBuffer()
          ..write(
              '${formatter.format(date)} pad ${account.stringify} ${padAccount.stringify}');

        if (comment != null && comment.isNotEmpty) {
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
  factory NoteAction({
    @required DateTime date,
    @required Account account,
    @required String note,
    @nullable String comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = _NoteAction;

  @late
  String get stringify => (() {
        final buffer = StringBuffer()
          ..write(
              '${formatter.format(date)} note ${account.stringify} "$note"');

        if (comment != null && comment.isNotEmpty) {
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
  factory DocumentAction({
    @required DateTime date,
    @required Account account,
    @required String path,
    @nullable String comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = _DocumentAction;

  @late
  String get stringify => (() {
        final buffer = StringBuffer()
          ..write(
              '${formatter.format(date)} document ${account.stringify} "$path"');

        if (comment != null && comment.isNotEmpty) {
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
  factory PriceAction({
    @required DateTime date,
    @required String currency,
    @required Money amount,
    @nullable String comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = _PriceAction;

  @late
  String get stringify => (() {
        final buffer = StringBuffer()
          ..write('${formatter.format(date)} price $currency $amount');

        if (comment != null && comment.isNotEmpty) {
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
  factory EventAction({
    @required DateTime date,
    @required String name,
    @required String value,
    @nullable String comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = _EventAction;

  @late
  String get stringify => (() {
        final buffer = StringBuffer()
          ..write('${formatter.format(date)} event "$name" "$value"');

        if (comment != null && comment.isNotEmpty) {
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
  factory QueryAction({
    @required DateTime date,
    @required String name,
    @required String query,
    @nullable String comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = _QueryAction;

  @late
  String get stringify => (() {
        final buffer = StringBuffer()
          ..write('${formatter.format(date)} query "$name" "$query"');

        if (comment != null && comment.isNotEmpty) {
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
  factory CustomAction.custom({
    @required DateTime date,
    @required String type,
    @Default([]) List<dynamic> values,
    @nullable String comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = CustomCustomAction;

  factory CustomAction.budget({
    @required DateTime date,
    @Default('budget') String type,
    @Default([]) List<dynamic> values,
    @nullable String comment,
    @Default({}) Map<String, MetaValue> metadata,
  }) = BudgetAction;

  @late
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

        if (comment != null && comment.isNotEmpty) {
          buffer.write(' ; $comment');
        }

        for (final meta in metadata.entries) {
          buffer.write('\n  ${meta.key}: ${meta.value.stringify}');
        }

        return buffer.toString();
      })();
}
