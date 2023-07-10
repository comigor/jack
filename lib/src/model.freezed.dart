// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MetaValue<T> {
  T get value => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MetaValueCopyWith<T, MetaValue<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaValueCopyWith<T, $Res> {
  factory $MetaValueCopyWith(
          MetaValue<T> value, $Res Function(MetaValue<T>) then) =
      _$MetaValueCopyWithImpl<T, $Res, MetaValue<T>>;
  @useResult
  $Res call({T value, String? comment});
}

/// @nodoc
class _$MetaValueCopyWithImpl<T, $Res, $Val extends MetaValue<T>>
    implements $MetaValueCopyWith<T, $Res> {
  _$MetaValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaValueCopyWith<T, $Res>
    implements $MetaValueCopyWith<T, $Res> {
  factory _$$_MetaValueCopyWith(
          _$_MetaValue<T> value, $Res Function(_$_MetaValue<T>) then) =
      __$$_MetaValueCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T value, String? comment});
}

/// @nodoc
class __$$_MetaValueCopyWithImpl<T, $Res>
    extends _$MetaValueCopyWithImpl<T, $Res, _$_MetaValue<T>>
    implements _$$_MetaValueCopyWith<T, $Res> {
  __$$_MetaValueCopyWithImpl(
      _$_MetaValue<T> _value, $Res Function(_$_MetaValue<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? comment = freezed,
  }) {
    return _then(_$_MetaValue<T>(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MetaValue<T> extends _MetaValue<T> {
  _$_MetaValue({required this.value, this.comment}) : super._();

  @override
  final T value;
  @override
  final String? comment;

  @override
  String toString() {
    return 'MetaValue<$T>(value: $value, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaValue<T> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(value), comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaValueCopyWith<T, _$_MetaValue<T>> get copyWith =>
      __$$_MetaValueCopyWithImpl<T, _$_MetaValue<T>>(this, _$identity);
}

abstract class _MetaValue<T> extends MetaValue<T> {
  factory _MetaValue({required final T value, final String? comment}) =
      _$_MetaValue<T>;
  _MetaValue._() : super._();

  @override
  T get value;
  @override
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$$_MetaValueCopyWith<T, _$_MetaValue<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Account {
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res, $Val extends Account>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$_AccountCopyWith(
          _$_Account value, $Res Function(_$_Account) then) =
      __$$_AccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_AccountCopyWithImpl<$Res>
    extends _$AccountCopyWithImpl<$Res, _$_Account>
    implements _$$_AccountCopyWith<$Res> {
  __$$_AccountCopyWithImpl(_$_Account _value, $Res Function(_$_Account) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_Account(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Account extends _Account {
  _$_Account({required this.name}) : super._();

  @override
  final String name;

  @override
  String toString() {
    return 'Account(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Account &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountCopyWith<_$_Account> get copyWith =>
      __$$_AccountCopyWithImpl<_$_Account>(this, _$identity);
}

abstract class _Account extends Account {
  factory _Account({required final String name}) = _$_Account;
  _Account._() : super._();

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_AccountCopyWith<_$_Account> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Transaction {
  DateTime get date => throw _privateConstructorUsedError;
  String get flag => throw _privateConstructorUsedError;
  String? get payee => throw _privateConstructorUsedError;
  String? get narration => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  List<String> get links => throw _privateConstructorUsedError;
  Map<String, MetaValue> get metadata => throw _privateConstructorUsedError;
  List<Posting> get postings => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {DateTime date,
      String flag,
      String? payee,
      String? narration,
      List<String> tags,
      List<String> links,
      Map<String, MetaValue> metadata,
      List<Posting> postings,
      String? comment});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? flag = null,
    Object? payee = freezed,
    Object? narration = freezed,
    Object? tags = null,
    Object? links = null,
    Object? metadata = null,
    Object? postings = null,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
      payee: freezed == payee
          ? _value.payee
          : payee // ignore: cast_nullable_to_non_nullable
              as String?,
      narration: freezed == narration
          ? _value.narration
          : narration // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<String>,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, MetaValue>,
      postings: null == postings
          ? _value.postings
          : postings // ignore: cast_nullable_to_non_nullable
              as List<Posting>,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$_TransactionCopyWith(
          _$_Transaction value, $Res Function(_$_Transaction) then) =
      __$$_TransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      String flag,
      String? payee,
      String? narration,
      List<String> tags,
      List<String> links,
      Map<String, MetaValue> metadata,
      List<Posting> postings,
      String? comment});
}

/// @nodoc
class __$$_TransactionCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$_Transaction>
    implements _$$_TransactionCopyWith<$Res> {
  __$$_TransactionCopyWithImpl(
      _$_Transaction _value, $Res Function(_$_Transaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? flag = null,
    Object? payee = freezed,
    Object? narration = freezed,
    Object? tags = null,
    Object? links = null,
    Object? metadata = null,
    Object? postings = null,
    Object? comment = freezed,
  }) {
    return _then(_$_Transaction(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
      payee: freezed == payee
          ? _value.payee
          : payee // ignore: cast_nullable_to_non_nullable
              as String?,
      narration: freezed == narration
          ? _value.narration
          : narration // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<String>,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, MetaValue>,
      postings: null == postings
          ? _value._postings
          : postings // ignore: cast_nullable_to_non_nullable
              as List<Posting>,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Transaction extends _Transaction {
  _$_Transaction(
      {required this.date,
      this.flag = '*',
      this.payee,
      this.narration,
      final List<String> tags = const [],
      final List<String> links = const [],
      final Map<String, MetaValue> metadata = const {},
      final List<Posting> postings = const [],
      this.comment})
      : _tags = tags,
        _links = links,
        _metadata = metadata,
        _postings = postings,
        super._();

  @override
  final DateTime date;
  @override
  @JsonKey()
  final String flag;
  @override
  final String? payee;
  @override
  final String? narration;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<String> _links;
  @override
  @JsonKey()
  List<String> get links {
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_links);
  }

  final Map<String, MetaValue> _metadata;
  @override
  @JsonKey()
  Map<String, MetaValue> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  final List<Posting> _postings;
  @override
  @JsonKey()
  List<Posting> get postings {
    if (_postings is EqualUnmodifiableListView) return _postings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_postings);
  }

  @override
  final String? comment;

  @override
  String toString() {
    return 'Transaction(date: $date, flag: $flag, payee: $payee, narration: $narration, tags: $tags, links: $links, metadata: $metadata, postings: $postings, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transaction &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.flag, flag) || other.flag == flag) &&
            (identical(other.payee, payee) || other.payee == payee) &&
            (identical(other.narration, narration) ||
                other.narration == narration) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            const DeepCollectionEquality().equals(other._postings, _postings) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      flag,
      payee,
      narration,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_links),
      const DeepCollectionEquality().hash(_metadata),
      const DeepCollectionEquality().hash(_postings),
      comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      __$$_TransactionCopyWithImpl<_$_Transaction>(this, _$identity);
}

abstract class _Transaction extends Transaction {
  factory _Transaction(
      {required final DateTime date,
      final String flag,
      final String? payee,
      final String? narration,
      final List<String> tags,
      final List<String> links,
      final Map<String, MetaValue> metadata,
      final List<Posting> postings,
      final String? comment}) = _$_Transaction;
  _Transaction._() : super._();

  @override
  DateTime get date;
  @override
  String get flag;
  @override
  String? get payee;
  @override
  String? get narration;
  @override
  List<String> get tags;
  @override
  List<String> get links;
  @override
  Map<String, MetaValue> get metadata;
  @override
  List<Posting> get postings;
  @override
  String? get comment;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Posting {
  String? get flag => throw _privateConstructorUsedError;
  Account get account => throw _privateConstructorUsedError;
  Position? get position => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  Map<String, MetaValue> get metadata => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostingCopyWith<Posting> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostingCopyWith<$Res> {
  factory $PostingCopyWith(Posting value, $Res Function(Posting) then) =
      _$PostingCopyWithImpl<$Res, Posting>;
  @useResult
  $Res call(
      {String? flag,
      Account account,
      Position? position,
      String? comment,
      Map<String, MetaValue> metadata});

  $AccountCopyWith<$Res> get account;
  $PositionCopyWith<$Res>? get position;
}

/// @nodoc
class _$PostingCopyWithImpl<$Res, $Val extends Posting>
    implements $PostingCopyWith<$Res> {
  _$PostingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flag = freezed,
    Object? account = null,
    Object? position = freezed,
    Object? comment = freezed,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      flag: freezed == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String?,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
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
  $PositionCopyWith<$Res>? get position {
    if (_value.position == null) {
      return null;
    }

    return $PositionCopyWith<$Res>(_value.position!, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PostingCopyWith<$Res> implements $PostingCopyWith<$Res> {
  factory _$$_PostingCopyWith(
          _$_Posting value, $Res Function(_$_Posting) then) =
      __$$_PostingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? flag,
      Account account,
      Position? position,
      String? comment,
      Map<String, MetaValue> metadata});

  @override
  $AccountCopyWith<$Res> get account;
  @override
  $PositionCopyWith<$Res>? get position;
}

/// @nodoc
class __$$_PostingCopyWithImpl<$Res>
    extends _$PostingCopyWithImpl<$Res, _$_Posting>
    implements _$$_PostingCopyWith<$Res> {
  __$$_PostingCopyWithImpl(_$_Posting _value, $Res Function(_$_Posting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flag = freezed,
    Object? account = null,
    Object? position = freezed,
    Object? comment = freezed,
    Object? metadata = null,
  }) {
    return _then(_$_Posting(
      flag: freezed == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String?,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
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

class _$_Posting extends _Posting {
  _$_Posting(
      {this.flag,
      required this.account,
      this.position,
      this.comment,
      final Map<String, MetaValue> metadata = const {}})
      : _metadata = metadata,
        super._();

  @override
  final String? flag;
  @override
  final Account account;
  @override
  final Position? position;
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
    return 'Posting(flag: $flag, account: $account, position: $position, comment: $comment, metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Posting &&
            (identical(other.flag, flag) || other.flag == flag) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flag, account, position, comment,
      const DeepCollectionEquality().hash(_metadata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostingCopyWith<_$_Posting> get copyWith =>
      __$$_PostingCopyWithImpl<_$_Posting>(this, _$identity);
}

abstract class _Posting extends Posting {
  factory _Posting(
      {final String? flag,
      required final Account account,
      final Position? position,
      final String? comment,
      final Map<String, MetaValue> metadata}) = _$_Posting;
  _Posting._() : super._();

  @override
  String? get flag;
  @override
  Account get account;
  @override
  Position? get position;
  @override
  String? get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$_PostingCopyWith<_$_Posting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Position {
  Money get unit => throw _privateConstructorUsedError; // amount + currency
  Cost? get cost => throw _privateConstructorUsedError; // {} or {{}}
  Money? get price =>
      throw _privateConstructorUsedError; // @@ -> used only to balance when no cost is defined
  Money? get perUnitPrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PositionCopyWith<Position> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionCopyWith<$Res> {
  factory $PositionCopyWith(Position value, $Res Function(Position) then) =
      _$PositionCopyWithImpl<$Res, Position>;
  @useResult
  $Res call({Money unit, Cost? cost, Money? price, Money? perUnitPrice});

  $CostCopyWith<$Res>? get cost;
}

/// @nodoc
class _$PositionCopyWithImpl<$Res, $Val extends Position>
    implements $PositionCopyWith<$Res> {
  _$PositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = null,
    Object? cost = freezed,
    Object? price = freezed,
    Object? perUnitPrice = freezed,
  }) {
    return _then(_value.copyWith(
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Money,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as Cost?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Money?,
      perUnitPrice: freezed == perUnitPrice
          ? _value.perUnitPrice
          : perUnitPrice // ignore: cast_nullable_to_non_nullable
              as Money?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CostCopyWith<$Res>? get cost {
    if (_value.cost == null) {
      return null;
    }

    return $CostCopyWith<$Res>(_value.cost!, (value) {
      return _then(_value.copyWith(cost: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PositionCopyWith<$Res> implements $PositionCopyWith<$Res> {
  factory _$$_PositionCopyWith(
          _$_Position value, $Res Function(_$_Position) then) =
      __$$_PositionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Money unit, Cost? cost, Money? price, Money? perUnitPrice});

  @override
  $CostCopyWith<$Res>? get cost;
}

/// @nodoc
class __$$_PositionCopyWithImpl<$Res>
    extends _$PositionCopyWithImpl<$Res, _$_Position>
    implements _$$_PositionCopyWith<$Res> {
  __$$_PositionCopyWithImpl(
      _$_Position _value, $Res Function(_$_Position) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = null,
    Object? cost = freezed,
    Object? price = freezed,
    Object? perUnitPrice = freezed,
  }) {
    return _then(_$_Position(
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Money,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as Cost?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Money?,
      perUnitPrice: freezed == perUnitPrice
          ? _value.perUnitPrice
          : perUnitPrice // ignore: cast_nullable_to_non_nullable
              as Money?,
    ));
  }
}

/// @nodoc

class _$_Position extends _Position {
  _$_Position({required this.unit, this.cost, this.price, this.perUnitPrice})
      : super._();

  @override
  final Money unit;
// amount + currency
  @override
  final Cost? cost;
// {} or {{}}
  @override
  final Money? price;
// @@ -> used only to balance when no cost is defined
  @override
  final Money? perUnitPrice;

  @override
  String toString() {
    return 'Position(unit: $unit, cost: $cost, price: $price, perUnitPrice: $perUnitPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Position &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.perUnitPrice, perUnitPrice) ||
                other.perUnitPrice == perUnitPrice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, unit, cost, price, perUnitPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PositionCopyWith<_$_Position> get copyWith =>
      __$$_PositionCopyWithImpl<_$_Position>(this, _$identity);
}

abstract class _Position extends Position {
  factory _Position(
      {required final Money unit,
      final Cost? cost,
      final Money? price,
      final Money? perUnitPrice}) = _$_Position;
  _Position._() : super._();

  @override
  Money get unit;
  @override // amount + currency
  Cost? get cost;
  @override // {} or {{}}
  Money? get price;
  @override // @@ -> used only to balance when no cost is defined
  Money? get perUnitPrice;
  @override
  @JsonKey(ignore: true)
  _$$_PositionCopyWith<_$_Position> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Cost {
  Money? get value => throw _privateConstructorUsedError; // amount + currency
  Money? get perUnitValue =>
      throw _privateConstructorUsedError; // amount + currency
  DateTime? get date => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CostCopyWith<Cost> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostCopyWith<$Res> {
  factory $CostCopyWith(Cost value, $Res Function(Cost) then) =
      _$CostCopyWithImpl<$Res, Cost>;
  @useResult
  $Res call({Money? value, Money? perUnitValue, DateTime? date, String? label});
}

/// @nodoc
class _$CostCopyWithImpl<$Res, $Val extends Cost>
    implements $CostCopyWith<$Res> {
  _$CostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? perUnitValue = freezed,
    Object? date = freezed,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Money?,
      perUnitValue: freezed == perUnitValue
          ? _value.perUnitValue
          : perUnitValue // ignore: cast_nullable_to_non_nullable
              as Money?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CostCopyWith<$Res> implements $CostCopyWith<$Res> {
  factory _$$_CostCopyWith(_$_Cost value, $Res Function(_$_Cost) then) =
      __$$_CostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Money? value, Money? perUnitValue, DateTime? date, String? label});
}

/// @nodoc
class __$$_CostCopyWithImpl<$Res> extends _$CostCopyWithImpl<$Res, _$_Cost>
    implements _$$_CostCopyWith<$Res> {
  __$$_CostCopyWithImpl(_$_Cost _value, $Res Function(_$_Cost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? perUnitValue = freezed,
    Object? date = freezed,
    Object? label = freezed,
  }) {
    return _then(_$_Cost(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Money?,
      perUnitValue: freezed == perUnitValue
          ? _value.perUnitValue
          : perUnitValue // ignore: cast_nullable_to_non_nullable
              as Money?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Cost extends _Cost {
  _$_Cost({this.value, this.perUnitValue, this.date, this.label}) : super._();

  @override
  final Money? value;
// amount + currency
  @override
  final Money? perUnitValue;
// amount + currency
  @override
  final DateTime? date;
  @override
  final String? label;

  @override
  String toString() {
    return 'Cost(value: $value, perUnitValue: $perUnitValue, date: $date, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cost &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.perUnitValue, perUnitValue) ||
                other.perUnitValue == perUnitValue) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, value, perUnitValue, date, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CostCopyWith<_$_Cost> get copyWith =>
      __$$_CostCopyWithImpl<_$_Cost>(this, _$identity);
}

abstract class _Cost extends Cost {
  factory _Cost(
      {final Money? value,
      final Money? perUnitValue,
      final DateTime? date,
      final String? label}) = _$_Cost;
  _Cost._() : super._();

  @override
  Money? get value;
  @override // amount + currency
  Money? get perUnitValue;
  @override // amount + currency
  DateTime? get date;
  @override
  String? get label;
  @override
  @JsonKey(ignore: true)
  _$$_CostCopyWith<_$_Cost> get copyWith => throw _privateConstructorUsedError;
}
