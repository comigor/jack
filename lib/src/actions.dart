import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:money2/money2.dart';

import 'model.dart';

part 'actions.freezed.dart';

@freezed
abstract class BalanceAction with _$BalanceAction {
  factory BalanceAction({
    @required DateTime date,
    @required Account account,
    @required Money unit,
    @Default({}) Map<String, MetaValue> metadata,
  }) = _BalanceAction;
}

extension BalanceActionPrint on BalanceAction {
  String print() {
    final buffer = StringBuffer()
      ..write('${formatter.format(date)} balance ${account.stringify} $unit');

    for (final meta in metadata.entries) {
      buffer.write('\n  ${meta.key}: ${meta.value.value}');
    }

    return buffer.toString();
  }
}

@freezed
abstract class AccountAction with _$AccountAction {
  factory AccountAction({
    @required DateTime date,
    @required Account account,
    @Default([]) List<String> currencies,
    @Default('') String comment,
  }) = _AccountAction;
}

extension AccountActionPrint on AccountAction {
  String print() {
    final buffer = StringBuffer()
      ..write('${formatter.format(date)} account ${account.stringify}');

    if (currencies.isNotEmpty) {
      buffer.write(' ${currencies.join(',')}');
    }

    if (comment.isNotEmpty) {
      buffer.write(' $comment');
    }

    return buffer.toString();
  }
}

@freezed
abstract class PadAction with _$PadAction {
  factory PadAction({
    @required DateTime date,
    @required Account account,
    @required Account padAccount,
    @Default('') String comment,
  }) = _PadAction;
}

extension PadActionPrint on PadAction {
  String print() {
    final buffer = StringBuffer()
      ..write(
          '${formatter.format(date)} pad ${account.stringify} ${padAccount.stringify}');

    if (comment.isNotEmpty) {
      buffer.write(' $comment');
    }

    return buffer.toString();
  }
}

@freezed
abstract class NoteAction with _$NoteAction {
  factory NoteAction({
    @required DateTime date,
    @required Account account,
    @required String note,
    @Default('') String comment,
  }) = _NoteAction;
}

extension NoteActionPrint on NoteAction {
  String print() {
    final buffer = StringBuffer()
      ..write('${formatter.format(date)} note $note');

    if (comment.isNotEmpty) {
      buffer.write(' $comment');
    }

    return buffer.toString();
  }
}

@freezed
abstract class CustomAction with _$CustomAction {
  factory CustomAction({
    @required DateTime date,
    @required String type,
    @Default([]) List<String> values,
    @Default('') String comment,
  }) = _CustomAction;
}

extension CustomActionPrint on CustomAction {
  String print() {
    final buffer = StringBuffer()
      ..write(
          '${formatter.format(date)} custom "$type" "${values.join('" "')}"');

    if (comment.isNotEmpty) {
      buffer.write(' $comment');
    }

    return buffer.toString();
  }
}

// @freezed
// abstract class BudgetAction extends CustomAction with _$BudgetAction {
//   factory BudgetAction({
//     @required DateTime date,
//     @required String type,
//     @Default([]) List<String> values,
//     @Default('') String comment,
//   }) = _BudgetAction;

//   @late
//   Account get account => values.elementAt(0) as Account;
//   @late
//   String get periodicity => values.elementAt(1).toString().replaceAll('"', '');
//   @late
//   Money get unit => null;
// }

// extension BudgetActionPrint on BudgetAction {
//   String print() {
//     final buffer = StringBuffer()
//       ..write(
//           '${formatter.format(date)} custom "budget" $account "$periodicity" $unit');

//     if (comment.isNotEmpty) {
//       buffer.write(' $comment');
//     }

//     return buffer.toString();
//   }
// }
