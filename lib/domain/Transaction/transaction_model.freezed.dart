// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  String get transactionId => throw _privateConstructorUsedError;
  String get fromWalletId => throw _privateConstructorUsedError;
  String get toWalletId => throw _privateConstructorUsedError;
  TransactionTypeEnum get transactionType => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  WalletTokenEnum get token => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  double get amountLeft => throw _privateConstructorUsedError;
  bool get isReceived => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
      {String transactionId,
      String fromWalletId,
      String toWalletId,
      TransactionTypeEnum transactionType,
      String? note,
      WalletTokenEnum token,
      double amount,
      double amountLeft,
      bool isReceived,
      DateTime createdAt});
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
    Object? transactionId = null,
    Object? fromWalletId = null,
    Object? toWalletId = null,
    Object? transactionType = null,
    Object? note = freezed,
    Object? token = null,
    Object? amount = null,
    Object? amountLeft = null,
    Object? isReceived = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      fromWalletId: null == fromWalletId
          ? _value.fromWalletId
          : fromWalletId // ignore: cast_nullable_to_non_nullable
              as String,
      toWalletId: null == toWalletId
          ? _value.toWalletId
          : toWalletId // ignore: cast_nullable_to_non_nullable
              as String,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionTypeEnum,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as WalletTokenEnum,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      amountLeft: null == amountLeft
          ? _value.amountLeft
          : amountLeft // ignore: cast_nullable_to_non_nullable
              as double,
      isReceived: null == isReceived
          ? _value.isReceived
          : isReceived // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      {String transactionId,
      String fromWalletId,
      String toWalletId,
      TransactionTypeEnum transactionType,
      String? note,
      WalletTokenEnum token,
      double amount,
      double amountLeft,
      bool isReceived,
      DateTime createdAt});
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
    Object? transactionId = null,
    Object? fromWalletId = null,
    Object? toWalletId = null,
    Object? transactionType = null,
    Object? note = freezed,
    Object? token = null,
    Object? amount = null,
    Object? amountLeft = null,
    Object? isReceived = null,
    Object? createdAt = null,
  }) {
    return _then(_$_Transaction(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      fromWalletId: null == fromWalletId
          ? _value.fromWalletId
          : fromWalletId // ignore: cast_nullable_to_non_nullable
              as String,
      toWalletId: null == toWalletId
          ? _value.toWalletId
          : toWalletId // ignore: cast_nullable_to_non_nullable
              as String,
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionTypeEnum,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as WalletTokenEnum,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      amountLeft: null == amountLeft
          ? _value.amountLeft
          : amountLeft // ignore: cast_nullable_to_non_nullable
              as double,
      isReceived: null == isReceived
          ? _value.isReceived
          : isReceived // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transaction extends _Transaction {
  _$_Transaction(
      {required this.transactionId,
      required this.fromWalletId,
      required this.toWalletId,
      required this.transactionType,
      this.note,
      required this.token,
      required this.amount,
      required this.amountLeft,
      required this.isReceived,
      required this.createdAt})
      : super._();

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionFromJson(json);

  @override
  final String transactionId;
  @override
  final String fromWalletId;
  @override
  final String toWalletId;
  @override
  final TransactionTypeEnum transactionType;
  @override
  final String? note;
  @override
  final WalletTokenEnum token;
  @override
  final double amount;
  @override
  final double amountLeft;
  @override
  final bool isReceived;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Transaction(transactionId: $transactionId, fromWalletId: $fromWalletId, toWalletId: $toWalletId, transactionType: $transactionType, note: $note, token: $token, amount: $amount, amountLeft: $amountLeft, isReceived: $isReceived, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transaction &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.fromWalletId, fromWalletId) ||
                other.fromWalletId == fromWalletId) &&
            (identical(other.toWalletId, toWalletId) ||
                other.toWalletId == toWalletId) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.amountLeft, amountLeft) ||
                other.amountLeft == amountLeft) &&
            (identical(other.isReceived, isReceived) ||
                other.isReceived == isReceived) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      transactionId,
      fromWalletId,
      toWalletId,
      transactionType,
      note,
      token,
      amount,
      amountLeft,
      isReceived,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      __$$_TransactionCopyWithImpl<_$_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionToJson(
      this,
    );
  }
}

abstract class _Transaction extends Transaction {
  factory _Transaction(
      {required final String transactionId,
      required final String fromWalletId,
      required final String toWalletId,
      required final TransactionTypeEnum transactionType,
      final String? note,
      required final WalletTokenEnum token,
      required final double amount,
      required final double amountLeft,
      required final bool isReceived,
      required final DateTime createdAt}) = _$_Transaction;
  _Transaction._() : super._();

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  String get transactionId;
  @override
  String get fromWalletId;
  @override
  String get toWalletId;
  @override
  TransactionTypeEnum get transactionType;
  @override
  String? get note;
  @override
  WalletTokenEnum get token;
  @override
  double get amount;
  @override
  double get amountLeft;
  @override
  bool get isReceived;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}
