// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountAction {
  DateTime get date => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  Account get account => throw _privateConstructorUsedError;
  List<String> get currencies => throw _privateConstructorUsedError;
  String? get bookingMethod => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  Map<String, MetaValue> get metadata => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime date,
            String type,
            Account account,
            List<String> currencies,
            String? bookingMethod,
            String? comment,
            Map<String, MetaValue> metadata)
        open,
    required TResult Function(
            DateTime date,
            String type,
            Account account,
            List<String> currencies,
            String? bookingMethod,
            String? comment,
            Map<String, MetaValue> metadata)
        close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            DateTime date,
            String type,
            Account account,
            List<String> currencies,
            String? bookingMethod,
            String? comment,
            Map<String, MetaValue> metadata)?
        open,
    TResult? Function(
            DateTime date,
            String type,
            Account account,
            List<String> currencies,
            String? bookingMethod,
            String? comment,
            Map<String, MetaValue> metadata)?
        close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DateTime date,
            String type,
            Account account,
            List<String> currencies,
            String? bookingMethod,
            String? comment,
            Map<String, MetaValue> metadata)?
        open,
    TResult Function(
            DateTime date,
            String type,
            Account account,
            List<String> currencies,
            String? bookingMethod,
            String? comment,
            Map<String, MetaValue> metadata)?
        close,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountOpenAction value) open,
    required TResult Function(AccountCloseAction value) close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountOpenAction value)? open,
    TResult? Function(AccountCloseAction value)? close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountOpenAction value)? open,
    TResult Function(AccountCloseAction value)? close,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountActionCopyWith<AccountAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountActionCopyWith<$Res> {
  factory $AccountActionCopyWith(
          AccountAction value, $Res Function(AccountAction) then) =
      _$AccountActionCopyWithImpl<$Res, AccountAction>;
  @useResult
  $Res call(
      {DateTime date,
      String type,
      Account account,
      List<String> currencies,
      String? bookingMethod,
      String? comment,
      Map<String, MetaValue> metadata});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$AccountActionCopyWithImpl<$Res, $Val extends AccountAction>
    implements $AccountActionCopyWith<$Res> {
  _$AccountActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? type = null,
    Object? account = null,
    Object? currencies = null,
    Object? bookingMethod = freezed,
    Object? comment = freezed,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      currencies: null == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bookingMethod: freezed == bookingMethod
          ? _value.bookingMethod
          : bookingMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, MetaValue>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountOpenActionCopyWith<$Res>
    implements $AccountActionCopyWith<$Res> {
  factory _$$AccountOpenActionCopyWith(
          _$AccountOpenAction value, $Res Function(_$AccountOpenAction) then) =
      __$$AccountOpenActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      String type,
      Account account,
      List<String> currencies,
      String? bookingMethod,
      String? comment,
      Map<String, MetaValue> metadata});

  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$AccountOpenActionCopyWithImpl<$Res>
    extends _$AccountActionCopyWithImpl<$Res, _$AccountOpenAction>
    implements _$$AccountOpenActionCopyWith<$Res> {
  __$$AccountOpenActionCopyWithImpl(
      _$AccountOpenAction _value, $Res Function(_$AccountOpenAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? type = null,
    Object? account = null,
    Object? currencies = null,
    Object? bookingMethod = freezed,
    Object? comment = freezed,
    Object? metadata = null,
  }) {
    return _then(_$AccountOpenAction(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      currencies: null == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bookingMethod: freezed == bookingMethod
          ? _value.bookingMethod
          : bookingMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc

class _$AccountOpenAction extends AccountOpenAction {
  _$AccountOpenAction(
      {required this.date,
      required this.type,
      required this.account,
      final List<String> currencies = const [],
      this.bookingMethod,
      this.comment,
      final Map<String, MetaValue> metadata = const {}})
      : _currencies = currencies,
        _metadata = metadata,
        super._();

  @override
  final DateTime date;
  @override
  final String type;
  @override
  final Account account;
  final List<String> _currencies;
  @override
  @JsonKey()
  List<String> get currencies {
    if (_currencies is EqualUnmodifiableListView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencies);
  }

  @override
  final String? bookingMethod;
  @override
  final String? comment;
  final Map<String, MetaValue> _metadata;
  @override
  @JsonKey()
  Map<String, MetaValue> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'AccountAction.open(date: $date, type: $type, account: $account, currencies: $currencies, bookingMethod: $bookingMethod, comment: $comment, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountOpenAction &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.account, account) || other.account == account) &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies) &&
            (identical(other.bookingMethod, bookingMethod) ||
                other.bookingMethod == bookingMethod) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      type,
      account,
      const DeepCollectionEquality().hash(_currencies),
      bookingMethod,
      comment,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountOpenActionCopyWith<_$AccountOpenAction> get copyWith =>
      __$$AccountOpenActionCopyWithImpl<_$AccountOpenAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime date,
            String type,
            Account account,
            List<String> currencies,
            String? bookingMethod,
            String? comment,
            Map<String, MetaValue> metadata)
        open,
    required TResult Function(
            DateTime date,
            String type,
            Account account,
            List<String> currencies,
            String? bookingMethod,
            String? comment,
            Map<String, MetaValue> metadata)
        close,
  }) {
    return open(
        date, type, account, currencies, bookingMethod, comment, metadata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            DateTime date,
            String type,
            Account account,
            List<String> currencies,
            String? bookingMethod,
            String? comment,
            Map<String, MetaValue> metadata)?
        open,
    TResult? Function(
            DateTime date,
            String type,
            Account account,
            List<String> currencies,
            String? bookingMethod,
            String? comment,
            Map<String, MetaValue> metadata)?
        close,
  }) {
    return open?.call(
        date, type, account, currencies, bookingMethod, comment, metadata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DateTime date,
            String type,
            Account account,
            List<String> currencies,
            String? bookingMethod,
            String? comment,
            Map<String, MetaValue> metadata)?
        open,
    TResult Function(
            DateTime date,
            String type,
            Account account,
            List<String> currencies,
            String? bookingMethod,
            String? comment,
            Map<String, MetaValue> metadata)?
        close,
    required TResult orElse(),
  }) {
    if (open != null) {
      return open(
          date, type, account, currencies, bookingMethod, comment, metadata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountOpenAction value) open,
    required TResult Function(AccountCloseAction value) close,
  }) {
    return open(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountOpenAction value)? open,
    TResult? Function(AccountCloseAction value)? close,
  }) {
    return open?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountOpenAction value)? open,
    TResult Function(AccountCloseAction value)? close,
    required TResult orElse(),
  }) {
    if (open != null) {
      return open(this);
    }
    return orElse();
  }
}

