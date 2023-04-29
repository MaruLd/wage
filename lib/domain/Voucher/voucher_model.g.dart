// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Voucher _$$_VoucherFromJson(Map<String, dynamic> json) => _$_Voucher(
      voucherId: json['voucherId'] as String,
      voucherName: json['voucherName'] as String?,
      voucherDescription: json['voucherDescription'] as String?,
      voucherCost: (json['voucherCost'] as num).toDouble(),
      voucherAmount: json['voucherAmount'] as int,
      supplier: json['supplier'] == null
          ? null
          : Supplier.fromJson(json['supplier'] as Map<String, dynamic>),
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
      'supplier': instance.supplier,
      'imageUrl': instance.imageUrl,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$_Supplier _$$_SupplierFromJson(Map<String, dynamic> json) => _$_Supplier(
      supplierId: json['supplierId'] as String,
      name: json['name'] as String?,
      description: json['description'] as String?,
      status: $enumDecodeNullable(_$SupplierStatusEnumEnumMap, json['status']),
    );

Map<String, dynamic> _$$_SupplierToJson(_$_Supplier instance) =>
    <String, dynamic>{
      'supplierId': instance.supplierId,
      'name': instance.name,
      'description': instance.description,
      'status': _$SupplierStatusEnumEnumMap[instance.status],
    };

const _$SupplierStatusEnumEnumMap = {
  SupplierStatusEnum.available: 'available',
  SupplierStatusEnum.unavailable: 'unavailable',
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
