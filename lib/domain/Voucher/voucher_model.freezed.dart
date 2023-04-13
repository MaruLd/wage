// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voucher_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Voucher _$VoucherFromJson(Map<String, dynamic> json) {
  return _Voucher.fromJson(json);
}

/// @nodoc
mixin _$Voucher {
  String get voucherId => throw _privateConstructorUsedError;
  String? get voucherName => throw _privateConstructorUsedError;
  String? get voucherDescription => throw _privateConstructorUsedError;
  double get voucherCost => throw _privateConstructorUsedError;
  int get voucherAmount => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoucherCopyWith<Voucher> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherCopyWith<$Res> {
  factory $VoucherCopyWith(Voucher value, $Res Function(Voucher) then) =
      _$VoucherCopyWithImpl<$Res, Voucher>;
  @useResult
  $Res call(
      {String voucherId,
      String? voucherName,
      String? voucherDescription,
      double voucherCost,
      int voucherAmount,
      String? imageUrl,
      DateTime createdAt});
}

/// @nodoc
class _$VoucherCopyWithImpl<$Res, $Val extends Voucher>
    implements $VoucherCopyWith<$Res> {
  _$VoucherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voucherId = null,
    Object? voucherName = freezed,
    Object? voucherDescription = freezed,
    Object? voucherCost = null,
    Object? voucherAmount = null,
    Object? imageUrl = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      voucherId: null == voucherId
          ? _value.voucherId
          : voucherId // ignore: cast_nullable_to_non_nullable
              as String,
      voucherName: freezed == voucherName
          ? _value.voucherName
          : voucherName // ignore: cast_nullable_to_non_nullable
              as String?,
      voucherDescription: freezed == voucherDescription
          ? _value.voucherDescription
          : voucherDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      voucherCost: null == voucherCost
          ? _value.voucherCost
          : voucherCost // ignore: cast_nullable_to_non_nullable
              as double,
      voucherAmount: null == voucherAmount
          ? _value.voucherAmount
          : voucherAmount // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VoucherCopyWith<$Res> implements $VoucherCopyWith<$Res> {
  factory _$$_VoucherCopyWith(
          _$_Voucher value, $Res Function(_$_Voucher) then) =
      __$$_VoucherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String voucherId,
      String? voucherName,
      String? voucherDescription,
      double voucherCost,
      int voucherAmount,
      String? imageUrl,
      DateTime createdAt});
}

