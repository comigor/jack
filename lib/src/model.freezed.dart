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
  _MetaValue call({@required String value, @nullable String comment}) {
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
  @nullable
  String get comment;

  $MetaValueCopyWith<MetaValue> get copyWith;
}

/// @nodoc
abstract class $MetaValueCopyWith<$Res> {
  factory $MetaValueCopyWith(MetaValue value, $Res Function(MetaValue) then) =
      _$MetaValueCopyWithImpl<$Res>;
  $Res call({String value, @nullable String comment});
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
  $Res call({String value, @nullable String comment});
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
  _$_MetaValue({@required this.value, @nullable this.comment})
      : assert(value != null);

  @override
  final String value;
  @override
  @nullable
  final String comment;

  bool _didstringify = false;
  String _stringify;

  @override
  String get stringify {
    if (_didstringify == false) {
      _didstringify = true;
      _stringify = (() {
        final buffer = StringBuffer()..write('"$value"');

        if (comment != null && comment.isNotEmpty) {
          buffer.write(' ; $comment');
        }

        return buffer.toString();
      })();
    }
    return _stringify;
  }

  @override
  String toString() {
    return 'MetaValue(value: $value, comment: $comment, stringify: $stringify)';
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
  factory _MetaValue({@required String value, @nullable String comment}) =
      _$_MetaValue;

  @override
  String get value;
  @override
  @nullable
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

  bool _didstringify = false;
  String _stringify;

  @override
  String get stringify {
    if (_didstringify == false) {
      _didstringify = true;
      _stringify = name;
    }
    return _stringify;
  }

  @override
  String toString() {
    return 'Account(name: $name, stringify: $stringify)';
  }

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
class _$TransactionTearOff {
  const _$TransactionTearOff();

// ignore: unused_element
  _Transaction call(
      {@required DateTime date,
      String flag = '*',
      @nullable String payee,
      @nullable String narration,
      List<String> tags = const [],
      List<String> links = const [],
      Map<String, MetaValue> metadata = const {},
      List<Posting> postings = const [],
      @nullable String comment}) {
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
  @nullable
  String get payee;
  @nullable
  String get narration;
  List<String> get tags;
  List<String> get links;
  Map<String, MetaValue> get metadata;
  List<Posting> get postings;
  @nullable
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
      @nullable String payee,
      @nullable String narration,
      List<String> tags,
      List<String> links,
      Map<String, MetaValue> metadata,
      List<Posting> postings,
      @nullable String comment});
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
      @nullable String payee,
      @nullable String narration,
      List<String> tags,
      List<String> links,
      Map<String, MetaValue> metadata,
      List<Posting> postings,
      @nullable String comment});
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
      @nullable this.payee,
      @nullable this.narration,
      this.tags = const [],
      this.links = const [],
      this.metadata = const {},
      this.postings = const [],
      @nullable this.comment})
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
  @nullable
  final String payee;
  @override
  @nullable
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
  @nullable
  final String comment;

  bool _didstringify = false;
  String _stringify;

  @override
  String get stringify {
    if (_didstringify == false) {
      _didstringify = true;
      _stringify = (() {
        final buffer = StringBuffer()..write(headerToString);

        for (final meta in metadata.entries) {
          buffer.write('\n  ${meta.key}: ${meta.value.stringify}');
        }

        for (final posting in postings) {
          buffer.write('\n  ${posting.stringify.replaceAll('\n', '\n  ')}');
        }

        return buffer.toString();
      })();
    }
    return _stringify;
  }

  bool _didheaderToString = false;
  String _headerToString;

  @override
  String get headerToString {
    if (_didheaderToString == false) {
      _didheaderToString = true;
      _headerToString = (() {
        final buffer = StringBuffer()..write('${formatter.format(date)} $flag');

        if (payee != null && payee.isNotEmpty) {
          buffer.write(' "$payee" "${narration ?? ''}"');
        } else if (narration != null && narration.isNotEmpty) {
          buffer.write(' "$narration"');
        }

        for (final tag in tags.where((t) => t != null)) {
          buffer.write(' #$tag');
        }
        for (final link in links.where((l) => l != null)) {
          buffer.write(' ^$link');
        }

        if (comment != null && comment.isNotEmpty) {
          buffer.write(' ; $comment');
        }

        return buffer.toString();
      })();
    }
    return _headerToString;
  }

  bool _didcanBeBalanced = false;
  bool _canBeBalanced;

  @override
  bool get canBeBalanced {
    if (_didcanBeBalanced == false) {
      _didcanBeBalanced = true;
      _canBeBalanced =
          postings.where((posting) => posting.position == null).length == 1;
    }
    return _canBeBalanced;
  }

  bool _didsumsMap = false;
  Map<Currency, Money> _sumsMap;

  @override
  Map<Currency, Money> get sumsMap {
    if (_didsumsMap == false) {
      _didsumsMap = true;
      _sumsMap = (() {
        final sums = <Currency, Money>{};
        postings.map((p) => p.effectiveMoney).forEach((money) {
          if (money != null) {
            sums.update(
              money.currency,
              (oldMoney) => oldMoney += money,
              ifAbsent: () => money,
            );
          }
        });
        return sums;
      })();
    }
    return _sumsMap;
  }

  bool _didisBalanced = false;
  bool _isBalanced;

  @override
  bool get isBalanced {
    if (_didisBalanced == false) {
      _didisBalanced = true;
      _isBalanced = sumsMap.values.every((money) => money.isZero);
    }
    return _isBalanced;
  }

  bool _didbalanced = false;
  Transaction _balanced;

  @override
  Transaction get balanced {
    if (_didbalanced == false) {
      _didbalanced = true;
      _balanced = (() {
        if (isBalanced) return this;
        if (!canBeBalanced) return null;

        final calculatedUnit =
            -sumsMap.values.where((money) => !money.isZero).single;

        return copyWith(
          postings: postings.map((p) {
            if (p.position == null) {
              return p.copyWith(
                position: Position(unit: calculatedUnit),
              );
            }
            return p;
          }).toList(),
        );
      })();
    }
    return _balanced;
  }

  @override
  String toString() {
    return 'Transaction(date: $date, flag: $flag, payee: $payee, narration: $narration, tags: $tags, links: $links, metadata: $metadata, postings: $postings, comment: $comment, stringify: $stringify, headerToString: $headerToString, canBeBalanced: $canBeBalanced, sumsMap: $sumsMap, isBalanced: $isBalanced, balanced: $balanced)';
  }

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
      @nullable String payee,
      @nullable String narration,
      List<String> tags,
      List<String> links,
      Map<String, MetaValue> metadata,
      List<Posting> postings,
      @nullable String comment}) = _$_Transaction;

  @override
  DateTime get date;
  @override
  String get flag;
  @override
  @nullable
  String get payee;
  @override
  @nullable
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
  @nullable
  String get comment;
  @override
  _$TransactionCopyWith<_Transaction> get copyWith;
}

