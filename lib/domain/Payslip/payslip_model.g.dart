// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payslip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************



Map<String, dynamic> _$PayslipToJson(Payslip instance) => <String, dynamic>{
      'payslipId': instance.payslipId,
      'note': instance.note,
      'member': instance.member,
      'totalP1': instance.totalP1,
      'totalP2': instance.totalP2,
      'totalP3': instance.totalP3,
      'totalXP': instance.totalXP,
      'totalBonus': instance.totalBonus,
      'items': instance.items,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$_Payslip _$$_PayslipFromJson(Map<String, dynamic> json) => _$_Payslip(
      payslipId: json['payslipId'] as String,
      note: json['note'] as String?,
      member: json['member'] == null
          ? null
          : Member.fromJson(json['member'] as Map<String, dynamic>),
      totalP1: (json['totalP1'] as num?)?.toDouble(),
      totalP2: (json['totalP2'] as num?)?.toDouble(),
      totalP3: (json['totalP3'] as num?)?.toDouble(),
      totalXP: (json['totalXP'] as num?)?.toDouble(),
      totalBonus: (json['totalBonus'] as num?)?.toDouble(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_PayslipToJson(_$_Payslip instance) =>
    <String, dynamic>{
      'payslipId': instance.payslipId,
      'note': instance.note,
      'member': instance.member,
      'totalP1': instance.totalP1,
      'totalP2': instance.totalP2,
      'totalP3': instance.totalP3,
      'totalXP': instance.totalXP,
      'totalBonus': instance.totalBonus,
      'items': instance.items,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      payslipItemId: json['payslipItemId'] as String,
      token: $enumDecode(_$WalletTokenEnumEnumMap, json['token']),
      amount: (json['amount'] as num?)?.toDouble(),
      note: json['note'] as String?,
      projectId: json['projectId'] as String?,
      type: $enumDecodeNullable(_$PayslipItemTypeEnumEnumMap, json['type']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'payslipItemId': instance.payslipItemId,
      'token': _$WalletTokenEnumEnumMap[instance.token]!,
      'amount': instance.amount,
      'note': instance.note,
      'projectId': instance.projectId,
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
};