abstract class AccountOpenAction extends AccountAction {
  factory AccountOpenAction(
      {required final DateTime date,
      required final String type,
      required final Account account,
      final List<String> currencies,
      final String? bookingMethod,
      final String? comment,
      final Map<String, MetaValue> metadata}) = _$AccountOpenAction;
  AccountOpenAction._() : super._();

  @override
  DateTime get date;
  @override
  String get type;
  @override
  Account get account;
  @override
  List<String> get currencies;
  @override
  String? get bookingMethod;
  @override
  String? get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$AccountOpenActionCopyWith<_$AccountOpenAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AccountCloseActionCopyWith<$Res>
    implements $AccountActionCopyWith<$Res> {
  factory _$$AccountCloseActionCopyWith(_$AccountCloseAction value,
          $Res Function(_$AccountCloseAction) then) =
      __$$AccountCloseActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      String type,
      Account account,
      List<String> currencies,
      String? bookingMethod,
      String? comment,
      Map<String, MetaValue> metadata});

  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$AccountCloseActionCopyWithImpl<$Res>
    extends _$AccountActionCopyWithImpl<$Res, _$AccountCloseAction>
    implements _$$AccountCloseActionCopyWith<$Res> {
  __$$AccountCloseActionCopyWithImpl(
      _$AccountCloseAction _value, $Res Function(_$AccountCloseAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? type = null,
    Object? account = null,
    Object? currencies = null,
    Object? bookingMethod = freezed,
    Object? comment = freezed,
    Object? metadata = null,
  }) {
    return _then(_$AccountCloseAction(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      currencies: null == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bookingMethod: freezed == bookingMethod
          ? _value.bookingMethod
          : bookingMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc

class _$AccountCloseAction extends AccountCloseAction {
  _$AccountCloseAction(
      {required this.date,
      required this.type,
      required this.account,
      final List<String> currencies = const [],
      this.bookingMethod,
      this.comment,
      final Map<String, MetaValue> metadata = const {}})
      : _currencies = currencies,
        _metadata = metadata,
        super._();

  @override
  final DateTime date;
  @override
  final String type;
  @override
  final Account account;
  final List<String> _currencies;
  @override
  @JsonKey()
  List<String> get currencies {
    if (_currencies is EqualUnmodifiableListView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currencies);
  }

  @override
  final String? bookingMethod;
  @override
  final String? comment;
  final Map<String, MetaValue> _metadata;
  @override
  @JsonKey()
  Map<String, MetaValue> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'AccountAction.close(date: $date, type: $type, account: $account, currencies: $currencies, bookingMethod: $bookingMethod, comment: $comment, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountCloseAction &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.account, account) || other.account == account) &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies) &&
            (identical(other.bookingMethod, bookingMethod) ||
                other.bookingMethod == bookingMethod) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      type,
      account,
      const DeepCollectionEquality().hash(_currencies),
      bookingMethod,
      comment,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountCloseActionCopyWith<_$AccountCloseAction> get copyWith =>
      __$$AccountCloseActionCopyWithImpl<_$AccountCloseAction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime date,
            String type,
            Account account,
            List<String> currencies,
            String? bookingMethod,
            String? comment,
            Map<String, MetaValue> metadata)
        open,
    required TResult Function(
            DateTime date,
            String type,
            Account account,
            List<String> currencies,
            String? bookingMethod,
            String? comment,
            Map<String, MetaValue> metadata)
        close,
  }) {
    return close(
        date, type, account, currencies, bookingMethod, comment, metadata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            DateTime date,
            String type,
            Account account,
            List<String> currencies,
            String? bookingMethod,
            String? comment,
            Map<String, MetaValue> metadata)?
        open,
    TResult? Function(
            DateTime date,
            String type,
            Account account,
            List<String> currencies,
            String? bookingMethod,
            String? comment,
            Map<String, MetaValue> metadata)?
        close,
  }) {
    return close?.call(
        date, type, account, currencies, bookingMethod, comment, metadata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DateTime date,
            String type,
            Account account,
            List<String> currencies,
            String? bookingMethod,
            String? comment,
            Map<String, MetaValue> metadata)?
        open,
    TResult Function(
            DateTime date,
            String type,
            Account account,
            List<String> currencies,
            String? bookingMethod,
            String? comment,
            Map<String, MetaValue> metadata)?
        close,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close(
          date, type, account, currencies, bookingMethod, comment, metadata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountOpenAction value) open,
    required TResult Function(AccountCloseAction value) close,
  }) {
    return close(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountOpenAction value)? open,
    TResult? Function(AccountCloseAction value)? close,
  }) {
    return close?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountOpenAction value)? open,
    TResult Function(AccountCloseAction value)? close,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close(this);
    }
    return orElse();
  }
}