/// @nodoc
class _$PostingTearOff {
  const _$PostingTearOff();

// ignore: unused_element
  _Posting call(
      {@nullable String flag,
      @required Account account,
      @nullable Position position,
      @nullable String comment,
      Map<String, MetaValue> metadata = const {}}) {
    return _Posting(
      flag: flag,
      account: account,
      position: position,
      comment: comment,
      metadata: metadata,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Posting = _$PostingTearOff();

/// @nodoc
mixin _$Posting {
  @nullable
  String get flag;
  Account get account;
  @nullable
  Position get position;
  @nullable
  String get comment;
  Map<String, MetaValue> get metadata;

  $PostingCopyWith<Posting> get copyWith;
}

/// @nodoc
abstract class $PostingCopyWith<$Res> {
  factory $PostingCopyWith(Posting value, $Res Function(Posting) then) =
      _$PostingCopyWithImpl<$Res>;
  $Res call(
      {@nullable String flag,
      Account account,
      @nullable Position position,
      @nullable String comment,
      Map<String, MetaValue> metadata});

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
    Object comment = freezed,
    Object metadata = freezed,
  }) {
    return _then(_value.copyWith(
      flag: flag == freezed ? _value.flag : flag as String,
      account: account == freezed ? _value.account : account as Account,
      position: position == freezed ? _value.position : position as Position,
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
      {@nullable String flag,
      Account account,
      @nullable Position position,
      @nullable String comment,
      Map<String, MetaValue> metadata});

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
    Object comment = freezed,
    Object metadata = freezed,
  }) {
    return _then(_Posting(
      flag: flag == freezed ? _value.flag : flag as String,
      account: account == freezed ? _value.account : account as Account,
      position: position == freezed ? _value.position : position as Position,
      comment: comment == freezed ? _value.comment : comment as String,
      metadata: metadata == freezed
          ? _value.metadata
          : metadata as Map<String, MetaValue>,
    ));
  }
}

/// @nodoc
class _$_Posting implements _Posting {
  _$_Posting(
      {@nullable this.flag,
      @required this.account,
      @nullable this.position,
      @nullable this.comment,
      this.metadata = const {}})
      : assert(account != null),
        assert(metadata != null);

