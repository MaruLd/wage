// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payslip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Payslip _$$_PayslipFromJson(Map<String, dynamic> json) => _$_Payslip(
      payslipId: json['payslipId'] as String,
      note: json['note'] as String?,
      member: json['member'] == null
          ? null
          : Member.fromJson(json['member'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_PayslipToJson(_$_Payslip instance) =>
    <String, dynamic>{
      'payslipId': instance.payslipId,
      'note': instance.note,
      'member': instance.member,
      'items': instance.items,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      payslipItemId: json['payslipItemId'] as String,
      token: $enumDecodeNullable(_$WalletTokenEnumEnumMap, json['token']),
      amount: json['amount'] as int?,
      note: json['note'] as String?,
      type: $enumDecodeNullable(_$PayslipItemTypeEnumEnumMap, json['type']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'payslipItemId': instance.payslipItemId,
      'token': _$WalletTokenEnumEnumMap[instance.token],
      'amount': instance.amount,
      'note': instance.note,
      'type': _$PayslipItemTypeEnumEnumMap[instance.type],
      'createdAt': instance.createdAt?.toIso8601String(),
    };

const _$WalletTokenEnumEnumMap = {
  WalletTokenEnum.point: 'point',
  WalletTokenEnum.xp: 'xp',
};

const _$PayslipItemTypeEnumEnumMap = {
  PayslipItemTypeEnum.p1: 'p1',
  PayslipItemTypeEnum.p2: 'p2',
  PayslipItemTypeEnum.p3: 'p3',
  PayslipItemTypeEnum.xp: 'xp',
  PayslipItemTypeEnum.bonus: 'bonus',
  PayslipItemTypeEnum.other: 'other',
};
