// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Voucher _$$_VoucherFromJson(Map<String, dynamic> json) => _$_Voucher(
      voucherId: json['voucherId'] as String,
      voucherName: json['voucherName'] as String?,
      voucherDescription: json['voucherDescription'] as String?,
      voucherCost: json['voucherCost'] as int,
      voucherAmount: json['voucherAmount'] as int,
      imageUrl: json['imageUrl'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_VoucherToJson(_$_Voucher instance) =>
    <String, dynamic>{
      'voucherId': instance.voucherId,
      'voucherName': instance.voucherName,
      'voucherDescription': instance.voucherDescription,
      'voucherCost': instance.voucherCost,
      'voucherAmount': instance.voucherAmount,
      'imageUrl': instance.imageUrl,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$_MemberVoucher _$$_MemberVoucherFromJson(Map<String, dynamic> json) =>
    _$_MemberVoucher(
      memberVoucherId: json['memberVoucherId'] as String,
      voucher: Voucher.fromJson(json['voucher'] as Map<String, dynamic>),
      status: $enumDecode(_$MemberVoucherStatusEnumEnumMap, json['status']),
      code: json['code'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      expiredAt: json['expiredAt'] == null
          ? null
          : DateTime.parse(json['expiredAt'] as String),
    );

Map<String, dynamic> _$$_MemberVoucherToJson(_$_MemberVoucher instance) =>
    <String, dynamic>{
      'memberVoucherId': instance.memberVoucherId,
      'voucher': instance.voucher,
      'status': _$MemberVoucherStatusEnumEnumMap[instance.status]!,
      'code': instance.code,
      'createdAt': instance.createdAt.toIso8601String(),
      'expiredAt': instance.expiredAt?.toIso8601String(),
    };

const _$MemberVoucherStatusEnumEnumMap = {
  MemberVoucherStatusEnum.created: 'created',
  MemberVoucherStatusEnum.used: 'used',
  MemberVoucherStatusEnum.expired: 'expired ',
};