  @override
  @nullable
  final String flag;
  @override
  final Account account;
  @override
  @nullable
  final Position position;
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
        final buffer = StringBuffer();

        if (flag != null) {
          buffer.write('$flag ');
        }

        buffer.write(account.stringify);

        if (position != null) {
          buffer.write(' ${position.stringify}');
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

  bool _dideffectiveMoney = false;
  Money _effectiveMoney;

  @override
  Money get effectiveMoney {
    if (_dideffectiveMoney == false) {
      _dideffectiveMoney = true;
      _effectiveMoney = (() {
        if (position == null) return null;

        final unit = position.unit;
        final unitDouble = unit.minorUnits / unit.currency.minorDigitsFactor;

        if (position.cost?.value != null) {
          return position.cost.value;
        } else if (position.cost?.perUnitValue != null) {
          return position.cost.perUnitValue * unitDouble;
        } else if (position.price != null) {
          return position.price;
        } else if (position.perUnitPrice != null) {
          return position.perUnitPrice * unitDouble;
        }

        return position.unit;
      })();
    }
    return _effectiveMoney;
  }

  @override
  String toString() {
    return 'Posting(flag: $flag, account: $account, position: $position, comment: $comment, metadata: $metadata, stringify: $stringify, effectiveMoney: $effectiveMoney)';
  }

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
      const DeepCollectionEquality().hash(flag) ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(metadata);

  @override
  _$PostingCopyWith<_Posting> get copyWith =>
      __$PostingCopyWithImpl<_Posting>(this, _$identity);
}

abstract class _Posting implements Posting {
  factory _Posting(
      {@nullable String flag,
      @required Account account,
      @nullable Position position,
      @nullable String comment,
      Map<String, MetaValue> metadata}) = _$_Posting;

  @override
  @nullable
  String get flag;
  @override
  Account get account;
  @override
  @nullable
  Position get position;
  @override
  @nullable
  String get comment;
  @override
  Map<String, MetaValue> get metadata;
  @override
  _$PostingCopyWith<_Posting> get copyWith;
}

/// @nodoc
class _$PositionTearOff {
  const _$PositionTearOff();

// ignore: unused_element
  _Position call(
      {@required Money unit,
      @nullable Cost cost,
      @nullable Money price,
      @nullable Money perUnitPrice}) {
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
  @nullable
  Cost get cost; // {} or {{}}
  @nullable
  Money get price; // @@ -> used only to balance when no cost is defined
  @nullable
  Money get perUnitPrice;

  $PositionCopyWith<Position> get copyWith;
}

/// @nodoc
abstract class $PositionCopyWith<$Res> {
  factory $PositionCopyWith(Position value, $Res Function(Position) then) =
      _$PositionCopyWithImpl<$Res>;
  $Res call(
      {Money unit,
      @nullable Cost cost,
      @nullable Money price,
      @nullable Money perUnitPrice});

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
  $Res call(
      {Money unit,
      @nullable Cost cost,
      @nullable Money price,
      @nullable Money perUnitPrice});

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
  _$_Position(
      {@required this.unit,
      @nullable this.cost,
      @nullable this.price,
      @nullable this.perUnitPrice})
      : assert(unit != null);

