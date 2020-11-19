// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MetaValueTearOff {
  const _$MetaValueTearOff();

// ignore: unused_element
  _MetaValue call({@required String value, String comment}) {
    return _MetaValue(
      value: value,
      comment: comment,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MetaValue = _$MetaValueTearOff();

/// @nodoc
mixin _$MetaValue {
  String get value;
  String get comment;

  $MetaValueCopyWith<MetaValue> get copyWith;
}

/// @nodoc
abstract class $MetaValueCopyWith<$Res> {
  factory $MetaValueCopyWith(MetaValue value, $Res Function(MetaValue) then) =
      _$MetaValueCopyWithImpl<$Res>;
  $Res call({String value, String comment});
}

/// @nodoc
class _$MetaValueCopyWithImpl<$Res> implements $MetaValueCopyWith<$Res> {
  _$MetaValueCopyWithImpl(this._value, this._then);

  final MetaValue _value;
  // ignore: unused_field
  final $Res Function(MetaValue) _then;

  @override
  $Res call({
    Object value = freezed,
    Object comment = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed ? _value.value : value as String,
      comment: comment == freezed ? _value.comment : comment as String,
    ));
  }
}

/// @nodoc
abstract class _$MetaValueCopyWith<$Res> implements $MetaValueCopyWith<$Res> {
  factory _$MetaValueCopyWith(
          _MetaValue value, $Res Function(_MetaValue) then) =
      __$MetaValueCopyWithImpl<$Res>;
  @override
  $Res call({String value, String comment});
}

/// @nodoc
class __$MetaValueCopyWithImpl<$Res> extends _$MetaValueCopyWithImpl<$Res>
    implements _$MetaValueCopyWith<$Res> {
  __$MetaValueCopyWithImpl(_MetaValue _value, $Res Function(_MetaValue) _then)
      : super(_value, (v) => _then(v as _MetaValue));

  @override
  _MetaValue get _value => super._value as _MetaValue;

  @override
  $Res call({
    Object value = freezed,
    Object comment = freezed,
  }) {
    return _then(_MetaValue(
      value: value == freezed ? _value.value : value as String,
      comment: comment == freezed ? _value.comment : comment as String,
    ));
  }
}

/// @nodoc
class _$_MetaValue implements _MetaValue {
  _$_MetaValue({@required this.value, this.comment}) : assert(value != null);

  @override
  final String value;
  @override
  final String comment;

  @override
  String toString() {
    return 'MetaValue(value: $value, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MetaValue &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(other.comment, comment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(comment);

  @override
  _$MetaValueCopyWith<_MetaValue> get copyWith =>
      __$MetaValueCopyWithImpl<_MetaValue>(this, _$identity);
}

abstract class _MetaValue implements MetaValue {
  factory _MetaValue({@required String value, String comment}) = _$_MetaValue;

  @override
  String get value;
  @override
  String get comment;
  @override
  _$MetaValueCopyWith<_MetaValue> get copyWith;
}

/// @nodoc
class _$AccountTearOff {
  const _$AccountTearOff();

// ignore: unused_element
  _Account call({@required String name}) {
    return _Account(
      name: name,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Account = _$AccountTearOff();

/// @nodoc
mixin _$Account {
  String get name;

  $AccountCopyWith<Account> get copyWith;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res> implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  final Account _value;
  // ignore: unused_field
  final $Res Function(Account) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$AccountCopyWith(_Account value, $Res Function(_Account) then) =
      __$AccountCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$AccountCopyWithImpl<$Res> extends _$AccountCopyWithImpl<$Res>
    implements _$AccountCopyWith<$Res> {
  __$AccountCopyWithImpl(_Account _value, $Res Function(_Account) _then)
      : super(_value, (v) => _then(v as _Account));

  @override
  _Account get _value => super._value as _Account;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_Account(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_Account implements _Account {
  _$_Account({@required this.name}) : assert(name != null);

  @override
  final String name;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Account &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$AccountCopyWith<_Account> get copyWith =>
      __$AccountCopyWithImpl<_Account>(this, _$identity);
}

abstract class _Account implements Account {
  factory _Account({@required String name}) = _$_Account;

  @override
  String get name;
  @override
  _$AccountCopyWith<_Account> get copyWith;
}

/// @nodoc
class _$CommodityDirectiveTearOff {
  const _$CommodityDirectiveTearOff();

// ignore: unused_element
  _CommodityDirective call(
      {@required DateTime date,
      @required String code,
      Map<String, MetaValue> metadata = const {},
      int precision_ = 2}) {
    return _CommodityDirective(
      date: date,
      code: code,
      metadata: metadata,
      precision_: precision_,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CommodityDirective = _$CommodityDirectiveTearOff();

/// @nodoc
mixin _$CommodityDirective {
  DateTime get date;
  String get code;
  Map<String, MetaValue> get metadata;
  int get precision_;

  $CommodityDirectiveCopyWith<CommodityDirective> get copyWith;
}

/// @nodoc
abstract class $CommodityDirectiveCopyWith<$Res> {
  factory $CommodityDirectiveCopyWith(
          CommodityDirective value, $Res Function(CommodityDirective) then) =
      _$CommodityDirectiveCopyWithImpl<$Res>;
  $Res call(
      {DateTime date,
      String code,
      Map<String, MetaValue> metadata,
      int precision_});
}

/// @nodoc
class _$CommodityDirectiveCopyWithImpl<$Res>
    implements $CommodityDirectiveCopyWith<$Res> {
  _$CommodityDirectiveCopyWithImpl(this._value, this._then);

  final CommodityDirective _value;
  // ignore: unused_field
  final $Res Function(CommodityDirective) _then;

  @override
  $Res call({
    Object date = freezed,
    Object code = freezed,
    Object metadata = freezed,
    Object precision_ = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as DateTime,
      code: code == freezed ? _value.code : code as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
      precision_: precision_ == freezed ? _value.precision_ : precision_ as int,
    ));
  }
}

/// @nodoc
abstract class _$CommodityDirectiveCopyWith<$Res>
    implements $CommodityDirectiveCopyWith<$Res> {
  factory _$CommodityDirectiveCopyWith(
          _CommodityDirective value, $Res Function(_CommodityDirective) then) =
      __$CommodityDirectiveCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime date,
      String code,
      Map<String, MetaValue> metadata,
      int precision_});
}

/// @nodoc
class __$CommodityDirectiveCopyWithImpl<$Res>
    extends _$CommodityDirectiveCopyWithImpl<$Res>
    implements _$CommodityDirectiveCopyWith<$Res> {
  __$CommodityDirectiveCopyWithImpl(
      _CommodityDirective _value, $Res Function(_CommodityDirective) _then)
      : super(_value, (v) => _then(v as _CommodityDirective));

  @override
  _CommodityDirective get _value => super._value as _CommodityDirective;

  @override
  $Res call({
    Object date = freezed,
    Object code = freezed,
    Object metadata = freezed,
    Object precision_ = freezed,
  }) {
    return _then(_CommodityDirective(
      date: date == freezed ? _value.date : date as DateTime,
      code: code == freezed ? _value.code : code as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
      precision_: precision_ == freezed ? _value.precision_ : precision_ as int,
    ));
  }
}

/// @nodoc
class _$_CommodityDirective implements _CommodityDirective {
  _$_CommodityDirective(
      {@required this.date,
      @required this.code,
      this.metadata = const {},
      this.precision_ = 2})
      : assert(date != null),
        assert(code != null),
        assert(metadata != null),
        assert(precision_ != null);

  @override
  final DateTime date;
  @override
  final String code;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, MetaValue> metadata;
  @JsonKey(defaultValue: 2)
  @override
  final int precision_;

  bool _didprecision = false;
  int _precision;

  @override
  int get precision {
    if (_didprecision == false) {
      _didprecision = true;
      _precision = metadata.containsKey('precision')
          ? int.tryParse(metadata['precision'].value)
          : precision_;
    }
    return _precision;
  }

  @override
  String toString() {
    return 'CommodityDirective(date: $date, code: $code, metadata: $metadata, precision_: $precision_, precision: $precision)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommodityDirective &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)) &&
            (identical(other.precision_, precision_) ||
                const DeepCollectionEquality()
                    .equals(other.precision_, precision_)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(metadata) ^
      const DeepCollectionEquality().hash(precision_);

  @override
  _$CommodityDirectiveCopyWith<_CommodityDirective> get copyWith =>
      __$CommodityDirectiveCopyWithImpl<_CommodityDirective>(this, _$identity);
}

abstract class _CommodityDirective implements CommodityDirective {
  factory _CommodityDirective(
      {@required DateTime date,
      @required String code,
      Map<String, MetaValue> metadata,
      int precision_}) = _$_CommodityDirective;

  @override
  DateTime get date;
  @override
  String get code;
  @override
  Map<String, MetaValue> get metadata;
  @override
  int get precision_;
  @override
  _$CommodityDirectiveCopyWith<_CommodityDirective> get copyWith;
}

/// @nodoc
class _$TransactionTearOff {
  const _$TransactionTearOff();

// ignore: unused_element
  _Transaction call(
      {@required DateTime date,
      String flag = '*',
      String payee,
      String narration,
      List<String> tags = const [],
      List<String> links = const [],
      Map<String, MetaValue> metadata = const {},
      List<Posting> postings = const [],
      String comment}) {
    return _Transaction(
      date: date,
      flag: flag,
      payee: payee,
      narration: narration,
      tags: tags,
      links: links,
      metadata: metadata,
      postings: postings,
      comment: comment,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Transaction = _$TransactionTearOff();

/// @nodoc
mixin _$Transaction {
  DateTime get date;
  String get flag;
  String get payee;
  String get narration;
  List<String> get tags;
  List<String> get links;
  Map<String, MetaValue> get metadata;
  List<Posting> get postings;
  String get comment;

  $TransactionCopyWith<Transaction> get copyWith;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res>;
  $Res call(
      {DateTime date,
      String flag,
      String payee,
      String narration,
      List<String> tags,
      List<String> links,
      Map<String, MetaValue> metadata,
      List<Posting> postings,
      String comment});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  final Transaction _value;
  // ignore: unused_field
  final $Res Function(Transaction) _then;

  @override
  $Res call({
    Object date = freezed,
    Object flag = freezed,
    Object payee = freezed,
    Object narration = freezed,
    Object tags = freezed,
    Object links = freezed,
    Object metadata = freezed,
    Object postings = freezed,
    Object comment = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed ? _value.date : date as DateTime,
      flag: flag == freezed ? _value.flag : flag as String,
      payee: payee == freezed ? _value.payee : payee as String,
      narration: narration == freezed ? _value.narration : narration as String,
      tags: tags == freezed ? _value.tags : tags as List<String>,
      links: links == freezed ? _value.links : links as List<String>,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
      postings:
          postings == freezed ? _value.postings : postings as List<Posting>,
      comment: comment == freezed ? _value.comment : comment as String,
    ));
  }
}

/// @nodoc
abstract class _$TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(
          _Transaction value, $Res Function(_Transaction) then) =
      __$TransactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime date,
      String flag,
      String payee,
      String narration,
      List<String> tags,
      List<String> links,
      Map<String, MetaValue> metadata,
      List<Posting> postings,
      String comment});
}

/// @nodoc
class __$TransactionCopyWithImpl<$Res> extends _$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(
      _Transaction _value, $Res Function(_Transaction) _then)
      : super(_value, (v) => _then(v as _Transaction));

  @override
  _Transaction get _value => super._value as _Transaction;

  @override
  $Res call({
    Object date = freezed,
    Object flag = freezed,
    Object payee = freezed,
    Object narration = freezed,
    Object tags = freezed,
    Object links = freezed,
    Object metadata = freezed,
    Object postings = freezed,
    Object comment = freezed,
  }) {
    return _then(_Transaction(
      date: date == freezed ? _value.date : date as DateTime,
      flag: flag == freezed ? _value.flag : flag as String,
      payee: payee == freezed ? _value.payee : payee as String,
      narration: narration == freezed ? _value.narration : narration as String,
      tags: tags == freezed ? _value.tags : tags as List<String>,
      links: links == freezed ? _value.links : links as List<String>,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
      postings:
          postings == freezed ? _value.postings : postings as List<Posting>,
      comment: comment == freezed ? _value.comment : comment as String,
    ));
  }
}

/// @nodoc
class _$_Transaction implements _Transaction {
  _$_Transaction(
      {@required this.date,
      this.flag = '*',
      this.payee,
      this.narration,
      this.tags = const [],
      this.links = const [],
      this.metadata = const {},
      this.postings = const [],
      this.comment})
      : assert(date != null),
        assert(flag != null),
        assert(tags != null),
        assert(links != null),
        assert(metadata != null),
        assert(postings != null);

  @override
  final DateTime date;
  @JsonKey(defaultValue: '*')
  @override
  final String flag;
  @override
  final String payee;
  @override
  final String narration;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> tags;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> links;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, MetaValue> metadata;
  @JsonKey(defaultValue: const [])
  @override
  final List<Posting> postings;
  @override
  final String comment;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Transaction &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.payee, payee) ||
                const DeepCollectionEquality().equals(other.payee, payee)) &&
            (identical(other.narration, narration) ||
                const DeepCollectionEquality()
                    .equals(other.narration, narration)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)) &&
            (identical(other.postings, postings) ||
                const DeepCollectionEquality()
                    .equals(other.postings, postings)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(other.comment, comment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(payee) ^
      const DeepCollectionEquality().hash(narration) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(links) ^
      const DeepCollectionEquality().hash(metadata) ^
      const DeepCollectionEquality().hash(postings) ^
      const DeepCollectionEquality().hash(comment);

  @override
  _$TransactionCopyWith<_Transaction> get copyWith =>
      __$TransactionCopyWithImpl<_Transaction>(this, _$identity);
}

abstract class _Transaction implements Transaction {
  factory _Transaction(
      {@required DateTime date,
      String flag,
      String payee,
      String narration,
      List<String> tags,
      List<String> links,
      Map<String, MetaValue> metadata,
      List<Posting> postings,
      String comment}) = _$_Transaction;

  @override
  DateTime get date;
  @override
  String get flag;
  @override
  String get payee;
  @override
  String get narration;
  @override
  List<String> get tags;
  @override
  List<String> get links;
  @override
  Map<String, MetaValue> get metadata;
  @override
  List<Posting> get postings;
  @override
  String get comment;
  @override
  _$TransactionCopyWith<_Transaction> get copyWith;
}

/// @nodoc
class _$PostingTearOff {
  const _$PostingTearOff();

// ignore: unused_element
  _Posting call(
      {String flag,
      @required Account account,
      Position position,
      Map<String, MetaValue> metadata = const {},
      String comment}) {
    return _Posting(
      flag: flag,
      account: account,
      position: position,
      metadata: metadata,
      comment: comment,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Posting = _$PostingTearOff();

/// @nodoc
mixin _$Posting {
  String get flag;
  Account get account;
  Position get position;
  Map<String, MetaValue> get metadata;
  String get comment;

  $PostingCopyWith<Posting> get copyWith;
}

/// @nodoc
abstract class $PostingCopyWith<$Res> {
  factory $PostingCopyWith(Posting value, $Res Function(Posting) then) =
      _$PostingCopyWithImpl<$Res>;
  $Res call(
      {String flag,
      Account account,
      Position position,
      Map<String, MetaValue> metadata,
      String comment});

  $AccountCopyWith<$Res> get account;
  $PositionCopyWith<$Res> get position;
}

/// @nodoc
class _$PostingCopyWithImpl<$Res> implements $PostingCopyWith<$Res> {
  _$PostingCopyWithImpl(this._value, this._then);

  final Posting _value;
  // ignore: unused_field
  final $Res Function(Posting) _then;

  @override
  $Res call({
    Object flag = freezed,
    Object account = freezed,
    Object position = freezed,
    Object metadata = freezed,
    Object comment = freezed,
  }) {
    return _then(_value.copyWith(
      flag: flag == freezed ? _value.flag : flag as String,
      account: account == freezed ? _value.account : account as Account,
      position: position == freezed ? _value.position : position as Position,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
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
  $PositionCopyWith<$Res> get position {
    if (_value.position == null) {
      return null;
    }
    return $PositionCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value));
    });
  }
}

/// @nodoc
abstract class _$PostingCopyWith<$Res> implements $PostingCopyWith<$Res> {
  factory _$PostingCopyWith(_Posting value, $Res Function(_Posting) then) =
      __$PostingCopyWithImpl<$Res>;
  @override
  $Res call(
      {String flag,
      Account account,
      Position position,
      Map<String, MetaValue> metadata,
      String comment});

  @override
  $AccountCopyWith<$Res> get account;
  @override
  $PositionCopyWith<$Res> get position;
}

/// @nodoc
class __$PostingCopyWithImpl<$Res> extends _$PostingCopyWithImpl<$Res>
    implements _$PostingCopyWith<$Res> {
  __$PostingCopyWithImpl(_Posting _value, $Res Function(_Posting) _then)
      : super(_value, (v) => _then(v as _Posting));

  @override
  _Posting get _value => super._value as _Posting;

  @override
  $Res call({
    Object flag = freezed,
    Object account = freezed,
    Object position = freezed,
    Object metadata = freezed,
    Object comment = freezed,
  }) {
    return _then(_Posting(
      flag: flag == freezed ? _value.flag : flag as String,
      account: account == freezed ? _value.account : account as Account,
      position: position == freezed ? _value.position : position as Position,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
      comment: comment == freezed ? _value.comment : comment as String,
    ));
  }
}

/// @nodoc
class _$_Posting implements _Posting {
  _$_Posting(
      {this.flag,
      @required this.account,
      this.position,
      this.metadata = const {},
      this.comment})
      : assert(account != null),
        assert(metadata != null);

  @override
  final String flag;
  @override
  final Account account;
  @override
  final Position position;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, MetaValue> metadata;
  @override
  final String comment;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Posting &&
            (identical(other.flag, flag) ||
                const DeepCollectionEquality().equals(other.flag, flag)) &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality()
                    .equals(other.metadata, metadata)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality().equals(other.comment, comment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(metadata) ^
      const DeepCollectionEquality().hash(comment);

  @override
  _$PostingCopyWith<_Posting> get copyWith =>
      __$PostingCopyWithImpl<_Posting>(this, _$identity);
}

abstract class _Posting implements Posting {
  factory _Posting(
      {String flag,
      @required Account account,
      Position position,
      Map<String, MetaValue> metadata,
      String comment}) = _$_Posting;

  @override
  String get flag;
  @override
  Account get account;
  @override
  Position get position;
  @override
  Map<String, MetaValue> get metadata;
  @override
  String get comment;
  @override
  _$PostingCopyWith<_Posting> get copyWith;
}

/// @nodoc
class _$PositionTearOff {
  const _$PositionTearOff();

// ignore: unused_element
  _Position call(
      {@required Money unit, Cost cost, Money price, Money perUnitPrice}) {
    return _Position(
      unit: unit,
      cost: cost,
      price: price,
      perUnitPrice: perUnitPrice,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Position = _$PositionTearOff();

/// @nodoc
mixin _$Position {
  Money get unit; // amount + currency
  Cost get cost; // {} or {{}}
  Money get price; // @@ -> used only to balance when no cost is defined
  Money get perUnitPrice;

  $PositionCopyWith<Position> get copyWith;
}

/// @nodoc
abstract class $PositionCopyWith<$Res> {
  factory $PositionCopyWith(Position value, $Res Function(Position) then) =
      _$PositionCopyWithImpl<$Res>;
  $Res call({Money unit, Cost cost, Money price, Money perUnitPrice});

  $CostCopyWith<$Res> get cost;
}

/// @nodoc
class _$PositionCopyWithImpl<$Res> implements $PositionCopyWith<$Res> {
  _$PositionCopyWithImpl(this._value, this._then);

  final Position _value;
  // ignore: unused_field
  final $Res Function(Position) _then;

  @override
  $Res call({
    Object unit = freezed,
    Object cost = freezed,
    Object price = freezed,
    Object perUnitPrice = freezed,
  }) {
    return _then(_value.copyWith(
      unit: unit == freezed ? _value.unit : unit as Money,
      cost: cost == freezed ? _value.cost : cost as Cost,
      price: price == freezed ? _value.price : price as Money,
      perUnitPrice:
          perUnitPrice == freezed ? _value.perUnitPrice : perUnitPrice as Money,
    ));
  }

  @override
  $CostCopyWith<$Res> get cost {
    if (_value.cost == null) {
      return null;
    }
    return $CostCopyWith<$Res>(_value.cost, (value) {
      return _then(_value.copyWith(cost: value));
    });
  }
}

/// @nodoc
abstract class _$PositionCopyWith<$Res> implements $PositionCopyWith<$Res> {
  factory _$PositionCopyWith(_Position value, $Res Function(_Position) then) =
      __$PositionCopyWithImpl<$Res>;
  @override
  $Res call({Money unit, Cost cost, Money price, Money perUnitPrice});

  @override
  $CostCopyWith<$Res> get cost;
}

/// @nodoc
class __$PositionCopyWithImpl<$Res> extends _$PositionCopyWithImpl<$Res>
    implements _$PositionCopyWith<$Res> {
  __$PositionCopyWithImpl(_Position _value, $Res Function(_Position) _then)
      : super(_value, (v) => _then(v as _Position));

  @override
  _Position get _value => super._value as _Position;

  @override
  $Res call({
    Object unit = freezed,
    Object cost = freezed,
    Object price = freezed,
    Object perUnitPrice = freezed,
  }) {
    return _then(_Position(
      unit: unit == freezed ? _value.unit : unit as Money,
      cost: cost == freezed ? _value.cost : cost as Cost,
      price: price == freezed ? _value.price : price as Money,
      perUnitPrice:
          perUnitPrice == freezed ? _value.perUnitPrice : perUnitPrice as Money,
    ));
  }
}

/// @nodoc
class _$_Position implements _Position {
  _$_Position({@required this.unit, this.cost, this.price, this.perUnitPrice})
      : assert(unit != null);

  @override
  final Money unit;
  @override // amount + currency
  final Cost cost;
  @override // {} or {{}}
  final Money price;
  @override // @@ -> used only to balance when no cost is defined
  final Money perUnitPrice;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Position &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)) &&
            (identical(other.cost, cost) ||
                const DeepCollectionEquality().equals(other.cost, cost)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.perUnitPrice, perUnitPrice) ||
                const DeepCollectionEquality()
                    .equals(other.perUnitPrice, perUnitPrice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(unit) ^
      const DeepCollectionEquality().hash(cost) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(perUnitPrice);

  @override
  _$PositionCopyWith<_Position> get copyWith =>
      __$PositionCopyWithImpl<_Position>(this, _$identity);
}

abstract class _Position implements Position {
  factory _Position(
      {@required Money unit,
      Cost cost,
      Money price,
      Money perUnitPrice}) = _$_Position;

  @override
  Money get unit;
  @override // amount + currency
  Cost get cost;
  @override // {} or {{}}
  Money get price;
  @override // @@ -> used only to balance when no cost is defined
  Money get perUnitPrice;
  @override
  _$PositionCopyWith<_Position> get copyWith;
}

/// @nodoc
class _$CostTearOff {
  const _$CostTearOff();

// ignore: unused_element
  _Cost call({Money value, Money perUnitValue, DateTime date, String label}) {
    return _Cost(
      value: value,
      perUnitValue: perUnitValue,
      date: date,
      label: label,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Cost = _$CostTearOff();

/// @nodoc
mixin _$Cost {
  Money get value; // amount + currency
  Money get perUnitValue;
  DateTime get date;
  String get label;

  $CostCopyWith<Cost> get copyWith;
}

/// @nodoc
abstract class $CostCopyWith<$Res> {
  factory $CostCopyWith(Cost value, $Res Function(Cost) then) =
      _$CostCopyWithImpl<$Res>;
  $Res call({Money value, Money perUnitValue, DateTime date, String label});
}

/// @nodoc
class _$CostCopyWithImpl<$Res> implements $CostCopyWith<$Res> {
  _$CostCopyWithImpl(this._value, this._then);

  final Cost _value;
  // ignore: unused_field
  final $Res Function(Cost) _then;

  @override
  $Res call({
    Object value = freezed,
    Object perUnitValue = freezed,
    Object date = freezed,
    Object label = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed ? _value.value : value as Money,
      perUnitValue:
          perUnitValue == freezed ? _value.perUnitValue : perUnitValue as Money,
      date: date == freezed ? _value.date : date as DateTime,
      label: label == freezed ? _value.label : label as String,
    ));
  }
}

/// @nodoc
abstract class _$CostCopyWith<$Res> implements $CostCopyWith<$Res> {
  factory _$CostCopyWith(_Cost value, $Res Function(_Cost) then) =
      __$CostCopyWithImpl<$Res>;
  @override
  $Res call({Money value, Money perUnitValue, DateTime date, String label});
}

/// @nodoc
class __$CostCopyWithImpl<$Res> extends _$CostCopyWithImpl<$Res>
    implements _$CostCopyWith<$Res> {
  __$CostCopyWithImpl(_Cost _value, $Res Function(_Cost) _then)
      : super(_value, (v) => _then(v as _Cost));

  @override
  _Cost get _value => super._value as _Cost;

  @override
  $Res call({
    Object value = freezed,
    Object perUnitValue = freezed,
    Object date = freezed,
    Object label = freezed,
  }) {
    return _then(_Cost(
      value: value == freezed ? _value.value : value as Money,
      perUnitValue:
          perUnitValue == freezed ? _value.perUnitValue : perUnitValue as Money,
      date: date == freezed ? _value.date : date as DateTime,
      label: label == freezed ? _value.label : label as String,
    ));
  }
}

/// @nodoc
class _$_Cost implements _Cost {
  _$_Cost({this.value, this.perUnitValue, this.date, this.label});

  @override
  final Money value;
  @override // amount + currency
  final Money perUnitValue;
  @override
  final DateTime date;
  @override
  final String label;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Cost &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.perUnitValue, perUnitValue) ||
                const DeepCollectionEquality()
                    .equals(other.perUnitValue, perUnitValue)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(perUnitValue) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(label);

  @override
  _$CostCopyWith<_Cost> get copyWith =>
      __$CostCopyWithImpl<_Cost>(this, _$identity);
}

abstract class _Cost implements Cost {
  factory _Cost(
      {Money value, Money perUnitValue, DateTime date, String label}) = _$_Cost;

  @override
  Money get value;
  @override // amount + currency
  Money get perUnitValue;
  @override
  DateTime get date;
  @override
  String get label;
  @override
  _$CostCopyWith<_Cost> get copyWith;
}
