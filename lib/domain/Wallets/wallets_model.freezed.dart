// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallets_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Wallets _$WalletsFromJson(Map<String, dynamic> json) {
  return _Wallets.fromJson(json);
}

/// @nodoc
mixin _$Wallets {
  double get totalXP => throw _privateConstructorUsedError;
  double get totalPoint => throw _privateConstructorUsedError;
  List<Wallet> get wallets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletsCopyWith<Wallets> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletsCopyWith<$Res> {
  factory $WalletsCopyWith(Wallets value, $Res Function(Wallets) then) =
      _$WalletsCopyWithImpl<$Res, Wallets>;
  @useResult
  $Res call({double totalXP, double totalPoint, List<Wallet> wallets});
}

/// @nodoc
class _$WalletsCopyWithImpl<$Res, $Val extends Wallets>
    implements $WalletsCopyWith<$Res> {
  _$WalletsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalXP = null,
    Object? totalPoint = null,
    Object? wallets = null,
  }) {
    return _then(_value.copyWith(
      totalXP: null == totalXP
          ? _value.totalXP
          : totalXP // ignore: cast_nullable_to_non_nullable
              as double,
      totalPoint: null == totalPoint
          ? _value.totalPoint
          : totalPoint // ignore: cast_nullable_to_non_nullable
              as double,
      wallets: null == wallets
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<Wallet>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WalletsCopyWith<$Res> implements $WalletsCopyWith<$Res> {
  factory _$$_WalletsCopyWith(
          _$_Wallets value, $Res Function(_$_Wallets) then) =
      __$$_WalletsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double totalXP, double totalPoint, List<Wallet> wallets});
}

/// @nodoc
class __$$_WalletsCopyWithImpl<$Res>
    extends _$WalletsCopyWithImpl<$Res, _$_Wallets>
    implements _$$_WalletsCopyWith<$Res> {
  __$$_WalletsCopyWithImpl(_$_Wallets _value, $Res Function(_$_Wallets) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalXP = null,
    Object? totalPoint = null,
    Object? wallets = null,
  }) {
    return _then(_$_Wallets(
      totalXP: null == totalXP
          ? _value.totalXP
          : totalXP // ignore: cast_nullable_to_non_nullable
              as double,
      totalPoint: null == totalPoint
          ? _value.totalPoint
          : totalPoint // ignore: cast_nullable_to_non_nullable
              as double,
      wallets: null == wallets
          ? _value._wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<Wallet>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Wallets extends _Wallets {
  _$_Wallets(
      {required this.totalXP,
      required this.totalPoint,
      required final List<Wallet> wallets})
      : _wallets = wallets,
        super._();

  factory _$_Wallets.fromJson(Map<String, dynamic> json) =>
      _$$_WalletsFromJson(json);

  @override
  final double totalXP;
  @override
  final double totalPoint;
  final List<Wallet> _wallets;
  @override
  List<Wallet> get wallets {
    if (_wallets is EqualUnmodifiableListView) return _wallets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wallets);
  }

  @override
  String toString() {
    return 'Wallets(totalXP: $totalXP, totalPoint: $totalPoint, wallets: $wallets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Wallets &&
            (identical(other.totalXP, totalXP) || other.totalXP == totalXP) &&
            (identical(other.totalPoint, totalPoint) ||
                other.totalPoint == totalPoint) &&
            const DeepCollectionEquality().equals(other._wallets, _wallets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalXP, totalPoint,
      const DeepCollectionEquality().hash(_wallets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletsCopyWith<_$_Wallets> get copyWith =>
      __$$_WalletsCopyWithImpl<_$_Wallets>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletsToJson(
      this,
    );
  }
}

abstract class _Wallets extends Wallets {
  factory _Wallets(
      {required final double totalXP,
      required final double totalPoint,
      required final List<Wallet> wallets}) = _$_Wallets;
  _Wallets._() : super._();

  factory _Wallets.fromJson(Map<String, dynamic> json) = _$_Wallets.fromJson;

  @override
  double get totalXP;
  @override
  double get totalPoint;
  @override
  List<Wallet> get wallets;
  @override
  @JsonKey(ignore: true)
  _$$_WalletsCopyWith<_$_Wallets> get copyWith =>
      throw _privateConstructorUsedError;
}

Wallet _$WalletFromJson(Map<String, dynamic> json) {
  return _Wallet.fromJson(json);
}

/// @nodoc
mixin _$Wallet {
  String get walletId => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  WalletTokenEnum get walletToken => throw _privateConstructorUsedError;
  WalletTypeEnum get walletType => throw _privateConstructorUsedError;
  String? get walletTag => throw _privateConstructorUsedError;
  DateTime get expiredDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletCopyWith<Wallet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletCopyWith<$Res> {
  factory $WalletCopyWith(Wallet value, $Res Function(Wallet) then) =
      _$WalletCopyWithImpl<$Res, Wallet>;
  @useResult
  $Res call(
      {String walletId,
      double amount,
      WalletTokenEnum walletToken,
      WalletTypeEnum walletType,
      String? walletTag,
      DateTime expiredDate});
}

/// @nodoc
class _$WalletCopyWithImpl<$Res, $Val extends Wallet>
    implements $WalletCopyWith<$Res> {
  _$WalletCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletId = null,
    Object? amount = null,
    Object? walletToken = null,
    Object? walletType = null,
    Object? walletTag = freezed,
    Object? expiredDate = null,
  }) {
    return _then(_value.copyWith(
      walletId: null == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      walletToken: null == walletToken
          ? _value.walletToken
          : walletToken // ignore: cast_nullable_to_non_nullable
              as WalletTokenEnum,
      walletType: null == walletType
          ? _value.walletType
          : walletType // ignore: cast_nullable_to_non_nullable
              as WalletTypeEnum,
      walletTag: freezed == walletTag
          ? _value.walletTag
          : walletTag // ignore: cast_nullable_to_non_nullable
              as String?,
      expiredDate: null == expiredDate
          ? _value.expiredDate
          : expiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WalletCopyWith<$Res> implements $WalletCopyWith<$Res> {
  factory _$$_WalletCopyWith(_$_Wallet value, $Res Function(_$_Wallet) then) =
      __$$_WalletCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String walletId,
      double amount,
      WalletTokenEnum walletToken,
      WalletTypeEnum walletType,
      String? walletTag,
      DateTime expiredDate});
}

/// @nodoc
class __$$_WalletCopyWithImpl<$Res>
    extends _$WalletCopyWithImpl<$Res, _$_Wallet>
    implements _$$_WalletCopyWith<$Res> {
  __$$_WalletCopyWithImpl(_$_Wallet _value, $Res Function(_$_Wallet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletId = null,
    Object? amount = null,
    Object? walletToken = null,
    Object? walletType = null,
    Object? walletTag = freezed,
    Object? expiredDate = null,
  }) {
    return _then(_$_Wallet(
      walletId: null == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      walletToken: null == walletToken
          ? _value.walletToken
          : walletToken // ignore: cast_nullable_to_non_nullable
              as WalletTokenEnum,
      walletType: null == walletType
          ? _value.walletType
          : walletType // ignore: cast_nullable_to_non_nullable
              as WalletTypeEnum,
      walletTag: freezed == walletTag
          ? _value.walletTag
          : walletTag // ignore: cast_nullable_to_non_nullable
              as String?,
      expiredDate: null == expiredDate
          ? _value.expiredDate
          : expiredDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Wallet extends _Wallet {
  _$_Wallet(
      {required this.walletId,
      required this.amount,
      required this.walletToken,
      required this.walletType,
      this.walletTag,
      required this.expiredDate})
      : super._();

  factory _$_Wallet.fromJson(Map<String, dynamic> json) =>
      _$$_WalletFromJson(json);

  @override
  final String walletId;
  @override
  final double amount;
  @override
  final WalletTokenEnum walletToken;
  @override
  final WalletTypeEnum walletType;
  @override
  final String? walletTag;
  @override
  final DateTime expiredDate;

  @override
  String toString() {
    return 'Wallet(walletId: $walletId, amount: $amount, walletToken: $walletToken, walletType: $walletType, walletTag: $walletTag, expiredDate: $expiredDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Wallet &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.walletToken, walletToken) ||
                other.walletToken == walletToken) &&
            (identical(other.walletType, walletType) ||
                other.walletType == walletType) &&
            (identical(other.walletTag, walletTag) ||
                other.walletTag == walletTag) &&
            (identical(other.expiredDate, expiredDate) ||
                other.expiredDate == expiredDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, walletId, amount, walletToken,
      walletType, walletTag, expiredDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletCopyWith<_$_Wallet> get copyWith =>
      __$$_WalletCopyWithImpl<_$_Wallet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletToJson(
      this,
    );
  }
}

abstract class _Wallet extends Wallet {
  factory _Wallet(
      {required final String walletId,
      required final double amount,
      required final WalletTokenEnum walletToken,
      required final WalletTypeEnum walletType,
      final String? walletTag,
      required final DateTime expiredDate}) = _$_Wallet;
  _Wallet._() : super._();

  factory _Wallet.fromJson(Map<String, dynamic> json) = _$_Wallet.fromJson;

  @override
  String get walletId;
  @override
  double get amount;
  @override
  WalletTokenEnum get walletToken;
  @override
  WalletTypeEnum get walletType;
  @override
  String? get walletTag;
  @override
  DateTime get expiredDate;
  @override
  @JsonKey(ignore: true)
  _$$_WalletCopyWith<_$_Wallet> get copyWith =>
      throw _privateConstructorUsedError;
}