/// @nodoc
class __$$_VoucherCopyWithImpl<$Res>
    extends _$VoucherCopyWithImpl<$Res, _$_Voucher>
    implements _$$_VoucherCopyWith<$Res> {
  __$$_VoucherCopyWithImpl(_$_Voucher _value, $Res Function(_$_Voucher) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voucherId = null,
    Object? voucherName = freezed,
    Object? voucherDescription = freezed,
    Object? voucherCost = null,
    Object? voucherAmount = null,
    Object? imageUrl = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$_Voucher(
      voucherId: null == voucherId
          ? _value.voucherId
          : voucherId // ignore: cast_nullable_to_non_nullable
              as String,
      voucherName: freezed == voucherName
          ? _value.voucherName
          : voucherName // ignore: cast_nullable_to_non_nullable
              as String?,
      voucherDescription: freezed == voucherDescription
          ? _value.voucherDescription
          : voucherDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      voucherCost: null == voucherCost
          ? _value.voucherCost
          : voucherCost // ignore: cast_nullable_to_non_nullable
              as double,
      voucherAmount: null == voucherAmount
          ? _value.voucherAmount
          : voucherAmount // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Voucher extends _Voucher {
  _$_Voucher(
      {required this.voucherId,
      this.voucherName,
      this.voucherDescription,
      required this.voucherCost,
      required this.voucherAmount,
      this.imageUrl,
      required this.createdAt})
      : super._();

  factory _$_Voucher.fromJson(Map<String, dynamic> json) =>
      _$$_VoucherFromJson(json);

  @override
  final String voucherId;
  @override
  final String? voucherName;
  @override
  final String? voucherDescription;
  @override
  final double voucherCost;
  @override
  final int voucherAmount;
  @override
  final String? imageUrl;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Voucher(voucherId: $voucherId, voucherName: $voucherName, voucherDescription: $voucherDescription, voucherCost: $voucherCost, voucherAmount: $voucherAmount, imageUrl: $imageUrl, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Voucher &&
            (identical(other.voucherId, voucherId) ||
                other.voucherId == voucherId) &&
            (identical(other.voucherName, voucherName) ||
                other.voucherName == voucherName) &&
            (identical(other.voucherDescription, voucherDescription) ||
                other.voucherDescription == voucherDescription) &&
            (identical(other.voucherCost, voucherCost) ||
                other.voucherCost == voucherCost) &&
            (identical(other.voucherAmount, voucherAmount) ||
                other.voucherAmount == voucherAmount) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, voucherId, voucherName,
      voucherDescription, voucherCost, voucherAmount, imageUrl, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VoucherCopyWith<_$_Voucher> get copyWith =>
      __$$_VoucherCopyWithImpl<_$_Voucher>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VoucherToJson(
      this,
    );
  }
}

abstract class _Voucher extends Voucher {
  factory _Voucher(
      {required final String voucherId,
      final String? voucherName,
      final String? voucherDescription,
      required final double voucherCost,
      required final int voucherAmount,
      final String? imageUrl,
      required final DateTime createdAt}) = _$_Voucher;
  _Voucher._() : super._();

  factory _Voucher.fromJson(Map<String, dynamic> json) = _$_Voucher.fromJson;

  @override
  String get voucherId;
  @override
  String? get voucherName;
  @override
  String? get voucherDescription;
  @override
  double get voucherCost;
  @override
  int get voucherAmount;
  @override
  String? get imageUrl;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_VoucherCopyWith<_$_Voucher> get copyWith =>
      throw _privateConstructorUsedError;
}

MemberVoucher _$MemberVoucherFromJson(Map<String, dynamic> json) {
  return _MemberVoucher.fromJson(json);
}

/// @nodoc
mixin _$MemberVoucher {
  String get memberVoucherId => throw _privateConstructorUsedError;
  Voucher get voucher => throw _privateConstructorUsedError;
  MemberVoucherStatusEnum get status => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get expiredAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberVoucherCopyWith<MemberVoucher> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberVoucherCopyWith<$Res> {
  factory $MemberVoucherCopyWith(
          MemberVoucher value, $Res Function(MemberVoucher) then) =
      _$MemberVoucherCopyWithImpl<$Res, MemberVoucher>;
  @useResult
  $Res call(
      {String memberVoucherId,
      Voucher voucher,
      MemberVoucherStatusEnum status,
      String? code,
      DateTime createdAt,
      DateTime? expiredAt});

  $VoucherCopyWith<$Res> get voucher;
}

/// @nodoc
class _$MemberVoucherCopyWithImpl<$Res, $Val extends MemberVoucher>
    implements $MemberVoucherCopyWith<$Res> {
  _$MemberVoucherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberVoucherId = null,
    Object? voucher = null,
    Object? status = null,
    Object? code = freezed,
    Object? createdAt = null,
    Object? expiredAt = freezed,
  }) {
    return _then(_value.copyWith(
      memberVoucherId: null == memberVoucherId
          ? _value.memberVoucherId
          : memberVoucherId // ignore: cast_nullable_to_non_nullable
              as String,
      voucher: null == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as Voucher,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MemberVoucherStatusEnum,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VoucherCopyWith<$Res> get voucher {
    return $VoucherCopyWith<$Res>(_value.voucher, (value) {
      return _then(_value.copyWith(voucher: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MemberVoucherCopyWith<$Res>
    implements $MemberVoucherCopyWith<$Res> {
  factory _$$_MemberVoucherCopyWith(
          _$_MemberVoucher value, $Res Function(_$_MemberVoucher) then) =
      __$$_MemberVoucherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String memberVoucherId,
      Voucher voucher,
      MemberVoucherStatusEnum status,
      String? code,
      DateTime createdAt,
      DateTime? expiredAt});

  @override
  $VoucherCopyWith<$Res> get voucher;
}

/// @nodoc
class __$$_MemberVoucherCopyWithImpl<$Res>
    extends _$MemberVoucherCopyWithImpl<$Res, _$_MemberVoucher>
    implements _$$_MemberVoucherCopyWith<$Res> {
  __$$_MemberVoucherCopyWithImpl(
      _$_MemberVoucher _value, $Res Function(_$_MemberVoucher) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberVoucherId = null,
    Object? voucher = null,
    Object? status = null,
    Object? code = freezed,
    Object? createdAt = null,
    Object? expiredAt = freezed,
  }) {
    return _then(_$_MemberVoucher(
      memberVoucherId: null == memberVoucherId
          ? _value.memberVoucherId
          : memberVoucherId // ignore: cast_nullable_to_non_nullable
              as String,
      voucher: null == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as Voucher,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MemberVoucherStatusEnum,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemberVoucher extends _MemberVoucher {
  _$_MemberVoucher(
      {required this.memberVoucherId,
      required this.voucher,
      required this.status,
      this.code,
      required this.createdAt,
      this.expiredAt})
      : super._();

  factory _$_MemberVoucher.fromJson(Map<String, dynamic> json) =>
      _$$_MemberVoucherFromJson(json);

  @override
  final String memberVoucherId;
  @override
  final Voucher voucher;
  @override
  final MemberVoucherStatusEnum status;
  @override
  final String? code;
  @override
  final DateTime createdAt;
  @override
  final DateTime? expiredAt;

  @override
  String toString() {
    return 'MemberVoucher(memberVoucherId: $memberVoucherId, voucher: $voucher, status: $status, code: $code, createdAt: $createdAt, expiredAt: $expiredAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberVoucher &&
            (identical(other.memberVoucherId, memberVoucherId) ||
                other.memberVoucherId == memberVoucherId) &&
            (identical(other.voucher, voucher) || other.voucher == voucher) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiredAt, expiredAt) ||
                other.expiredAt == expiredAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, memberVoucherId, voucher, status,
      code, createdAt, expiredAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberVoucherCopyWith<_$_MemberVoucher> get copyWith =>
      __$$_MemberVoucherCopyWithImpl<_$_MemberVoucher>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberVoucherToJson(
      this,
    );
  }
}

abstract class _MemberVoucher extends MemberVoucher {
  factory _MemberVoucher(
      {required final String memberVoucherId,
      required final Voucher voucher,
      required final MemberVoucherStatusEnum status,
      final String? code,
      required final DateTime createdAt,
      final DateTime? expiredAt}) = _$_MemberVoucher;
  _MemberVoucher._() : super._();

  factory _MemberVoucher.fromJson(Map<String, dynamic> json) =
      _$_MemberVoucher.fromJson;

  @override
  String get memberVoucherId;
  @override
  Voucher get voucher;
  @override
  MemberVoucherStatusEnum get status;
  @override
  String? get code;
  @override
  DateTime get createdAt;
  @override
  DateTime? get expiredAt;
  @override
  @JsonKey(ignore: true)
  _$$_MemberVoucherCopyWith<_$_MemberVoucher> get copyWith =>
      throw _privateConstructorUsedError;
}