  @override
  final Money unit;
  @override // amount + currency
  @nullable
  final Cost cost;
  @override // {} or {{}}
  @nullable
  final Money price;
  @override // @@ -> used only to balance when no cost is defined
  @nullable
  final Money perUnitPrice;

  bool _didstringify = false;
  String _stringify;

  @override
  String get stringify {
    if (_didstringify == false) {
      _didstringify = true;
      _stringify = (() {
        final buffer = StringBuffer()..write(unit);

        if (cost != null) {
          buffer.write(' ${cost.stringify}');
        }

        if ((price ?? perUnitPrice) != null) {
          final isAbsolutePrice = price != null;
          buffer.write(
              ' ${isAbsolutePrice ? '@@' : '@'} ${price ?? perUnitPrice}');
        }

        return buffer.toString();
      })();
    }
    return _stringify;
  }

  @override
  String toString() {
    return 'Position(unit: $unit, cost: $cost, price: $price, perUnitPrice: $perUnitPrice, stringify: $stringify)';
  }

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
      @nullable Cost cost,
      @nullable Money price,
      @nullable Money perUnitPrice}) = _$_Position;

  @override
  Money get unit;
  @override // amount + currency
  @nullable
  Cost get cost;
  @override // {} or {{}}
  @nullable
  Money get price;
  @override // @@ -> used only to balance when no cost is defined
  @nullable
  Money get perUnitPrice;
  @override
  _$PositionCopyWith<_Position> get copyWith;
}

/// @nodoc
class _$CostTearOff {
  const _$CostTearOff();

// ignore: unused_element
  _Cost call(
      {@nullable Money value,
      @nullable Money perUnitValue,
      @nullable DateTime date,
      @nullable String label}) {
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
  @nullable
  Money get value; // amount + currency
  @nullable
  Money get perUnitValue; // amount + currency
  @nullable
  DateTime get date;
  @nullable
  String get label;

  $CostCopyWith<Cost> get copyWith;
}

/// @nodoc
abstract class $CostCopyWith<$Res> {
  factory $CostCopyWith(Cost value, $Res Function(Cost) then) =
      _$CostCopyWithImpl<$Res>;
  $Res call(
      {@nullable Money value,
      @nullable Money perUnitValue,
      @nullable DateTime date,
      @nullable String label});
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
  $Res call(
      {@nullable Money value,
      @nullable Money perUnitValue,
      @nullable DateTime date,
      @nullable String label});
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
  _$_Cost(
      {@nullable this.value,
      @nullable this.perUnitValue,
      @nullable this.date,
      @nullable this.label});

  @override
  @nullable
  final Money value;
  @override // amount + currency
  @nullable
  final Money perUnitValue;
  @override // amount + currency
  @nullable
  final DateTime date;
  @override
  @nullable
  final String label;

  bool _didstringify = false;
  String _stringify;

  @override
  String get stringify {
    if (_didstringify == false) {
      _didstringify = true;
      _stringify = (() {
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
      })();
    }
    return _stringify;
  }

  @override
  String toString() {
    return 'Cost(value: $value, perUnitValue: $perUnitValue, date: $date, label: $label, stringify: $stringify)';
  }

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
      {@nullable Money value,
      @nullable Money perUnitValue,
      @nullable DateTime date,
      @nullable String label}) = _$_Cost;

  @override
  @nullable
  Money get value;
  @override // amount + currency
  @nullable
  Money get perUnitValue;
  @override // amount + currency
  @nullable
  DateTime get date;
  @override
  @nullable
  String get label;
  @override
  _$CostCopyWith<_Cost> get copyWith;
}
