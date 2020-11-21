// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AccountActionTearOff {
  const _$AccountActionTearOff();

// ignore: unused_element
  AccountOpenAction open(
      {@required DateTime date,
      @required String type,
      @required Account account,
      List<String> currencies = const [],
      @nullable String bookingMethod,
      @nullable String comment,
      Map<String, MetaValue> metadata = const {}}) {
    return AccountOpenAction(
      date: date,
      type: type,
      account: account,
      currencies: currencies,
      bookingMethod: bookingMethod,
      comment: comment,
      metadata: metadata,
    );
  }

// ignore: unused_element
  AccountCloseAction close(
      {@required DateTime date,
      @required String type,
      @required Account account,
      List<String> currencies = const [],
      @nullable String bookingMethod,
      @nullable String comment,
      Map<String, MetaValue> metadata = const {}}) {
    return AccountCloseAction(
      date: date,
      type: type,
      account: account,
      currencies: currencies,
      bookingMethod: bookingMethod,
      comment: comment,
      metadata: metadata,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AccountAction = _$AccountActionTearOff();

/// @nodoc
mixin _$AccountAction {
  DateTime get date;
  String get type;
  Account get account;
  List<String> get currencies;
  @nullable
  String get bookingMethod;
  @nullable
  String get comment;
  Map<String, MetaValue> get metadata;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result open(
            DateTime date,
            String type,
            Account account,
            List<String> currencies,
            @nullable String bookingMethod,
            @nullable String comment,
            Map<String, MetaValue> metadata),
    @required
        Result close(
            DateTime date,
            String type,
            Account account,
            List<String> currencies,
            @nullable String bookingMethod,
            @nullable String comment,
            Map<String, MetaValue> metadata),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result open(
        DateTime date,
        String type,
        Account account,
        List<String> currencies,
        @nullable String bookingMethod,
        @nullable String comment,
        Map<String, MetaValue> metadata),
    Result close(
        DateTime date,
        String type,
        Account account,
        List<String> currencies,
        @nullable String bookingMethod,
        @nullable String comment,
        Map<String, MetaValue> metadata),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result open(AccountOpenAction value),
    @required Result close(AccountCloseAction value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result open(AccountOpenAction value),
    Result close(AccountCloseAction value),
    @required Result orElse(),
  });

  $AccountActionCopyWith<AccountAction> get copyWith;
}

/// @nodoc
abstract class $AccountActionCopyWith<$Res> {
  factory $AccountActionCopyWith(
          AccountAction value, $Res Function(AccountAction) then) =
      _$AccountActionCopyWithImpl<$Res>;
  $Res call(
      {DateTime date,
      String type,
      Account account,
      List<String> currencies,
      @nullable String bookingMethod,
      @nullable String comment,
      Map<String, MetaValue> metadata});

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
    Object type = freezed,
    Object account = freezed,
    Object currencies = freezed,
    Object bookingMethod = freezed,
    Object comment = freezed,
    Object metadata = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as DateTime,
      type: type == freezed ? _value.type : type as String,
      account: account == freezed ? _value.account : account as Account,
      currencies: currencies == freezed
          ? _value.currencies
          : currencies as List<String>,
      bookingMethod: bookingMethod == freezed
          ? _value.bookingMethod
          : bookingMethod as String,
      comment: comment == freezed ? _value.comment : comment as String,
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
abstract class $AccountOpenActionCopyWith<$Res>
    implements $AccountActionCopyWith<$Res> {
  factory $AccountOpenActionCopyWith(
          AccountOpenAction value, $Res Function(AccountOpenAction) then) =
      _$AccountOpenActionCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime date,
      String type,
      Account account,
      List<String> currencies,
      @nullable String bookingMethod,
      @nullable String comment,
      Map<String, MetaValue> metadata});

  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$AccountOpenActionCopyWithImpl<$Res>
    extends _$AccountActionCopyWithImpl<$Res>
    implements $AccountOpenActionCopyWith<$Res> {
  _$AccountOpenActionCopyWithImpl(
      AccountOpenAction _value, $Res Function(AccountOpenAction) _then)
      : super(_value, (v) => _then(v as AccountOpenAction));

  @override
  AccountOpenAction get _value => super._value as AccountOpenAction;

  @override
  $Res call({
    Object date = freezed,
    Object type = freezed,
    Object account = freezed,
    Object currencies = freezed,
    Object bookingMethod = freezed,
    Object comment = freezed,
    Object metadata = freezed,
  }) {
    return _then(AccountOpenAction(
      date: date == freezed ? _value.date : date as DateTime,
      type: type == freezed ? _value.type : type as String,
      account: account == freezed ? _value.account : account as Account,
      currencies: currencies == freezed
          ? _value.currencies
          : currencies as List<String>,
      bookingMethod: bookingMethod == freezed
          ? _value.bookingMethod
          : bookingMethod as String,
      comment: comment == freezed ? _value.comment : comment as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc
class _$AccountOpenAction implements AccountOpenAction {
  _$AccountOpenAction(
      {@required this.date,
      @required this.type,
      @required this.account,
      this.currencies = const [],
      @nullable this.bookingMethod,
      @nullable this.comment,
      this.metadata = const {}})
      : assert(date != null),
        assert(type != null),
        assert(account != null),
        assert(currencies != null),
        assert(metadata != null);

  @override
  final DateTime date;
  @override
  final String type;
  @override
  final Account account;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> currencies;
  @override
  @nullable
  final String bookingMethod;
  @override
  @nullable
  final String comment;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, MetaValue> metadata;

  bool _didstringify = false;
  String _stringify;

  @override
  String get stringify {
    if (_didstringify == false) {
      _didstringify = true;
      _stringify = (() {
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
    return _stringify;
  }

  @override
  String toString() {
    return 'AccountAction.open(date: $date, type: $type, account: $account, currencies: $currencies, bookingMethod: $bookingMethod, comment: $comment, metadata: $metadata, stringify: $stringify)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountOpenAction &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.currencies, currencies) ||
                const DeepCollectionEquality()
                    .equals(other.currencies, currencies)) &&
            (identical(other.bookingMethod, bookingMethod) ||
                const DeepCollectionEquality()
                    .equals(other.bookingMethod, bookingMethod)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(currencies) ^
      const DeepCollectionEquality().hash(bookingMethod) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(metadata);

  @override
  $AccountOpenActionCopyWith<AccountOpenAction> get copyWith =>
      _$AccountOpenActionCopyWithImpl<AccountOpenAction>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result open(
            DateTime date,
            String type,
            Account account,
            List<String> currencies,
            @nullable String bookingMethod,
            @nullable String comment,
            Map<String, MetaValue> metadata),
    @required
        Result close(
            DateTime date,
            String type,
            Account account,
            List<String> currencies,
            @nullable String bookingMethod,
            @nullable String comment,
            Map<String, MetaValue> metadata),
  }) {
    assert(open != null);
    assert(close != null);
    return open(
        date, type, account, currencies, bookingMethod, comment, metadata);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result open(
        DateTime date,
        String type,
        Account account,
        List<String> currencies,
        @nullable String bookingMethod,
        @nullable String comment,
        Map<String, MetaValue> metadata),
    Result close(
        DateTime date,
        String type,
        Account account,
        List<String> currencies,
        @nullable String bookingMethod,
        @nullable String comment,
        Map<String, MetaValue> metadata),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (open != null) {
      return open(
          date, type, account, currencies, bookingMethod, comment, metadata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result open(AccountOpenAction value),
    @required Result close(AccountCloseAction value),
  }) {
    assert(open != null);
    assert(close != null);
    return open(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result open(AccountOpenAction value),
    Result close(AccountCloseAction value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (open != null) {
      return open(this);
    }
    return orElse();
  }
}

abstract class AccountOpenAction implements AccountAction {
  factory AccountOpenAction(
      {@required DateTime date,
      @required String type,
      @required Account account,
      List<String> currencies,
      @nullable String bookingMethod,
      @nullable String comment,
      Map<String, MetaValue> metadata}) = _$AccountOpenAction;

  @override
  DateTime get date;
  @override
  String get type;
  @override
  Account get account;
  @override
  List<String> get currencies;
  @override
  @nullable
  String get bookingMethod;
  @override
  @nullable
  String get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  $AccountOpenActionCopyWith<AccountOpenAction> get copyWith;
}

/// @nodoc
abstract class $AccountCloseActionCopyWith<$Res>
    implements $AccountActionCopyWith<$Res> {
  factory $AccountCloseActionCopyWith(
          AccountCloseAction value, $Res Function(AccountCloseAction) then) =
      _$AccountCloseActionCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime date,
      String type,
      Account account,
      List<String> currencies,
      @nullable String bookingMethod,
      @nullable String comment,
      Map<String, MetaValue> metadata});

  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$AccountCloseActionCopyWithImpl<$Res>
    extends _$AccountActionCopyWithImpl<$Res>
    implements $AccountCloseActionCopyWith<$Res> {
  _$AccountCloseActionCopyWithImpl(
      AccountCloseAction _value, $Res Function(AccountCloseAction) _then)
      : super(_value, (v) => _then(v as AccountCloseAction));

  @override
  AccountCloseAction get _value => super._value as AccountCloseAction;

  @override
  $Res call({
    Object date = freezed,
    Object type = freezed,
    Object account = freezed,
    Object currencies = freezed,
    Object bookingMethod = freezed,
    Object comment = freezed,
    Object metadata = freezed,
  }) {
    return _then(AccountCloseAction(
      date: date == freezed ? _value.date : date as DateTime,
      type: type == freezed ? _value.type : type as String,
      account: account == freezed ? _value.account : account as Account,
      currencies: currencies == freezed
          ? _value.currencies
          : currencies as List<String>,
      bookingMethod: bookingMethod == freezed
          ? _value.bookingMethod
          : bookingMethod as String,
      comment: comment == freezed ? _value.comment : comment as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc
class _$AccountCloseAction implements AccountCloseAction {
  _$AccountCloseAction(
      {@required this.date,
      @required this.type,
      @required this.account,
      this.currencies = const [],
      @nullable this.bookingMethod,
      @nullable this.comment,
      this.metadata = const {}})
      : assert(date != null),
        assert(type != null),
        assert(account != null),
        assert(currencies != null),
        assert(metadata != null);

  @override
  final DateTime date;
  @override
  final String type;
  @override
  final Account account;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> currencies;
  @override
  @nullable
  final String bookingMethod;
  @override
  @nullable
  final String comment;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, MetaValue> metadata;

  bool _didstringify = false;
  String _stringify;

  @override
  String get stringify {
    if (_didstringify == false) {
      _didstringify = true;
      _stringify = (() {
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
    return _stringify;
  }

  @override
  String toString() {
    return 'AccountAction.close(date: $date, type: $type, account: $account, currencies: $currencies, bookingMethod: $bookingMethod, comment: $comment, metadata: $metadata, stringify: $stringify)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountCloseAction &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.currencies, currencies) ||
                const DeepCollectionEquality()
                    .equals(other.currencies, currencies)) &&
            (identical(other.bookingMethod, bookingMethod) ||
                const DeepCollectionEquality()
                    .equals(other.bookingMethod, bookingMethod)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(currencies) ^
      const DeepCollectionEquality().hash(bookingMethod) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(metadata);

  @override
  $AccountCloseActionCopyWith<AccountCloseAction> get copyWith =>
      _$AccountCloseActionCopyWithImpl<AccountCloseAction>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result open(
            DateTime date,
            String type,
            Account account,
            List<String> currencies,
            @nullable String bookingMethod,
            @nullable String comment,
            Map<String, MetaValue> metadata),
    @required
        Result close(
            DateTime date,
            String type,
            Account account,
            List<String> currencies,
            @nullable String bookingMethod,
            @nullable String comment,
            Map<String, MetaValue> metadata),
  }) {
    assert(open != null);
    assert(close != null);
    return close(
        date, type, account, currencies, bookingMethod, comment, metadata);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result open(
        DateTime date,
        String type,
        Account account,
        List<String> currencies,
        @nullable String bookingMethod,
        @nullable String comment,
        Map<String, MetaValue> metadata),
    Result close(
        DateTime date,
        String type,
        Account account,
        List<String> currencies,
        @nullable String bookingMethod,
        @nullable String comment,
        Map<String, MetaValue> metadata),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (close != null) {
      return close(
          date, type, account, currencies, bookingMethod, comment, metadata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result open(AccountOpenAction value),
    @required Result close(AccountCloseAction value),
  }) {
    assert(open != null);
    assert(close != null);
    return close(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result open(AccountOpenAction value),
    Result close(AccountCloseAction value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (close != null) {
      return close(this);
    }
    return orElse();
  }
}

abstract class AccountCloseAction implements AccountAction {
  factory AccountCloseAction(
      {@required DateTime date,
      @required String type,
      @required Account account,
      List<String> currencies,
      @nullable String bookingMethod,
      @nullable String comment,
      Map<String, MetaValue> metadata}) = _$AccountCloseAction;

  @override
  DateTime get date;
  @override
  String get type;
  @override
  Account get account;
  @override
  List<String> get currencies;
  @override
  @nullable
  String get bookingMethod;
  @override
  @nullable
  String get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  $AccountCloseActionCopyWith<AccountCloseAction> get copyWith;
}

/// @nodoc
class _$CommodityActionTearOff {
  const _$CommodityActionTearOff();

// ignore: unused_element
  _CommodityAction call(
      {@required DateTime date,
      @required String currency,
      @nullable String comment,
      Map<String, MetaValue> metadata = const {}}) {
    return _CommodityAction(
      date: date,
      currency: currency,
      comment: comment,
      metadata: metadata,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CommodityAction = _$CommodityActionTearOff();

/// @nodoc
mixin _$CommodityAction {
  DateTime get date;
  String get currency;
  @nullable
  String get comment;
  Map<String, MetaValue> get metadata;

  $CommodityActionCopyWith<CommodityAction> get copyWith;
}

/// @nodoc
abstract class $CommodityActionCopyWith<$Res> {
  factory $CommodityActionCopyWith(
          CommodityAction value, $Res Function(CommodityAction) then) =
      _$CommodityActionCopyWithImpl<$Res>;
  $Res call(
      {DateTime date,
      String currency,
      @nullable String comment,
      Map<String, MetaValue> metadata});
}

/// @nodoc
class _$CommodityActionCopyWithImpl<$Res>
    implements $CommodityActionCopyWith<$Res> {
  _$CommodityActionCopyWithImpl(this._value, this._then);

  final CommodityAction _value;
  // ignore: unused_field
  final $Res Function(CommodityAction) _then;

  @override
  $Res call({
    Object date = freezed,
    Object currency = freezed,
    Object comment = freezed,
    Object metadata = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as DateTime,
      currency: currency == freezed ? _value.currency : currency as String,
      comment: comment == freezed ? _value.comment : comment as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc
abstract class _$CommodityActionCopyWith<$Res>
    implements $CommodityActionCopyWith<$Res> {
  factory _$CommodityActionCopyWith(
          _CommodityAction value, $Res Function(_CommodityAction) then) =
      __$CommodityActionCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime date,
      String currency,
      @nullable String comment,
      Map<String, MetaValue> metadata});
}

/// @nodoc
class __$CommodityActionCopyWithImpl<$Res>
    extends _$CommodityActionCopyWithImpl<$Res>
    implements _$CommodityActionCopyWith<$Res> {
  __$CommodityActionCopyWithImpl(
      _CommodityAction _value, $Res Function(_CommodityAction) _then)
      : super(_value, (v) => _then(v as _CommodityAction));

  @override
  _CommodityAction get _value => super._value as _CommodityAction;

  @override
  $Res call({
    Object date = freezed,
    Object currency = freezed,
    Object comment = freezed,
    Object metadata = freezed,
  }) {
    return _then(_CommodityAction(
      date: date == freezed ? _value.date : date as DateTime,
      currency: currency == freezed ? _value.currency : currency as String,
      comment: comment == freezed ? _value.comment : comment as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc
class _$_CommodityAction implements _CommodityAction {
  _$_CommodityAction(
      {@required this.date,
      @required this.currency,
      @nullable this.comment,
      this.metadata = const {}})
      : assert(date != null),
        assert(currency != null),
        assert(metadata != null);

  @override
  final DateTime date;
  @override
  final String currency;
  @override
  @nullable
  final String comment;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, MetaValue> metadata;

  bool _didstringify = false;
  String _stringify;

  @override
  String get stringify {
    if (_didstringify == false) {
      _didstringify = true;
      _stringify = (() {
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
    return _stringify;
  }

  @override
  String toString() {
    return 'CommodityAction(date: $date, currency: $currency, comment: $comment, metadata: $metadata, stringify: $stringify)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommodityAction &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(metadata);

  @override
  _$CommodityActionCopyWith<_CommodityAction> get copyWith =>
      __$CommodityActionCopyWithImpl<_CommodityAction>(this, _$identity);
}

abstract class _CommodityAction implements CommodityAction {
  factory _CommodityAction(
      {@required DateTime date,
      @required String currency,
      @nullable String comment,
      Map<String, MetaValue> metadata}) = _$_CommodityAction;

  @override
  DateTime get date;
  @override
  String get currency;
  @override
  @nullable
  String get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  _$CommodityActionCopyWith<_CommodityAction> get copyWith;
}

/// @nodoc
class _$BalanceActionTearOff {
  const _$BalanceActionTearOff();

// ignore: unused_element
  _BalanceAction call(
      {@required DateTime date,
      @required Account account,
      @required Money unit,
      @nullable String comment,
      Map<String, MetaValue> metadata = const {}}) {
    return _BalanceAction(
      date: date,
      account: account,
      unit: unit,
      comment: comment,
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
  @nullable
  String get comment;
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
      @nullable String comment,
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
    Object comment = freezed,
    Object metadata = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as DateTime,
      account: account == freezed ? _value.account : account as Account,
      unit: unit == freezed ? _value.unit : unit as Money,
      comment: comment == freezed ? _value.comment : comment as String,
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
      @nullable String comment,
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
    Object comment = freezed,
    Object metadata = freezed,
  }) {
    return _then(_BalanceAction(
      date: date == freezed ? _value.date : date as DateTime,
      account: account == freezed ? _value.account : account as Account,
      unit: unit == freezed ? _value.unit : unit as Money,
      comment: comment == freezed ? _value.comment : comment as String,
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
      @nullable this.comment,
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
  @override
  @nullable
  final String comment;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, MetaValue> metadata;

  bool _didstringify = false;
  String _stringify;

  @override
  String get stringify {
    if (_didstringify == false) {
      _didstringify = true;
      _stringify = (() {
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
    return _stringify;
  }

  @override
  String toString() {
    return 'BalanceAction(date: $date, account: $account, unit: $unit, comment: $comment, metadata: $metadata, stringify: $stringify)';
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
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
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
      const DeepCollectionEquality().hash(comment) ^
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
      @nullable String comment,
      Map<String, MetaValue> metadata}) = _$_BalanceAction;

  @override
  DateTime get date;
  @override
  Account get account;
  @override
  Money get unit;
  @override
  @nullable
  String get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  _$BalanceActionCopyWith<_BalanceAction> get copyWith;
}

/// @nodoc
class _$PadActionTearOff {
  const _$PadActionTearOff();

// ignore: unused_element
  _PadAction call(
      {@required DateTime date,
      @required Account account,
      @required Account padAccount,
      @nullable String comment,
      Map<String, MetaValue> metadata = const {}}) {
    return _PadAction(
      date: date,
      account: account,
      padAccount: padAccount,
      comment: comment,
      metadata: metadata,
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
  @nullable
  String get comment;
  Map<String, MetaValue> get metadata;

  $PadActionCopyWith<PadAction> get copyWith;
}

/// @nodoc
abstract class $PadActionCopyWith<$Res> {
  factory $PadActionCopyWith(PadAction value, $Res Function(PadAction) then) =
      _$PadActionCopyWithImpl<$Res>;
  $Res call(
      {DateTime date,
      Account account,
      Account padAccount,
      @nullable String comment,
      Map<String, MetaValue> metadata});

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
    Object metadata = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as DateTime,
      account: account == freezed ? _value.account : account as Account,
      padAccount:
          padAccount == freezed ? _value.padAccount : padAccount as Account,
      comment: comment == freezed ? _value.comment : comment as String,
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
      {DateTime date,
      Account account,
      Account padAccount,
      @nullable String comment,
      Map<String, MetaValue> metadata});

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
    Object metadata = freezed,
  }) {
    return _then(_PadAction(
      date: date == freezed ? _value.date : date as DateTime,
      account: account == freezed ? _value.account : account as Account,
      padAccount:
          padAccount == freezed ? _value.padAccount : padAccount as Account,
      comment: comment == freezed ? _value.comment : comment as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc
class _$_PadAction implements _PadAction {
  _$_PadAction(
      {@required this.date,
      @required this.account,
      @required this.padAccount,
      @nullable this.comment,
      this.metadata = const {}})
      : assert(date != null),
        assert(account != null),
        assert(padAccount != null),
        assert(metadata != null);

  @override
  final DateTime date;
  @override
  final Account account;
  @override
  final Account padAccount;
  @override
  @nullable
  final String comment;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, MetaValue> metadata;

  bool _didstringify = false;
  String _stringify;

  @override
  String get stringify {
    if (_didstringify == false) {
      _didstringify = true;
      _stringify = (() {
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
    return _stringify;
  }

  @override
  String toString() {
    return 'PadAction(date: $date, account: $account, padAccount: $padAccount, comment: $comment, metadata: $metadata, stringify: $stringify)';
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
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(padAccount) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(metadata);

  @override
  _$PadActionCopyWith<_PadAction> get copyWith =>
      __$PadActionCopyWithImpl<_PadAction>(this, _$identity);
}

abstract class _PadAction implements PadAction {
  factory _PadAction(
      {@required DateTime date,
      @required Account account,
      @required Account padAccount,
      @nullable String comment,
      Map<String, MetaValue> metadata}) = _$_PadAction;

  @override
  DateTime get date;
  @override
  Account get account;
  @override
  Account get padAccount;
  @override
  @nullable
  String get comment;
  @override
  Map<String, MetaValue> get metadata;
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
      @nullable String comment,
      Map<String, MetaValue> metadata = const {}}) {
    return _NoteAction(
      date: date,
      account: account,
      note: note,
      comment: comment,
      metadata: metadata,
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
  @nullable
  String get comment;
  Map<String, MetaValue> get metadata;

  $NoteActionCopyWith<NoteAction> get copyWith;
}

/// @nodoc
abstract class $NoteActionCopyWith<$Res> {
  factory $NoteActionCopyWith(
          NoteAction value, $Res Function(NoteAction) then) =
      _$NoteActionCopyWithImpl<$Res>;
  $Res call(
      {DateTime date,
      Account account,
      String note,
      @nullable String comment,
      Map<String, MetaValue> metadata});

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
    Object metadata = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as DateTime,
      account: account == freezed ? _value.account : account as Account,
      note: note == freezed ? _value.note : note as String,
      comment: comment == freezed ? _value.comment : comment as String,
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
abstract class _$NoteActionCopyWith<$Res> implements $NoteActionCopyWith<$Res> {
  factory _$NoteActionCopyWith(
          _NoteAction value, $Res Function(_NoteAction) then) =
      __$NoteActionCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime date,
      Account account,
      String note,
      @nullable String comment,
      Map<String, MetaValue> metadata});

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
    Object metadata = freezed,
  }) {
    return _then(_NoteAction(
      date: date == freezed ? _value.date : date as DateTime,
      account: account == freezed ? _value.account : account as Account,
      note: note == freezed ? _value.note : note as String,
      comment: comment == freezed ? _value.comment : comment as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc
class _$_NoteAction implements _NoteAction {
  _$_NoteAction(
      {@required this.date,
      @required this.account,
      @required this.note,
      @nullable this.comment,
      this.metadata = const {}})
      : assert(date != null),
        assert(account != null),
        assert(note != null),
        assert(metadata != null);

  @override
  final DateTime date;
  @override
  final Account account;
  @override
  final String note;
  @override
  @nullable
  final String comment;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, MetaValue> metadata;

  bool _didstringify = false;
  String _stringify;

  @override
  String get stringify {
    if (_didstringify == false) {
      _didstringify = true;
      _stringify = (() {
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
    return _stringify;
  }

  @override
  String toString() {
    return 'NoteAction(date: $date, account: $account, note: $note, comment: $comment, metadata: $metadata, stringify: $stringify)';
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
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(metadata);

  @override
  _$NoteActionCopyWith<_NoteAction> get copyWith =>
      __$NoteActionCopyWithImpl<_NoteAction>(this, _$identity);
}

abstract class _NoteAction implements NoteAction {
  factory _NoteAction(
      {@required DateTime date,
      @required Account account,
      @required String note,
      @nullable String comment,
      Map<String, MetaValue> metadata}) = _$_NoteAction;

  @override
  DateTime get date;
  @override
  Account get account;
  @override
  String get note;
  @override
  @nullable
  String get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  _$NoteActionCopyWith<_NoteAction> get copyWith;
}

/// @nodoc
class _$DocumentActionTearOff {
  const _$DocumentActionTearOff();

// ignore: unused_element
  _DocumentAction call(
      {@required DateTime date,
      @required Account account,
      @required String path,
      @nullable String comment,
      Map<String, MetaValue> metadata = const {}}) {
    return _DocumentAction(
      date: date,
      account: account,
      path: path,
      comment: comment,
      metadata: metadata,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DocumentAction = _$DocumentActionTearOff();

/// @nodoc
mixin _$DocumentAction {
  DateTime get date;
  Account get account;
  String get path;
  @nullable
  String get comment;
  Map<String, MetaValue> get metadata;

  $DocumentActionCopyWith<DocumentAction> get copyWith;
}

/// @nodoc
abstract class $DocumentActionCopyWith<$Res> {
  factory $DocumentActionCopyWith(
          DocumentAction value, $Res Function(DocumentAction) then) =
      _$DocumentActionCopyWithImpl<$Res>;
  $Res call(
      {DateTime date,
      Account account,
      String path,
      @nullable String comment,
      Map<String, MetaValue> metadata});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$DocumentActionCopyWithImpl<$Res>
    implements $DocumentActionCopyWith<$Res> {
  _$DocumentActionCopyWithImpl(this._value, this._then);

  final DocumentAction _value;
  // ignore: unused_field
  final $Res Function(DocumentAction) _then;

  @override
  $Res call({
    Object date = freezed,
    Object account = freezed,
    Object path = freezed,
    Object comment = freezed,
    Object metadata = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as DateTime,
      account: account == freezed ? _value.account : account as Account,
      path: path == freezed ? _value.path : path as String,
      comment: comment == freezed ? _value.comment : comment as String,
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
abstract class _$DocumentActionCopyWith<$Res>
    implements $DocumentActionCopyWith<$Res> {
  factory _$DocumentActionCopyWith(
          _DocumentAction value, $Res Function(_DocumentAction) then) =
      __$DocumentActionCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime date,
      Account account,
      String path,
      @nullable String comment,
      Map<String, MetaValue> metadata});

  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$DocumentActionCopyWithImpl<$Res>
    extends _$DocumentActionCopyWithImpl<$Res>
    implements _$DocumentActionCopyWith<$Res> {
  __$DocumentActionCopyWithImpl(
      _DocumentAction _value, $Res Function(_DocumentAction) _then)
      : super(_value, (v) => _then(v as _DocumentAction));

  @override
  _DocumentAction get _value => super._value as _DocumentAction;

  @override
  $Res call({
    Object date = freezed,
    Object account = freezed,
    Object path = freezed,
    Object comment = freezed,
    Object metadata = freezed,
  }) {
    return _then(_DocumentAction(
      date: date == freezed ? _value.date : date as DateTime,
      account: account == freezed ? _value.account : account as Account,
      path: path == freezed ? _value.path : path as String,
      comment: comment == freezed ? _value.comment : comment as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc
class _$_DocumentAction implements _DocumentAction {
  _$_DocumentAction(
      {@required this.date,
      @required this.account,
      @required this.path,
      @nullable this.comment,
      this.metadata = const {}})
      : assert(date != null),
        assert(account != null),
        assert(path != null),
        assert(metadata != null);

  @override
  final DateTime date;
  @override
  final Account account;
  @override
  final String path;
  @override
  @nullable
  final String comment;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, MetaValue> metadata;

  bool _didstringify = false;
  String _stringify;

  @override
  String get stringify {
    if (_didstringify == false) {
      _didstringify = true;
      _stringify = (() {
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
    return _stringify;
  }

  @override
  String toString() {
    return 'DocumentAction(date: $date, account: $account, path: $path, comment: $comment, metadata: $metadata, stringify: $stringify)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DocumentAction &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(path) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(metadata);

  @override
  _$DocumentActionCopyWith<_DocumentAction> get copyWith =>
      __$DocumentActionCopyWithImpl<_DocumentAction>(this, _$identity);
}

abstract class _DocumentAction implements DocumentAction {
  factory _DocumentAction(
      {@required DateTime date,
      @required Account account,
      @required String path,
      @nullable String comment,
      Map<String, MetaValue> metadata}) = _$_DocumentAction;

  @override
  DateTime get date;
  @override
  Account get account;
  @override
  String get path;
  @override
  @nullable
  String get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  _$DocumentActionCopyWith<_DocumentAction> get copyWith;
}

/// @nodoc
class _$PriceActionTearOff {
  const _$PriceActionTearOff();

// ignore: unused_element
  _PriceAction call(
      {@required DateTime date,
      @required String currency,
      @required Money amount,
      @nullable String comment,
      Map<String, MetaValue> metadata = const {}}) {
    return _PriceAction(
      date: date,
      currency: currency,
      amount: amount,
      comment: comment,
      metadata: metadata,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PriceAction = _$PriceActionTearOff();

/// @nodoc
mixin _$PriceAction {
  DateTime get date;
  String get currency;
  Money get amount;
  @nullable
  String get comment;
  Map<String, MetaValue> get metadata;

  $PriceActionCopyWith<PriceAction> get copyWith;
}

/// @nodoc
abstract class $PriceActionCopyWith<$Res> {
  factory $PriceActionCopyWith(
          PriceAction value, $Res Function(PriceAction) then) =
      _$PriceActionCopyWithImpl<$Res>;
  $Res call(
      {DateTime date,
      String currency,
      Money amount,
      @nullable String comment,
      Map<String, MetaValue> metadata});
}

/// @nodoc
class _$PriceActionCopyWithImpl<$Res> implements $PriceActionCopyWith<$Res> {
  _$PriceActionCopyWithImpl(this._value, this._then);

  final PriceAction _value;
  // ignore: unused_field
  final $Res Function(PriceAction) _then;

  @override
  $Res call({
    Object date = freezed,
    Object currency = freezed,
    Object amount = freezed,
    Object comment = freezed,
    Object metadata = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as DateTime,
      currency: currency == freezed ? _value.currency : currency as String,
      amount: amount == freezed ? _value.amount : amount as Money,
      comment: comment == freezed ? _value.comment : comment as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc
abstract class _$PriceActionCopyWith<$Res>
    implements $PriceActionCopyWith<$Res> {
  factory _$PriceActionCopyWith(
          _PriceAction value, $Res Function(_PriceAction) then) =
      __$PriceActionCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime date,
      String currency,
      Money amount,
      @nullable String comment,
      Map<String, MetaValue> metadata});
}

/// @nodoc
class __$PriceActionCopyWithImpl<$Res> extends _$PriceActionCopyWithImpl<$Res>
    implements _$PriceActionCopyWith<$Res> {
  __$PriceActionCopyWithImpl(
      _PriceAction _value, $Res Function(_PriceAction) _then)
      : super(_value, (v) => _then(v as _PriceAction));

  @override
  _PriceAction get _value => super._value as _PriceAction;

  @override
  $Res call({
    Object date = freezed,
    Object currency = freezed,
    Object amount = freezed,
    Object comment = freezed,
    Object metadata = freezed,
  }) {
    return _then(_PriceAction(
      date: date == freezed ? _value.date : date as DateTime,
      currency: currency == freezed ? _value.currency : currency as String,
      amount: amount == freezed ? _value.amount : amount as Money,
      comment: comment == freezed ? _value.comment : comment as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc
class _$_PriceAction implements _PriceAction {
  _$_PriceAction(
      {@required this.date,
      @required this.currency,
      @required this.amount,
      @nullable this.comment,
      this.metadata = const {}})
      : assert(date != null),
        assert(currency != null),
        assert(amount != null),
        assert(metadata != null);

  @override
  final DateTime date;
  @override
  final String currency;
  @override
  final Money amount;
  @override
  @nullable
  final String comment;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, MetaValue> metadata;

  bool _didstringify = false;
  String _stringify;

  @override
  String get stringify {
    if (_didstringify == false) {
      _didstringify = true;
      _stringify = (() {
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
    return _stringify;
  }

  @override
  String toString() {
    return 'PriceAction(date: $date, currency: $currency, amount: $amount, comment: $comment, metadata: $metadata, stringify: $stringify)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PriceAction &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(metadata);

  @override
  _$PriceActionCopyWith<_PriceAction> get copyWith =>
      __$PriceActionCopyWithImpl<_PriceAction>(this, _$identity);
}

abstract class _PriceAction implements PriceAction {
  factory _PriceAction(
      {@required DateTime date,
      @required String currency,
      @required Money amount,
      @nullable String comment,
      Map<String, MetaValue> metadata}) = _$_PriceAction;

  @override
  DateTime get date;
  @override
  String get currency;
  @override
  Money get amount;
  @override
  @nullable
  String get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  _$PriceActionCopyWith<_PriceAction> get copyWith;
}

/// @nodoc
class _$EventActionTearOff {
  const _$EventActionTearOff();

// ignore: unused_element
  _EventAction call(
      {@required DateTime date,
      @required String name,
      @required String value,
      @nullable String comment,
      Map<String, MetaValue> metadata = const {}}) {
    return _EventAction(
      date: date,
      name: name,
      value: value,
      comment: comment,
      metadata: metadata,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EventAction = _$EventActionTearOff();

/// @nodoc
mixin _$EventAction {
  DateTime get date;
  String get name;
  String get value;
  @nullable
  String get comment;
  Map<String, MetaValue> get metadata;

  $EventActionCopyWith<EventAction> get copyWith;
}

/// @nodoc
abstract class $EventActionCopyWith<$Res> {
  factory $EventActionCopyWith(
          EventAction value, $Res Function(EventAction) then) =
      _$EventActionCopyWithImpl<$Res>;
  $Res call(
      {DateTime date,
      String name,
      String value,
      @nullable String comment,
      Map<String, MetaValue> metadata});
}

/// @nodoc
class _$EventActionCopyWithImpl<$Res> implements $EventActionCopyWith<$Res> {
  _$EventActionCopyWithImpl(this._value, this._then);

  final EventAction _value;
  // ignore: unused_field
  final $Res Function(EventAction) _then;

  @override
  $Res call({
    Object date = freezed,
    Object name = freezed,
    Object value = freezed,
    Object comment = freezed,
    Object metadata = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as DateTime,
      name: name == freezed ? _value.name : name as String,
      value: value == freezed ? _value.value : value as String,
      comment: comment == freezed ? _value.comment : comment as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc
abstract class _$EventActionCopyWith<$Res>
    implements $EventActionCopyWith<$Res> {
  factory _$EventActionCopyWith(
          _EventAction value, $Res Function(_EventAction) then) =
      __$EventActionCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime date,
      String name,
      String value,
      @nullable String comment,
      Map<String, MetaValue> metadata});
}

/// @nodoc
class __$EventActionCopyWithImpl<$Res> extends _$EventActionCopyWithImpl<$Res>
    implements _$EventActionCopyWith<$Res> {
  __$EventActionCopyWithImpl(
      _EventAction _value, $Res Function(_EventAction) _then)
      : super(_value, (v) => _then(v as _EventAction));

  @override
  _EventAction get _value => super._value as _EventAction;

  @override
  $Res call({
    Object date = freezed,
    Object name = freezed,
    Object value = freezed,
    Object comment = freezed,
    Object metadata = freezed,
  }) {
    return _then(_EventAction(
      date: date == freezed ? _value.date : date as DateTime,
      name: name == freezed ? _value.name : name as String,
      value: value == freezed ? _value.value : value as String,
      comment: comment == freezed ? _value.comment : comment as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc
class _$_EventAction implements _EventAction {
  _$_EventAction(
      {@required this.date,
      @required this.name,
      @required this.value,
      @nullable this.comment,
      this.metadata = const {}})
      : assert(date != null),
        assert(name != null),
        assert(value != null),
        assert(metadata != null);

  @override
  final DateTime date;
  @override
  final String name;
  @override
  final String value;
  @override
  @nullable
  final String comment;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, MetaValue> metadata;

  bool _didstringify = false;
  String _stringify;

  @override
  String get stringify {
    if (_didstringify == false) {
      _didstringify = true;
      _stringify = (() {
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
    return _stringify;
  }

  @override
  String toString() {
    return 'EventAction(date: $date, name: $name, value: $value, comment: $comment, metadata: $metadata, stringify: $stringify)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventAction &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(metadata);

  @override
  _$EventActionCopyWith<_EventAction> get copyWith =>
      __$EventActionCopyWithImpl<_EventAction>(this, _$identity);
}

abstract class _EventAction implements EventAction {
  factory _EventAction(
      {@required DateTime date,
      @required String name,
      @required String value,
      @nullable String comment,
      Map<String, MetaValue> metadata}) = _$_EventAction;

  @override
  DateTime get date;
  @override
  String get name;
  @override
  String get value;
  @override
  @nullable
  String get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  _$EventActionCopyWith<_EventAction> get copyWith;
}

/// @nodoc
class _$QueryActionTearOff {
  const _$QueryActionTearOff();

// ignore: unused_element
  _QueryAction call(
      {@required DateTime date,
      @required String name,
      @required String query,
      @nullable String comment,
      Map<String, MetaValue> metadata = const {}}) {
    return _QueryAction(
      date: date,
      name: name,
      query: query,
      comment: comment,
      metadata: metadata,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $QueryAction = _$QueryActionTearOff();

/// @nodoc
mixin _$QueryAction {
  DateTime get date;
  String get name;
  String get query;
  @nullable
  String get comment;
  Map<String, MetaValue> get metadata;

  $QueryActionCopyWith<QueryAction> get copyWith;
}

/// @nodoc
abstract class $QueryActionCopyWith<$Res> {
  factory $QueryActionCopyWith(
          QueryAction value, $Res Function(QueryAction) then) =
      _$QueryActionCopyWithImpl<$Res>;
  $Res call(
      {DateTime date,
      String name,
      String query,
      @nullable String comment,
      Map<String, MetaValue> metadata});
}

/// @nodoc
class _$QueryActionCopyWithImpl<$Res> implements $QueryActionCopyWith<$Res> {
  _$QueryActionCopyWithImpl(this._value, this._then);

  final QueryAction _value;
  // ignore: unused_field
  final $Res Function(QueryAction) _then;

  @override
  $Res call({
    Object date = freezed,
    Object name = freezed,
    Object query = freezed,
    Object comment = freezed,
    Object metadata = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as DateTime,
      name: name == freezed ? _value.name : name as String,
      query: query == freezed ? _value.query : query as String,
      comment: comment == freezed ? _value.comment : comment as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc
abstract class _$QueryActionCopyWith<$Res>
    implements $QueryActionCopyWith<$Res> {
  factory _$QueryActionCopyWith(
          _QueryAction value, $Res Function(_QueryAction) then) =
      __$QueryActionCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime date,
      String name,
      String query,
      @nullable String comment,
      Map<String, MetaValue> metadata});
}

/// @nodoc
class __$QueryActionCopyWithImpl<$Res> extends _$QueryActionCopyWithImpl<$Res>
    implements _$QueryActionCopyWith<$Res> {
  __$QueryActionCopyWithImpl(
      _QueryAction _value, $Res Function(_QueryAction) _then)
      : super(_value, (v) => _then(v as _QueryAction));

  @override
  _QueryAction get _value => super._value as _QueryAction;

  @override
  $Res call({
    Object date = freezed,
    Object name = freezed,
    Object query = freezed,
    Object comment = freezed,
    Object metadata = freezed,
  }) {
    return _then(_QueryAction(
      date: date == freezed ? _value.date : date as DateTime,
      name: name == freezed ? _value.name : name as String,
      query: query == freezed ? _value.query : query as String,
      comment: comment == freezed ? _value.comment : comment as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc
class _$_QueryAction implements _QueryAction {
  _$_QueryAction(
      {@required this.date,
      @required this.name,
      @required this.query,
      @nullable this.comment,
      this.metadata = const {}})
      : assert(date != null),
        assert(name != null),
        assert(query != null),
        assert(metadata != null);

  @override
  final DateTime date;
  @override
  final String name;
  @override
  final String query;
  @override
  @nullable
  final String comment;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, MetaValue> metadata;

  bool _didstringify = false;
  String _stringify;

  @override
  String get stringify {
    if (_didstringify == false) {
      _didstringify = true;
      _stringify = (() {
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
    return _stringify;
  }

  @override
  String toString() {
    return 'QueryAction(date: $date, name: $name, query: $query, comment: $comment, metadata: $metadata, stringify: $stringify)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryAction &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(query) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(metadata);

  @override
  _$QueryActionCopyWith<_QueryAction> get copyWith =>
      __$QueryActionCopyWithImpl<_QueryAction>(this, _$identity);
}

abstract class _QueryAction implements QueryAction {
  factory _QueryAction(
      {@required DateTime date,
      @required String name,
      @required String query,
      @nullable String comment,
      Map<String, MetaValue> metadata}) = _$_QueryAction;

  @override
  DateTime get date;
  @override
  String get name;
  @override
  String get query;
  @override
  @nullable
  String get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  _$QueryActionCopyWith<_QueryAction> get copyWith;
}

/// @nodoc
class _$CustomActionTearOff {
  const _$CustomActionTearOff();

// ignore: unused_element
  CustomCustomAction custom(
      {@required DateTime date,
      @required String type,
      List<dynamic> values = const [],
      @nullable String comment,
      Map<String, MetaValue> metadata = const {}}) {
    return CustomCustomAction(
      date: date,
      type: type,
      values: values,
      comment: comment,
      metadata: metadata,
    );
  }

// ignore: unused_element
  BudgetAction budget(
      {@required DateTime date,
      String type = 'budget',
      List<dynamic> values = const [],
      @nullable String comment,
      Map<String, MetaValue> metadata = const {}}) {
    return BudgetAction(
      date: date,
      type: type,
      values: values,
      comment: comment,
      metadata: metadata,
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
  List<dynamic> get values;
  @nullable
  String get comment;
  Map<String, MetaValue> get metadata;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result custom(DateTime date, String type, List<dynamic> values,
            @nullable String comment, Map<String, MetaValue> metadata),
    @required
        Result budget(DateTime date, String type, List<dynamic> values,
            @nullable String comment, Map<String, MetaValue> metadata),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result custom(DateTime date, String type, List<dynamic> values,
        @nullable String comment, Map<String, MetaValue> metadata),
    Result budget(DateTime date, String type, List<dynamic> values,
        @nullable String comment, Map<String, MetaValue> metadata),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result custom(CustomCustomAction value),
    @required Result budget(BudgetAction value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result custom(CustomCustomAction value),
    Result budget(BudgetAction value),
    @required Result orElse(),
  });

  $CustomActionCopyWith<CustomAction> get copyWith;
}

/// @nodoc
abstract class $CustomActionCopyWith<$Res> {
  factory $CustomActionCopyWith(
          CustomAction value, $Res Function(CustomAction) then) =
      _$CustomActionCopyWithImpl<$Res>;
  $Res call(
      {DateTime date,
      String type,
      List<dynamic> values,
      @nullable String comment,
      Map<String, MetaValue> metadata});
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
    Object metadata = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as DateTime,
      type: type == freezed ? _value.type : type as String,
      values: values == freezed ? _value.values : values as List<dynamic>,
      comment: comment == freezed ? _value.comment : comment as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc
abstract class $CustomCustomActionCopyWith<$Res>
    implements $CustomActionCopyWith<$Res> {
  factory $CustomCustomActionCopyWith(
          CustomCustomAction value, $Res Function(CustomCustomAction) then) =
      _$CustomCustomActionCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime date,
      String type,
      List<dynamic> values,
      @nullable String comment,
      Map<String, MetaValue> metadata});
}

/// @nodoc
class _$CustomCustomActionCopyWithImpl<$Res>
    extends _$CustomActionCopyWithImpl<$Res>
    implements $CustomCustomActionCopyWith<$Res> {
  _$CustomCustomActionCopyWithImpl(
      CustomCustomAction _value, $Res Function(CustomCustomAction) _then)
      : super(_value, (v) => _then(v as CustomCustomAction));

  @override
  CustomCustomAction get _value => super._value as CustomCustomAction;

  @override
  $Res call({
    Object date = freezed,
    Object type = freezed,
    Object values = freezed,
    Object comment = freezed,
    Object metadata = freezed,
  }) {
    return _then(CustomCustomAction(
      date: date == freezed ? _value.date : date as DateTime,
      type: type == freezed ? _value.type : type as String,
      values: values == freezed ? _value.values : values as List<dynamic>,
      comment: comment == freezed ? _value.comment : comment as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc
class _$CustomCustomAction implements CustomCustomAction {
  _$CustomCustomAction(
      {@required this.date,
      @required this.type,
      this.values = const [],
      @nullable this.comment,
      this.metadata = const {}})
      : assert(date != null),
        assert(type != null),
        assert(values != null),
        assert(metadata != null);

  @override
  final DateTime date;
  @override
  final String type;
  @JsonKey(defaultValue: const [])
  @override
  final List<dynamic> values;
  @override
  @nullable
  final String comment;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, MetaValue> metadata;

  bool _didstringify = false;
  String _stringify;

  @override
  String get stringify {
    if (_didstringify == false) {
      _didstringify = true;
      _stringify = (() {
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
    return _stringify;
  }

  @override
  String toString() {
    return 'CustomAction.custom(date: $date, type: $type, values: $values, comment: $comment, metadata: $metadata, stringify: $stringify)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CustomCustomAction &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(values) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(metadata);

  @override
  $CustomCustomActionCopyWith<CustomCustomAction> get copyWith =>
      _$CustomCustomActionCopyWithImpl<CustomCustomAction>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result custom(DateTime date, String type, List<dynamic> values,
            @nullable String comment, Map<String, MetaValue> metadata),
    @required
        Result budget(DateTime date, String type, List<dynamic> values,
            @nullable String comment, Map<String, MetaValue> metadata),
  }) {
    assert(custom != null);
    assert(budget != null);
    return custom(date, type, values, comment, metadata);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result custom(DateTime date, String type, List<dynamic> values,
        @nullable String comment, Map<String, MetaValue> metadata),
    Result budget(DateTime date, String type, List<dynamic> values,
        @nullable String comment, Map<String, MetaValue> metadata),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (custom != null) {
      return custom(date, type, values, comment, metadata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result custom(CustomCustomAction value),
    @required Result budget(BudgetAction value),
  }) {
    assert(custom != null);
    assert(budget != null);
    return custom(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result custom(CustomCustomAction value),
    Result budget(BudgetAction value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }
}

abstract class CustomCustomAction implements CustomAction {
  factory CustomCustomAction(
      {@required DateTime date,
      @required String type,
      List<dynamic> values,
      @nullable String comment,
      Map<String, MetaValue> metadata}) = _$CustomCustomAction;

  @override
  DateTime get date;
  @override
  String get type;
  @override
  List<dynamic> get values;
  @override
  @nullable
  String get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  $CustomCustomActionCopyWith<CustomCustomAction> get copyWith;
}

/// @nodoc
abstract class $BudgetActionCopyWith<$Res>
    implements $CustomActionCopyWith<$Res> {
  factory $BudgetActionCopyWith(
          BudgetAction value, $Res Function(BudgetAction) then) =
      _$BudgetActionCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime date,
      String type,
      List<dynamic> values,
      @nullable String comment,
      Map<String, MetaValue> metadata});
}

/// @nodoc
class _$BudgetActionCopyWithImpl<$Res> extends _$CustomActionCopyWithImpl<$Res>
    implements $BudgetActionCopyWith<$Res> {
  _$BudgetActionCopyWithImpl(
      BudgetAction _value, $Res Function(BudgetAction) _then)
      : super(_value, (v) => _then(v as BudgetAction));

  @override
  BudgetAction get _value => super._value as BudgetAction;

  @override
  $Res call({
    Object date = freezed,
    Object type = freezed,
    Object values = freezed,
    Object comment = freezed,
    Object metadata = freezed,
  }) {
    return _then(BudgetAction(
      date: date == freezed ? _value.date : date as DateTime,
      type: type == freezed ? _value.type : type as String,
      values: values == freezed ? _value.values : values as List<dynamic>,
      comment: comment == freezed ? _value.comment : comment as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc
class _$BudgetAction implements BudgetAction {
  _$BudgetAction(
      {@required this.date,
      this.type = 'budget',
      this.values = const [],
      @nullable this.comment,
      this.metadata = const {}})
      : assert(date != null),
        assert(type != null),
        assert(values != null),
        assert(metadata != null);

  @override
  final DateTime date;
  @JsonKey(defaultValue: 'budget')
  @override
  final String type;
  @JsonKey(defaultValue: const [])
  @override
  final List<dynamic> values;
  @override
  @nullable
  final String comment;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, MetaValue> metadata;

  bool _didstringify = false;
  String _stringify;

  @override
  String get stringify {
    if (_didstringify == false) {
      _didstringify = true;
      _stringify = (() {
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
    return _stringify;
  }

  @override
  String toString() {
    return 'CustomAction.budget(date: $date, type: $type, values: $values, comment: $comment, metadata: $metadata, stringify: $stringify)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BudgetAction &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(values) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(metadata);

  @override
  $BudgetActionCopyWith<BudgetAction> get copyWith =>
      _$BudgetActionCopyWithImpl<BudgetAction>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result custom(DateTime date, String type, List<dynamic> values,
            @nullable String comment, Map<String, MetaValue> metadata),
    @required
        Result budget(DateTime date, String type, List<dynamic> values,
            @nullable String comment, Map<String, MetaValue> metadata),
  }) {
    assert(custom != null);
    assert(budget != null);
    return budget(date, type, values, comment, metadata);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result custom(DateTime date, String type, List<dynamic> values,
        @nullable String comment, Map<String, MetaValue> metadata),
    Result budget(DateTime date, String type, List<dynamic> values,
        @nullable String comment, Map<String, MetaValue> metadata),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (budget != null) {
      return budget(date, type, values, comment, metadata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result custom(CustomCustomAction value),
    @required Result budget(BudgetAction value),
  }) {
    assert(custom != null);
    assert(budget != null);
    return budget(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result custom(CustomCustomAction value),
    Result budget(BudgetAction value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (budget != null) {
      return budget(this);
    }
    return orElse();
  }
}

abstract class BudgetAction implements CustomAction {
  factory BudgetAction(
      {@required DateTime date,
      String type,
      List<dynamic> values,
      @nullable String comment,
      Map<String, MetaValue> metadata}) = _$BudgetAction;

  @override
  DateTime get date;
  @override
  String get type;
  @override
  List<dynamic> get values;
  @override
  @nullable
  String get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  $BudgetActionCopyWith<BudgetAction> get copyWith;
}
