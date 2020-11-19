// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BalanceActionTearOff {
  const _$BalanceActionTearOff();

// ignore: unused_element
  _BalanceAction call(
      {@required DateTime date,
      @required Account account,
      @required Money unit,
      Map<String, MetaValue> metadata = const {}}) {
    return _BalanceAction(
      date: date,
      account: account,
      unit: unit,
      metadata: metadata,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BalanceAction = _$BalanceActionTearOff();

/// @nodoc
mixin _$BalanceAction {
  DateTime get date;
  Account get account;
  Money get unit;
  Map<String, MetaValue> get metadata;

  $BalanceActionCopyWith<BalanceAction> get copyWith;
}

/// @nodoc
abstract class $BalanceActionCopyWith<$Res> {
  factory $BalanceActionCopyWith(
          BalanceAction value, $Res Function(BalanceAction) then) =
      _$BalanceActionCopyWithImpl<$Res>;
  $Res call(
      {DateTime date,
      Account account,
      Money unit,
      Map<String, MetaValue> metadata});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$BalanceActionCopyWithImpl<$Res>
    implements $BalanceActionCopyWith<$Res> {
  _$BalanceActionCopyWithImpl(this._value, this._then);

  final BalanceAction _value;
  // ignore: unused_field
  final $Res Function(BalanceAction) _then;

  @override
  $Res call({
    Object date = freezed,
    Object account = freezed,
    Object unit = freezed,
    Object metadata = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as DateTime,
      account: account == freezed ? _value.account : account as Account,
      unit: unit == freezed ? _value.unit : unit as Money,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
    ));
  }

  @override
  $AccountCopyWith<$Res> get account {
    if (_value.account == null) {
      return null;
    }
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc
abstract class _$BalanceActionCopyWith<$Res>
    implements $BalanceActionCopyWith<$Res> {
  factory _$BalanceActionCopyWith(
          _BalanceAction value, $Res Function(_BalanceAction) then) =
      __$BalanceActionCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime date,
      Account account,
      Money unit,
      Map<String, MetaValue> metadata});

  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$BalanceActionCopyWithImpl<$Res>
    extends _$BalanceActionCopyWithImpl<$Res>
    implements _$BalanceActionCopyWith<$Res> {
  __$BalanceActionCopyWithImpl(
      _BalanceAction _value, $Res Function(_BalanceAction) _then)
      : super(_value, (v) => _then(v as _BalanceAction));

  @override
  _BalanceAction get _value => super._value as _BalanceAction;

  @override
  $Res call({
    Object date = freezed,
    Object account = freezed,
    Object unit = freezed,
    Object metadata = freezed,
  }) {
    return _then(_BalanceAction(
      date: date == freezed ? _value.date : date as DateTime,
      account: account == freezed ? _value.account : account as Account,
      unit: unit == freezed ? _value.unit : unit as Money,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc
class _$_BalanceAction implements _BalanceAction {
  _$_BalanceAction(
      {@required this.date,
      @required this.account,
      @required this.unit,
      this.metadata = const {}})
      : assert(date != null),
        assert(account != null),
        assert(unit != null),
        assert(metadata != null);

  @override
  final DateTime date;
  @override
  final Account account;
  @override
  final Money unit;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, MetaValue> metadata;

  @override
  String toString() {
    return 'BalanceAction(date: $date, account: $account, unit: $unit, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BalanceAction &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(unit) ^
      const DeepCollectionEquality().hash(metadata);

  @override
  _$BalanceActionCopyWith<_BalanceAction> get copyWith =>
      __$BalanceActionCopyWithImpl<_BalanceAction>(this, _$identity);
}

abstract class _BalanceAction implements BalanceAction {
  factory _BalanceAction(
      {@required DateTime date,
      @required Account account,
      @required Money unit,
      Map<String, MetaValue> metadata}) = _$_BalanceAction;

  @override
  DateTime get date;
  @override
  Account get account;
  @override
  Money get unit;
  @override
  Map<String, MetaValue> get metadata;
  @override
  _$BalanceActionCopyWith<_BalanceAction> get copyWith;
}

/// @nodoc
class _$AccountActionTearOff {
  const _$AccountActionTearOff();

// ignore: unused_element
  _AccountAction call(
      {@required DateTime date,
      @required Account account,
      List<String> currencies = const [],
      String comment = ''}) {
    return _AccountAction(
      date: date,
      account: account,
      currencies: currencies,
      comment: comment,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AccountAction = _$AccountActionTearOff();

/// @nodoc
mixin _$AccountAction {
  DateTime get date;
  Account get account;
  List<String> get currencies;
  String get comment;

  $AccountActionCopyWith<AccountAction> get copyWith;
}

/// @nodoc
abstract class $AccountActionCopyWith<$Res> {
  factory $AccountActionCopyWith(
          AccountAction value, $Res Function(AccountAction) then) =
      _$AccountActionCopyWithImpl<$Res>;
  $Res call(
      {DateTime date,
      Account account,
      List<String> currencies,
      String comment});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$AccountActionCopyWithImpl<$Res>
    implements $AccountActionCopyWith<$Res> {
  _$AccountActionCopyWithImpl(this._value, this._then);

  final AccountAction _value;
  // ignore: unused_field
  final $Res Function(AccountAction) _then;

  @override
  $Res call({
    Object date = freezed,
    Object account = freezed,
    Object currencies = freezed,
    Object comment = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as DateTime,
      account: account == freezed ? _value.account : account as Account,
      currencies: currencies == freezed
          ? _value.currencies
          : currencies as List<String>,
      comment: comment == freezed ? _value.comment : comment as String,
    ));
  }

  @override
  $AccountCopyWith<$Res> get account {
    if (_value.account == null) {
      return null;
    }
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc
abstract class _$AccountActionCopyWith<$Res>
    implements $AccountActionCopyWith<$Res> {
  factory _$AccountActionCopyWith(
          _AccountAction value, $Res Function(_AccountAction) then) =
      __$AccountActionCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime date,
      Account account,
      List<String> currencies,
      String comment});

  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$AccountActionCopyWithImpl<$Res>
    extends _$AccountActionCopyWithImpl<$Res>
    implements _$AccountActionCopyWith<$Res> {
  __$AccountActionCopyWithImpl(
      _AccountAction _value, $Res Function(_AccountAction) _then)
      : super(_value, (v) => _then(v as _AccountAction));

  @override
  _AccountAction get _value => super._value as _AccountAction;

  @override
  $Res call({
    Object date = freezed,
    Object account = freezed,
    Object currencies = freezed,
    Object comment = freezed,
  }) {
    return _then(_AccountAction(
      date: date == freezed ? _value.date : date as DateTime,
      account: account == freezed ? _value.account : account as Account,
      currencies: currencies == freezed
          ? _value.currencies
          : currencies as List<String>,
      comment: comment == freezed ? _value.comment : comment as String,
    ));
  }
}

/// @nodoc
class _$_AccountAction implements _AccountAction {
  _$_AccountAction(
      {@required this.date,
      @required this.account,
      this.currencies = const [],
      this.comment = ''})
      : assert(date != null),
        assert(account != null),
        assert(currencies != null),
        assert(comment != null);

  @override
  final DateTime date;
  @override
  final Account account;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> currencies;
  @JsonKey(defaultValue: '')
  @override
  final String comment;

  @override
  String toString() {
    return 'AccountAction(date: $date, account: $account, currencies: $currencies, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AccountAction &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.currencies, currencies) ||
                const DeepCollectionEquality()
                    .equals(other.currencies, currencies)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(other.comment, comment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(currencies) ^
      const DeepCollectionEquality().hash(comment);

  @override
  _$AccountActionCopyWith<_AccountAction> get copyWith =>
      __$AccountActionCopyWithImpl<_AccountAction>(this, _$identity);
}

abstract class _AccountAction implements AccountAction {
  factory _AccountAction(
      {@required DateTime date,
      @required Account account,
      List<String> currencies,
      String comment}) = _$_AccountAction;

  @override
  DateTime get date;
  @override
  Account get account;
  @override
  List<String> get currencies;
  @override
  String get comment;
  @override
  _$AccountActionCopyWith<_AccountAction> get copyWith;
}

/// @nodoc
class _$PadActionTearOff {
  const _$PadActionTearOff();

// ignore: unused_element
  _PadAction call(
      {@required DateTime date,
      @required Account account,
      @required Account padAccount,
      String comment = ''}) {
    return _PadAction(
      date: date,
      account: account,
      padAccount: padAccount,
      comment: comment,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PadAction = _$PadActionTearOff();

/// @nodoc
mixin _$PadAction {
  DateTime get date;
  Account get account;
  Account get padAccount;
  String get comment;

  $PadActionCopyWith<PadAction> get copyWith;
}

/// @nodoc
abstract class $PadActionCopyWith<$Res> {
  factory $PadActionCopyWith(PadAction value, $Res Function(PadAction) then) =
      _$PadActionCopyWithImpl<$Res>;
  $Res call(
      {DateTime date, Account account, Account padAccount, String comment});

  $AccountCopyWith<$Res> get account;
  $AccountCopyWith<$Res> get padAccount;
}

/// @nodoc
class _$PadActionCopyWithImpl<$Res> implements $PadActionCopyWith<$Res> {
  _$PadActionCopyWithImpl(this._value, this._then);

  final PadAction _value;
  // ignore: unused_field
  final $Res Function(PadAction) _then;

  @override
  $Res call({
    Object date = freezed,
    Object account = freezed,
    Object padAccount = freezed,
    Object comment = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as DateTime,
      account: account == freezed ? _value.account : account as Account,
      padAccount:
          padAccount == freezed ? _value.padAccount : padAccount as Account,
      comment: comment == freezed ? _value.comment : comment as String,
    ));
  }

  @override
  $AccountCopyWith<$Res> get account {
    if (_value.account == null) {
      return null;
    }
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }

  @override
  $AccountCopyWith<$Res> get padAccount {
    if (_value.padAccount == null) {
      return null;
    }
    return $AccountCopyWith<$Res>(_value.padAccount, (value) {
      return _then(_value.copyWith(padAccount: value));
    });
  }
}

/// @nodoc
abstract class _$PadActionCopyWith<$Res> implements $PadActionCopyWith<$Res> {
  factory _$PadActionCopyWith(
          _PadAction value, $Res Function(_PadAction) then) =
      __$PadActionCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime date, Account account, Account padAccount, String comment});

  @override
  $AccountCopyWith<$Res> get account;
  @override
  $AccountCopyWith<$Res> get padAccount;
}

/// @nodoc
class __$PadActionCopyWithImpl<$Res> extends _$PadActionCopyWithImpl<$Res>
    implements _$PadActionCopyWith<$Res> {
  __$PadActionCopyWithImpl(_PadAction _value, $Res Function(_PadAction) _then)
      : super(_value, (v) => _then(v as _PadAction));

  @override
  _PadAction get _value => super._value as _PadAction;

  @override
  $Res call({
    Object date = freezed,
    Object account = freezed,
    Object padAccount = freezed,
    Object comment = freezed,
  }) {
    return _then(_PadAction(
      date: date == freezed ? _value.date : date as DateTime,
      account: account == freezed ? _value.account : account as Account,
      padAccount:
          padAccount == freezed ? _value.padAccount : padAccount as Account,
      comment: comment == freezed ? _value.comment : comment as String,
    ));
  }
}

/// @nodoc
class _$_PadAction implements _PadAction {
  _$_PadAction(
      {@required this.date,
      @required this.account,
      @required this.padAccount,
      this.comment = ''})
      : assert(date != null),
        assert(account != null),
        assert(padAccount != null),
        assert(comment != null);

  @override
  final DateTime date;
  @override
  final Account account;
  @override
  final Account padAccount;
  @JsonKey(defaultValue: '')
  @override
  final String comment;

  @override
  String toString() {
    return 'PadAction(date: $date, account: $account, padAccount: $padAccount, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PadAction &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.padAccount, padAccount) ||
                const DeepCollectionEquality()
                    .equals(other.padAccount, padAccount)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(other.comment, comment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(padAccount) ^
      const DeepCollectionEquality().hash(comment);

  @override
  _$PadActionCopyWith<_PadAction> get copyWith =>
      __$PadActionCopyWithImpl<_PadAction>(this, _$identity);
}

abstract class _PadAction implements PadAction {
  factory _PadAction(
      {@required DateTime date,
      @required Account account,
      @required Account padAccount,
      String comment}) = _$_PadAction;

  @override
  DateTime get date;
  @override
  Account get account;
  @override
  Account get padAccount;
  @override
  String get comment;
  @override
  _$PadActionCopyWith<_PadAction> get copyWith;
}

/// @nodoc
class _$NoteActionTearOff {
  const _$NoteActionTearOff();

// ignore: unused_element
  _NoteAction call(
      {@required DateTime date,
      @required Account account,
      @required String note,
      String comment = ''}) {
    return _NoteAction(
      date: date,
      account: account,
      note: note,
      comment: comment,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NoteAction = _$NoteActionTearOff();

/// @nodoc
mixin _$NoteAction {
  DateTime get date;
  Account get account;
  String get note;
  String get comment;

  $NoteActionCopyWith<NoteAction> get copyWith;
}

/// @nodoc
abstract class $NoteActionCopyWith<$Res> {
  factory $NoteActionCopyWith(
          NoteAction value, $Res Function(NoteAction) then) =
      _$NoteActionCopyWithImpl<$Res>;
  $Res call({DateTime date, Account account, String note, String comment});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$NoteActionCopyWithImpl<$Res> implements $NoteActionCopyWith<$Res> {
  _$NoteActionCopyWithImpl(this._value, this._then);

  final NoteAction _value;
  // ignore: unused_field
  final $Res Function(NoteAction) _then;

  @override
  $Res call({
    Object date = freezed,
    Object account = freezed,
    Object note = freezed,
    Object comment = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as DateTime,
      account: account == freezed ? _value.account : account as Account,
      note: note == freezed ? _value.note : note as String,
      comment: comment == freezed ? _value.comment : comment as String,
    ));
  }

  @override
  $AccountCopyWith<$Res> get account {
    if (_value.account == null) {
      return null;
    }
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc
abstract class _$NoteActionCopyWith<$Res> implements $NoteActionCopyWith<$Res> {
  factory _$NoteActionCopyWith(
          _NoteAction value, $Res Function(_NoteAction) then) =
      __$NoteActionCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, Account account, String note, String comment});

  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$NoteActionCopyWithImpl<$Res> extends _$NoteActionCopyWithImpl<$Res>
    implements _$NoteActionCopyWith<$Res> {
  __$NoteActionCopyWithImpl(
      _NoteAction _value, $Res Function(_NoteAction) _then)
      : super(_value, (v) => _then(v as _NoteAction));

  @override
  _NoteAction get _value => super._value as _NoteAction;

  @override
  $Res call({
    Object date = freezed,
    Object account = freezed,
    Object note = freezed,
    Object comment = freezed,
  }) {
    return _then(_NoteAction(
      date: date == freezed ? _value.date : date as DateTime,
      account: account == freezed ? _value.account : account as Account,
      note: note == freezed ? _value.note : note as String,
      comment: comment == freezed ? _value.comment : comment as String,
    ));
  }
}

/// @nodoc
class _$_NoteAction implements _NoteAction {
  _$_NoteAction(
      {@required this.date,
      @required this.account,
      @required this.note,
      this.comment = ''})
      : assert(date != null),
        assert(account != null),
        assert(note != null),
        assert(comment != null);

  @override
  final DateTime date;
  @override
  final Account account;
  @override
  final String note;
  @JsonKey(defaultValue: '')
  @override
  final String comment;

  @override
  String toString() {
    return 'NoteAction(date: $date, account: $account, note: $note, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoteAction &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(other.comment, comment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(comment);

  @override
  _$NoteActionCopyWith<_NoteAction> get copyWith =>
      __$NoteActionCopyWithImpl<_NoteAction>(this, _$identity);
}

abstract class _NoteAction implements NoteAction {
  factory _NoteAction(
      {@required DateTime date,
      @required Account account,
      @required String note,
      String comment}) = _$_NoteAction;

  @override
  DateTime get date;
  @override
  Account get account;
  @override
  String get note;
  @override
  String get comment;
  @override
  _$NoteActionCopyWith<_NoteAction> get copyWith;
}

/// @nodoc
class _$CustomActionTearOff {
  const _$CustomActionTearOff();

// ignore: unused_element
  _CustomAction call(
      {@required DateTime date,
      @required String type,
      List<String> values = const [],
      String comment = ''}) {
    return _CustomAction(
      date: date,
      type: type,
      values: values,
      comment: comment,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CustomAction = _$CustomActionTearOff();

/// @nodoc
mixin _$CustomAction {
  DateTime get date;
  String get type;
  List<String> get values;
  String get comment;

  $CustomActionCopyWith<CustomAction> get copyWith;
}

/// @nodoc
abstract class $CustomActionCopyWith<$Res> {
  factory $CustomActionCopyWith(
          CustomAction value, $Res Function(CustomAction) then) =
      _$CustomActionCopyWithImpl<$Res>;
  $Res call({DateTime date, String type, List<String> values, String comment});
}

/// @nodoc
class _$CustomActionCopyWithImpl<$Res> implements $CustomActionCopyWith<$Res> {
  _$CustomActionCopyWithImpl(this._value, this._then);

  final CustomAction _value;
  // ignore: unused_field
  final $Res Function(CustomAction) _then;

  @override
  $Res call({
    Object date = freezed,
    Object type = freezed,
    Object values = freezed,
    Object comment = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as DateTime,
      type: type == freezed ? _value.type : type as String,
      values: values == freezed ? _value.values : values as List<String>,
      comment: comment == freezed ? _value.comment : comment as String,
    ));
  }
}

/// @nodoc
abstract class _$CustomActionCopyWith<$Res>
    implements $CustomActionCopyWith<$Res> {
  factory _$CustomActionCopyWith(
          _CustomAction value, $Res Function(_CustomAction) then) =
      __$CustomActionCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, String type, List<String> values, String comment});
}

/// @nodoc
class __$CustomActionCopyWithImpl<$Res> extends _$CustomActionCopyWithImpl<$Res>
    implements _$CustomActionCopyWith<$Res> {
  __$CustomActionCopyWithImpl(
      _CustomAction _value, $Res Function(_CustomAction) _then)
      : super(_value, (v) => _then(v as _CustomAction));

  @override
  _CustomAction get _value => super._value as _CustomAction;

  @override
  $Res call({
    Object date = freezed,
    Object type = freezed,
    Object values = freezed,
    Object comment = freezed,
  }) {
    return _then(_CustomAction(
      date: date == freezed ? _value.date : date as DateTime,
      type: type == freezed ? _value.type : type as String,
      values: values == freezed ? _value.values : values as List<String>,
      comment: comment == freezed ? _value.comment : comment as String,
    ));
  }
}

/// @nodoc
class _$_CustomAction implements _CustomAction {
  _$_CustomAction(
      {@required this.date,
      @required this.type,
      this.values = const [],
      this.comment = ''})
      : assert(date != null),
        assert(type != null),
        assert(values != null),
        assert(comment != null);

  @override
  final DateTime date;
  @override
  final String type;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> values;
  @JsonKey(defaultValue: '')
  @override
  final String comment;

  @override
  String toString() {
    return 'CustomAction(date: $date, type: $type, values: $values, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CustomAction &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(other.comment, comment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(values) ^
      const DeepCollectionEquality().hash(comment);

  @override
  _$CustomActionCopyWith<_CustomAction> get copyWith =>
      __$CustomActionCopyWithImpl<_CustomAction>(this, _$identity);
}

abstract class _CustomAction implements CustomAction {
  factory _CustomAction(
      {@required DateTime date,
      @required String type,
      List<String> values,
      String comment}) = _$_CustomAction;

  @override
  DateTime get date;
  @override
  String get type;
  @override
  List<String> get values;
  @override
  String get comment;
  @override
  _$CustomActionCopyWith<_CustomAction> get copyWith;
}