abstract class AccountCloseAction extends AccountAction {
  factory AccountCloseAction(
      {required final DateTime date,
      required final String type,
      required final Account account,
      final List<String> currencies,
      final String? bookingMethod,
      final String? comment,
      final Map<String, MetaValue> metadata}) = _$AccountCloseAction;
  AccountCloseAction._() : super._();

  @override
  DateTime get date;
  @override
  String get type;
  @override
  Account get account;
  @override
  List<String> get currencies;
  @override
  String? get bookingMethod;
  @override
  String? get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$AccountCloseActionCopyWith<_$AccountCloseAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommodityAction {
  DateTime get date => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  Map<String, MetaValue> get metadata => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommodityActionCopyWith<CommodityAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommodityActionCopyWith<$Res> {
  factory $CommodityActionCopyWith(
          CommodityAction value, $Res Function(CommodityAction) then) =
      _$CommodityActionCopyWithImpl<$Res, CommodityAction>;
  @useResult
  $Res call(
      {DateTime date,
      String code,
      String? comment,
      Map<String, MetaValue> metadata});
}

/// @nodoc
class _$CommodityActionCopyWithImpl<$Res, $Val extends CommodityAction>
    implements $CommodityActionCopyWith<$Res> {
  _$CommodityActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? code = null,
    Object? comment = freezed,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, MetaValue>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommodityActionCopyWith<$Res>
    implements $CommodityActionCopyWith<$Res> {
  factory _$$_CommodityActionCopyWith(
          _$_CommodityAction value, $Res Function(_$_CommodityAction) then) =
      __$$_CommodityActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      String code,
      String? comment,
      Map<String, MetaValue> metadata});
}

/// @nodoc
class __$$_CommodityActionCopyWithImpl<$Res>
    extends _$CommodityActionCopyWithImpl<$Res, _$_CommodityAction>
    implements _$$_CommodityActionCopyWith<$Res> {
  __$$_CommodityActionCopyWithImpl(
      _$_CommodityAction _value, $Res Function(_$_CommodityAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? code = null,
    Object? comment = freezed,
    Object? metadata = null,
  }) {
    return _then(_$_CommodityAction(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc

class _$_CommodityAction extends _CommodityAction {
  _$_CommodityAction(
      {required this.date,
      required this.code,
      this.comment,
      final Map<String, MetaValue> metadata = const {}})
      : _metadata = metadata,
        super._();

  @override
  final DateTime date;
  @override
  final String code;
  @override
  final String? comment;
  final Map<String, MetaValue> _metadata;
  @override
  @JsonKey()
  Map<String, MetaValue> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'CommodityAction(date: $date, code: $code, comment: $comment, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommodityAction &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, code, comment,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommodityActionCopyWith<_$_CommodityAction> get copyWith =>
      __$$_CommodityActionCopyWithImpl<_$_CommodityAction>(this, _$identity);
}

abstract class _CommodityAction extends CommodityAction {
  factory _CommodityAction(
      {required final DateTime date,
      required final String code,
      final String? comment,
      final Map<String, MetaValue> metadata}) = _$_CommodityAction;
  _CommodityAction._() : super._();

  @override
  DateTime get date;
  @override
  String get code;
  @override
  String? get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$_CommodityActionCopyWith<_$_CommodityAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BalanceAction {
  DateTime get date => throw _privateConstructorUsedError;
  Account get account => throw _privateConstructorUsedError;
  Money get unit => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  Map<String, MetaValue> get metadata => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BalanceActionCopyWith<BalanceAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceActionCopyWith<$Res> {
  factory $BalanceActionCopyWith(
          BalanceAction value, $Res Function(BalanceAction) then) =
      _$BalanceActionCopyWithImpl<$Res, BalanceAction>;
  @useResult
  $Res call(
      {DateTime date,
      Account account,
      Money unit,
      String? comment,
      Map<String, MetaValue> metadata});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$BalanceActionCopyWithImpl<$Res, $Val extends BalanceAction>
    implements $BalanceActionCopyWith<$Res> {
  _$BalanceActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? account = null,
    Object? unit = null,
    Object? comment = freezed,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Money,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, MetaValue>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BalanceActionCopyWith<$Res>
    implements $BalanceActionCopyWith<$Res> {
  factory _$$_BalanceActionCopyWith(
          _$_BalanceAction value, $Res Function(_$_BalanceAction) then) =
      __$$_BalanceActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      Account account,
      Money unit,
      String? comment,
      Map<String, MetaValue> metadata});

  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$_BalanceActionCopyWithImpl<$Res>
    extends _$BalanceActionCopyWithImpl<$Res, _$_BalanceAction>
    implements _$$_BalanceActionCopyWith<$Res> {
  __$$_BalanceActionCopyWithImpl(
      _$_BalanceAction _value, $Res Function(_$_BalanceAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? account = null,
    Object? unit = null,
    Object? comment = freezed,
    Object? metadata = null,
  }) {
    return _then(_$_BalanceAction(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Money,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc

class _$_BalanceAction extends _BalanceAction {
  _$_BalanceAction(
      {required this.date,
      required this.account,
      required this.unit,
      this.comment,
      final Map<String, MetaValue> metadata = const {}})
      : _metadata = metadata,
        super._();

  @override
  final DateTime date;
  @override
  final Account account;
  @override
  final Money unit;
  @override
  final String? comment;
  final Map<String, MetaValue> _metadata;
  @override
  @JsonKey()
  Map<String, MetaValue> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'BalanceAction(date: $date, account: $account, unit: $unit, comment: $comment, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BalanceAction &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, account, unit, comment,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BalanceActionCopyWith<_$_BalanceAction> get copyWith =>
      __$$_BalanceActionCopyWithImpl<_$_BalanceAction>(this, _$identity);
}

abstract class _BalanceAction extends BalanceAction {
  factory _BalanceAction(
      {required final DateTime date,
      required final Account account,
      required final Money unit,
      final String? comment,
      final Map<String, MetaValue> metadata}) = _$_BalanceAction;
  _BalanceAction._() : super._();

  @override
  DateTime get date;
  @override
  Account get account;
  @override
  Money get unit;
  @override
  String? get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$_BalanceActionCopyWith<_$_BalanceAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PadAction {
  DateTime get date => throw _privateConstructorUsedError;
  Account get account => throw _privateConstructorUsedError;
  Account get padAccount => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  Map<String, MetaValue> get metadata => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PadActionCopyWith<PadAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PadActionCopyWith<$Res> {
  factory $PadActionCopyWith(PadAction value, $Res Function(PadAction) then) =
      _$PadActionCopyWithImpl<$Res, PadAction>;
  @useResult
  $Res call(
      {DateTime date,
      Account account,
      Account padAccount,
      String? comment,
      Map<String, MetaValue> metadata});

  $AccountCopyWith<$Res> get account;
  $AccountCopyWith<$Res> get padAccount;
}

/// @nodoc
class _$PadActionCopyWithImpl<$Res, $Val extends PadAction>
    implements $PadActionCopyWith<$Res> {
  _$PadActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? account = null,
    Object? padAccount = null,
    Object? comment = freezed,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      padAccount: null == padAccount
          ? _value.padAccount
          : padAccount // ignore: cast_nullable_to_non_nullable
              as Account,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, MetaValue>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get padAccount {
    return $AccountCopyWith<$Res>(_value.padAccount, (value) {
      return _then(_value.copyWith(padAccount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PadActionCopyWith<$Res> implements $PadActionCopyWith<$Res> {
  factory _$$_PadActionCopyWith(
          _$_PadAction value, $Res Function(_$_PadAction) then) =
      __$$_PadActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      Account account,
      Account padAccount,
      String? comment,
      Map<String, MetaValue> metadata});

  @override
  $AccountCopyWith<$Res> get account;
  @override
  $AccountCopyWith<$Res> get padAccount;
}

/// @nodoc
class __$$_PadActionCopyWithImpl<$Res>
    extends _$PadActionCopyWithImpl<$Res, _$_PadAction>
    implements _$$_PadActionCopyWith<$Res> {
  __$$_PadActionCopyWithImpl(
      _$_PadAction _value, $Res Function(_$_PadAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? account = null,
    Object? padAccount = null,
    Object? comment = freezed,
    Object? metadata = null,
  }) {
    return _then(_$_PadAction(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      padAccount: null == padAccount
          ? _value.padAccount
          : padAccount // ignore: cast_nullable_to_non_nullable
              as Account,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc

class _$_PadAction extends _PadAction {
  _$_PadAction(
      {required this.date,
      required this.account,
      required this.padAccount,
      this.comment,
      final Map<String, MetaValue> metadata = const {}})
      : _metadata = metadata,
        super._();

  @override
  final DateTime date;
  @override
  final Account account;
  @override
  final Account padAccount;
  @override
  final String? comment;
  final Map<String, MetaValue> _metadata;
  @override
  @JsonKey()
  Map<String, MetaValue> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'PadAction(date: $date, account: $account, padAccount: $padAccount, comment: $comment, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PadAction &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.padAccount, padAccount) ||
                other.padAccount == padAccount) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, account, padAccount,
      comment, const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PadActionCopyWith<_$_PadAction> get copyWith =>
      __$$_PadActionCopyWithImpl<_$_PadAction>(this, _$identity);
}

abstract class _PadAction extends PadAction {
  factory _PadAction(
      {required final DateTime date,
      required final Account account,
      required final Account padAccount,
      final String? comment,
      final Map<String, MetaValue> metadata}) = _$_PadAction;
  _PadAction._() : super._();

  @override
  DateTime get date;
  @override
  Account get account;
  @override
  Account get padAccount;
  @override
  String? get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$_PadActionCopyWith<_$_PadAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoteAction {
  DateTime get date => throw _privateConstructorUsedError;
  Account get account => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  Map<String, MetaValue> get metadata => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteActionCopyWith<NoteAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteActionCopyWith<$Res> {
  factory $NoteActionCopyWith(
          NoteAction value, $Res Function(NoteAction) then) =
      _$NoteActionCopyWithImpl<$Res, NoteAction>;
  @useResult
  $Res call(
      {DateTime date,
      Account account,
      String note,
      String? comment,
      Map<String, MetaValue> metadata});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$NoteActionCopyWithImpl<$Res, $Val extends NoteAction>
    implements $NoteActionCopyWith<$Res> {
  _$NoteActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? account = null,
    Object? note = null,
    Object? comment = freezed,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, MetaValue>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NoteActionCopyWith<$Res>
    implements $NoteActionCopyWith<$Res> {
  factory _$$_NoteActionCopyWith(
          _$_NoteAction value, $Res Function(_$_NoteAction) then) =
      __$$_NoteActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      Account account,
      String note,
      String? comment,
      Map<String, MetaValue> metadata});

  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$_NoteActionCopyWithImpl<$Res>
    extends _$NoteActionCopyWithImpl<$Res, _$_NoteAction>
    implements _$$_NoteActionCopyWith<$Res> {
  __$$_NoteActionCopyWithImpl(
      _$_NoteAction _value, $Res Function(_$_NoteAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? account = null,
    Object? note = null,
    Object? comment = freezed,
    Object? metadata = null,
  }) {
    return _then(_$_NoteAction(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc

class _$_NoteAction extends _NoteAction {
  _$_NoteAction(
      {required this.date,
      required this.account,
      required this.note,
      this.comment,
      final Map<String, MetaValue> metadata = const {}})
      : _metadata = metadata,
        super._();

  @override
  final DateTime date;
  @override
  final Account account;
  @override
  final String note;
  @override
  final String? comment;
  final Map<String, MetaValue> _metadata;
  @override
  @JsonKey()
  Map<String, MetaValue> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'NoteAction(date: $date, account: $account, note: $note, comment: $comment, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteAction &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, account, note, comment,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoteActionCopyWith<_$_NoteAction> get copyWith =>
      __$$_NoteActionCopyWithImpl<_$_NoteAction>(this, _$identity);
}

abstract class _NoteAction extends NoteAction {
  factory _NoteAction(
      {required final DateTime date,
      required final Account account,
      required final String note,
      final String? comment,
      final Map<String, MetaValue> metadata}) = _$_NoteAction;
  _NoteAction._() : super._();

  @override
  DateTime get date;
  @override
  Account get account;
  @override
  String get note;
  @override
  String? get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$_NoteActionCopyWith<_$_NoteAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DocumentAction {
  DateTime get date => throw _privateConstructorUsedError;
  Account get account => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  Map<String, MetaValue> get metadata => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DocumentActionCopyWith<DocumentAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentActionCopyWith<$Res> {
  factory $DocumentActionCopyWith(
          DocumentAction value, $Res Function(DocumentAction) then) =
      _$DocumentActionCopyWithImpl<$Res, DocumentAction>;
  @useResult
  $Res call(
      {DateTime date,
      Account account,
      String path,
      String? comment,
      Map<String, MetaValue> metadata});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$DocumentActionCopyWithImpl<$Res, $Val extends DocumentAction>
    implements $DocumentActionCopyWith<$Res> {
  _$DocumentActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? account = null,
    Object? path = null,
    Object? comment = freezed,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, MetaValue>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DocumentActionCopyWith<$Res>
    implements $DocumentActionCopyWith<$Res> {
  factory _$$_DocumentActionCopyWith(
          _$_DocumentAction value, $Res Function(_$_DocumentAction) then) =
      __$$_DocumentActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      Account account,
      String path,
      String? comment,
      Map<String, MetaValue> metadata});

  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$_DocumentActionCopyWithImpl<$Res>
    extends _$DocumentActionCopyWithImpl<$Res, _$_DocumentAction>
    implements _$$_DocumentActionCopyWith<$Res> {
  __$$_DocumentActionCopyWithImpl(
      _$_DocumentAction _value, $Res Function(_$_DocumentAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? account = null,
    Object? path = null,
    Object? comment = freezed,
    Object? metadata = null,
  }) {
    return _then(_$_DocumentAction(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc

class _$_DocumentAction extends _DocumentAction {
  _$_DocumentAction(
      {required this.date,
      required this.account,
      required this.path,
      this.comment,
      final Map<String, MetaValue> metadata = const {}})
      : _metadata = metadata,
        super._();

  @override
  final DateTime date;
  @override
  final Account account;
  @override
  final String path;
  @override
  final String? comment;
  final Map<String, MetaValue> _metadata;
  @override
  @JsonKey()
  Map<String, MetaValue> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'DocumentAction(date: $date, account: $account, path: $path, comment: $comment, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentAction &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, account, path, comment,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentActionCopyWith<_$_DocumentAction> get copyWith =>
      __$$_DocumentActionCopyWithImpl<_$_DocumentAction>(this, _$identity);
}

abstract class _DocumentAction extends DocumentAction {
  factory _DocumentAction(
      {required final DateTime date,
      required final Account account,
      required final String path,
      final String? comment,
      final Map<String, MetaValue> metadata}) = _$_DocumentAction;
  _DocumentAction._() : super._();

  @override
  DateTime get date;
  @override
  Account get account;
  @override
  String get path;
  @override
  String? get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentActionCopyWith<_$_DocumentAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PriceAction {
  DateTime get date => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  Money get amount => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  Map<String, MetaValue> get metadata => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PriceActionCopyWith<PriceAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceActionCopyWith<$Res> {
  factory $PriceActionCopyWith(
          PriceAction value, $Res Function(PriceAction) then) =
      _$PriceActionCopyWithImpl<$Res, PriceAction>;
  @useResult
  $Res call(
      {DateTime date,
      String currency,
      Money amount,
      String? comment,
      Map<String, MetaValue> metadata});
}

/// @nodoc
class _$PriceActionCopyWithImpl<$Res, $Val extends PriceAction>
    implements $PriceActionCopyWith<$Res> {
  _$PriceActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? currency = null,
    Object? amount = null,
    Object? comment = freezed,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Money,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, MetaValue>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PriceActionCopyWith<$Res>
    implements $PriceActionCopyWith<$Res> {
  factory _$$_PriceActionCopyWith(
          _$_PriceAction value, $Res Function(_$_PriceAction) then) =
      __$$_PriceActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      String currency,
      Money amount,
      String? comment,
      Map<String, MetaValue> metadata});
}

/// @nodoc
class __$$_PriceActionCopyWithImpl<$Res>
    extends _$PriceActionCopyWithImpl<$Res, _$_PriceAction>
    implements _$$_PriceActionCopyWith<$Res> {
  __$$_PriceActionCopyWithImpl(
      _$_PriceAction _value, $Res Function(_$_PriceAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? currency = null,
    Object? amount = null,
    Object? comment = freezed,
    Object? metadata = null,
  }) {
    return _then(_$_PriceAction(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Money,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc

class _$_PriceAction extends _PriceAction {
  _$_PriceAction(
      {required this.date,
      required this.currency,
      required this.amount,
      this.comment,
      final Map<String, MetaValue> metadata = const {}})
      : _metadata = metadata,
        super._();

  @override
  final DateTime date;
  @override
  final String currency;
  @override
  final Money amount;
  @override
  final String? comment;
  final Map<String, MetaValue> _metadata;
  @override
  @JsonKey()
  Map<String, MetaValue> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'PriceAction(date: $date, currency: $currency, amount: $amount, comment: $comment, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PriceAction &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, currency, amount, comment,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PriceActionCopyWith<_$_PriceAction> get copyWith =>
      __$$_PriceActionCopyWithImpl<_$_PriceAction>(this, _$identity);
}

abstract class _PriceAction extends PriceAction {
  factory _PriceAction(
      {required final DateTime date,
      required final String currency,
      required final Money amount,
      final String? comment,
      final Map<String, MetaValue> metadata}) = _$_PriceAction;
  _PriceAction._() : super._();

  @override
  DateTime get date;
  @override
  String get currency;
  @override
  Money get amount;
  @override
  String? get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$_PriceActionCopyWith<_$_PriceAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventAction {
  DateTime get date => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  Map<String, MetaValue> get metadata => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventActionCopyWith<EventAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventActionCopyWith<$Res> {
  factory $EventActionCopyWith(
          EventAction value, $Res Function(EventAction) then) =
      _$EventActionCopyWithImpl<$Res, EventAction>;
  @useResult
  $Res call(
      {DateTime date,
      String name,
      String value,
      String? comment,
      Map<String, MetaValue> metadata});
}

/// @nodoc
class _$EventActionCopyWithImpl<$Res, $Val extends EventAction>
    implements $EventActionCopyWith<$Res> {
  _$EventActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? name = null,
    Object? value = null,
    Object? comment = freezed,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, MetaValue>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventActionCopyWith<$Res>
    implements $EventActionCopyWith<$Res> {
  factory _$$_EventActionCopyWith(
          _$_EventAction value, $Res Function(_$_EventAction) then) =
      __$$_EventActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      String name,
      String value,
      String? comment,
      Map<String, MetaValue> metadata});
}

/// @nodoc
class __$$_EventActionCopyWithImpl<$Res>
    extends _$EventActionCopyWithImpl<$Res, _$_EventAction>
    implements _$$_EventActionCopyWith<$Res> {
  __$$_EventActionCopyWithImpl(
      _$_EventAction _value, $Res Function(_$_EventAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? name = null,
    Object? value = null,
    Object? comment = freezed,
    Object? metadata = null,
  }) {
    return _then(_$_EventAction(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc

class _$_EventAction extends _EventAction {
  _$_EventAction(
      {required this.date,
      required this.name,
      required this.value,
      this.comment,
      final Map<String, MetaValue> metadata = const {}})
      : _metadata = metadata,
        super._();

  @override
  final DateTime date;
  @override
  final String name;
  @override
  final String value;
  @override
  final String? comment;
  final Map<String, MetaValue> _metadata;
  @override
  @JsonKey()
  Map<String, MetaValue> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'EventAction(date: $date, name: $name, value: $value, comment: $comment, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventAction &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, name, value, comment,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventActionCopyWith<_$_EventAction> get copyWith =>
      __$$_EventActionCopyWithImpl<_$_EventAction>(this, _$identity);
}

abstract class _EventAction extends EventAction {
  factory _EventAction(
      {required final DateTime date,
      required final String name,
      required final String value,
      final String? comment,
      final Map<String, MetaValue> metadata}) = _$_EventAction;
  _EventAction._() : super._();

  @override
  DateTime get date;
  @override
  String get name;
  @override
  String get value;
  @override
  String? get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$_EventActionCopyWith<_$_EventAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QueryAction {
  DateTime get date => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  Map<String, MetaValue> get metadata => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QueryActionCopyWith<QueryAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryActionCopyWith<$Res> {
  factory $QueryActionCopyWith(
          QueryAction value, $Res Function(QueryAction) then) =
      _$QueryActionCopyWithImpl<$Res, QueryAction>;
  @useResult
  $Res call(
      {DateTime date,
      String name,
      String query,
      String? comment,
      Map<String, MetaValue> metadata});
}

/// @nodoc
class _$QueryActionCopyWithImpl<$Res, $Val extends QueryAction>
    implements $QueryActionCopyWith<$Res> {
  _$QueryActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? name = null,
    Object? query = null,
    Object? comment = freezed,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, MetaValue>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QueryActionCopyWith<$Res>
    implements $QueryActionCopyWith<$Res> {
  factory _$$_QueryActionCopyWith(
          _$_QueryAction value, $Res Function(_$_QueryAction) then) =
      __$$_QueryActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      String name,
      String query,
      String? comment,
      Map<String, MetaValue> metadata});
}

/// @nodoc
class __$$_QueryActionCopyWithImpl<$Res>
    extends _$QueryActionCopyWithImpl<$Res, _$_QueryAction>
    implements _$$_QueryActionCopyWith<$Res> {
  __$$_QueryActionCopyWithImpl(
      _$_QueryAction _value, $Res Function(_$_QueryAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? name = null,
    Object? query = null,
    Object? comment = freezed,
    Object? metadata = null,
  }) {
    return _then(_$_QueryAction(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc

class _$_QueryAction extends _QueryAction {
  _$_QueryAction(
      {required this.date,
      required this.name,
      required this.query,
      this.comment,
      final Map<String, MetaValue> metadata = const {}})
      : _metadata = metadata,
        super._();

  @override
  final DateTime date;
  @override
  final String name;
  @override
  final String query;
  @override
  final String? comment;
  final Map<String, MetaValue> _metadata;
  @override
  @JsonKey()
  Map<String, MetaValue> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'QueryAction(date: $date, name: $name, query: $query, comment: $comment, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryAction &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, name, query, comment,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryActionCopyWith<_$_QueryAction> get copyWith =>
      __$$_QueryActionCopyWithImpl<_$_QueryAction>(this, _$identity);
}

abstract class _QueryAction extends QueryAction {
  factory _QueryAction(
      {required final DateTime date,
      required final String name,
      required final String query,
      final String? comment,
      final Map<String, MetaValue> metadata}) = _$_QueryAction;
  _QueryAction._() : super._();

  @override
  DateTime get date;
  @override
  String get name;
  @override
  String get query;
  @override
  String? get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$_QueryActionCopyWith<_$_QueryAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomAction {
  DateTime get date => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<dynamic> get values => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  Map<String, MetaValue> get metadata => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, String type, List<dynamic> values,
            String? comment, Map<String, MetaValue> metadata)
        custom,
    required TResult Function(DateTime date, String type, List<dynamic> values,
            String? comment, Map<String, MetaValue> metadata)
        budget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date, String type, List<dynamic> values,
            String? comment, Map<String, MetaValue> metadata)?
        custom,
    TResult? Function(DateTime date, String type, List<dynamic> values,
            String? comment, Map<String, MetaValue> metadata)?
        budget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, String type, List<dynamic> values,
            String? comment, Map<String, MetaValue> metadata)?
        custom,
    TResult Function(DateTime date, String type, List<dynamic> values,
            String? comment, Map<String, MetaValue> metadata)?
        budget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomCustomAction value) custom,
    required TResult Function(BudgetAction value) budget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomCustomAction value)? custom,
    TResult? Function(BudgetAction value)? budget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomCustomAction value)? custom,
    TResult Function(BudgetAction value)? budget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomActionCopyWith<CustomAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomActionCopyWith<$Res> {
  factory $CustomActionCopyWith(
          CustomAction value, $Res Function(CustomAction) then) =
      _$CustomActionCopyWithImpl<$Res, CustomAction>;
  @useResult
  $Res call(
      {DateTime date,
      String type,
      List<dynamic> values,
      String? comment,
      Map<String, MetaValue> metadata});
}

/// @nodoc
class _$CustomActionCopyWithImpl<$Res, $Val extends CustomAction>
    implements $CustomActionCopyWith<$Res> {
  _$CustomActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? type = null,
    Object? values = null,
    Object? comment = freezed,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, MetaValue>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomCustomActionCopyWith<$Res>
    implements $CustomActionCopyWith<$Res> {
  factory _$$CustomCustomActionCopyWith(_$CustomCustomAction value,
          $Res Function(_$CustomCustomAction) then) =
      __$$CustomCustomActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      String type,
      List<dynamic> values,
      String? comment,
      Map<String, MetaValue> metadata});
}

/// @nodoc
class __$$CustomCustomActionCopyWithImpl<$Res>
    extends _$CustomActionCopyWithImpl<$Res, _$CustomCustomAction>
    implements _$$CustomCustomActionCopyWith<$Res> {
  __$$CustomCustomActionCopyWithImpl(
      _$CustomCustomAction _value, $Res Function(_$CustomCustomAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? type = null,
    Object? values = null,
    Object? comment = freezed,
    Object? metadata = null,
  }) {
    return _then(_$CustomCustomAction(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc

class _$CustomCustomAction extends CustomCustomAction {
  _$CustomCustomAction(
      {required this.date,
      required this.type,
      final List<dynamic> values = const [],
      this.comment,
      final Map<String, MetaValue> metadata = const {}})
      : _values = values,
        _metadata = metadata,
        super._();

  @override
  final DateTime date;
  @override
  final String type;
  final List<dynamic> _values;
  @override
  @JsonKey()
  List<dynamic> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  final String? comment;
  final Map<String, MetaValue> _metadata;
  @override
  @JsonKey()
  Map<String, MetaValue> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'CustomAction.custom(date: $date, type: $type, values: $values, comment: $comment, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomCustomAction &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      type,
      const DeepCollectionEquality().hash(_values),
      comment,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomCustomActionCopyWith<_$CustomCustomAction> get copyWith =>
      __$$CustomCustomActionCopyWithImpl<_$CustomCustomAction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, String type, List<dynamic> values,
            String? comment, Map<String, MetaValue> metadata)
        custom,
    required TResult Function(DateTime date, String type, List<dynamic> values,
            String? comment, Map<String, MetaValue> metadata)
        budget,
  }) {
    return custom(date, type, values, comment, metadata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date, String type, List<dynamic> values,
            String? comment, Map<String, MetaValue> metadata)?
        custom,
    TResult? Function(DateTime date, String type, List<dynamic> values,
            String? comment, Map<String, MetaValue> metadata)?
        budget,
  }) {
    return custom?.call(date, type, values, comment, metadata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, String type, List<dynamic> values,
            String? comment, Map<String, MetaValue> metadata)?
        custom,
    TResult Function(DateTime date, String type, List<dynamic> values,
            String? comment, Map<String, MetaValue> metadata)?
        budget,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(date, type, values, comment, metadata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomCustomAction value) custom,
    required TResult Function(BudgetAction value) budget,
  }) {
    return custom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomCustomAction value)? custom,
    TResult? Function(BudgetAction value)? budget,
  }) {
    return custom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomCustomAction value)? custom,
    TResult Function(BudgetAction value)? budget,
    required TResult orElse(),
  }) {
    if (custom != null) {
      return custom(this);
    }
    return orElse();
  }
}

abstract class CustomCustomAction extends CustomAction {
  factory CustomCustomAction(
      {required final DateTime date,
      required final String type,
      final List<dynamic> values,
      final String? comment,
      final Map<String, MetaValue> metadata}) = _$CustomCustomAction;
  CustomCustomAction._() : super._();

  @override
  DateTime get date;
  @override
  String get type;
  @override
  List<dynamic> get values;
  @override
  String? get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$CustomCustomActionCopyWith<_$CustomCustomAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BudgetActionCopyWith<$Res>
    implements $CustomActionCopyWith<$Res> {
  factory _$$BudgetActionCopyWith(
          _$BudgetAction value, $Res Function(_$BudgetAction) then) =
      __$$BudgetActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      String type,
      List<dynamic> values,
      String? comment,
      Map<String, MetaValue> metadata});
}

/// @nodoc
class __$$BudgetActionCopyWithImpl<$Res>
    extends _$CustomActionCopyWithImpl<$Res, _$BudgetAction>
    implements _$$BudgetActionCopyWith<$Res> {
  __$$BudgetActionCopyWithImpl(
      _$BudgetAction _value, $Res Function(_$BudgetAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? type = null,
    Object? values = null,
    Object? comment = freezed,
    Object? metadata = null,
  }) {
    return _then(_$BudgetAction(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc

class _$BudgetAction extends BudgetAction {
  _$BudgetAction(
      {required this.date,
      this.type = 'budget',
      final List<dynamic> values = const [],
      this.comment,
      final Map<String, MetaValue> metadata = const {}})
      : _values = values,
        _metadata = metadata,
        super._();

  @override
  final DateTime date;
  @override
  @JsonKey()
  final String type;
  final List<dynamic> _values;
  @override
  @JsonKey()
  List<dynamic> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  @override
  final String? comment;
  final Map<String, MetaValue> _metadata;
  @override
  @JsonKey()
  Map<String, MetaValue> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'CustomAction.budget(date: $date, type: $type, values: $values, comment: $comment, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetAction &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      type,
      const DeepCollectionEquality().hash(_values),
      comment,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BudgetActionCopyWith<_$BudgetAction> get copyWith =>
      __$$BudgetActionCopyWithImpl<_$BudgetAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date, String type, List<dynamic> values,
            String? comment, Map<String, MetaValue> metadata)
        custom,
    required TResult Function(DateTime date, String type, List<dynamic> values,
            String? comment, Map<String, MetaValue> metadata)
        budget,
  }) {
    return budget(date, type, values, comment, metadata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date, String type, List<dynamic> values,
            String? comment, Map<String, MetaValue> metadata)?
        custom,
    TResult? Function(DateTime date, String type, List<dynamic> values,
            String? comment, Map<String, MetaValue> metadata)?
        budget,
  }) {
    return budget?.call(date, type, values, comment, metadata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date, String type, List<dynamic> values,
            String? comment, Map<String, MetaValue> metadata)?
        custom,
    TResult Function(DateTime date, String type, List<dynamic> values,
            String? comment, Map<String, MetaValue> metadata)?
        budget,
    required TResult orElse(),
  }) {
    if (budget != null) {
      return budget(date, type, values, comment, metadata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomCustomAction value) custom,
    required TResult Function(BudgetAction value) budget,
  }) {
    return budget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomCustomAction value)? custom,
    TResult? Function(BudgetAction value)? budget,
  }) {
    return budget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomCustomAction value)? custom,
    TResult Function(BudgetAction value)? budget,
    required TResult orElse(),
  }) {
    if (budget != null) {
      return budget(this);
    }
    return orElse();
  }
}

abstract class BudgetAction extends CustomAction {
  factory BudgetAction(
      {required final DateTime date,
      final String type,
      final List<dynamic> values,
      final String? comment,
      final Map<String, MetaValue> metadata}) = _$BudgetAction;
  BudgetAction._() : super._();

  @override
  DateTime get date;
  @override
  String get type;
  @override
  List<dynamic> get values;
  @override
  String? get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$BudgetActionCopyWith<_$BudgetAction> get copyWith =>
      throw _privateConstructorUsedError;
}
