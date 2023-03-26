// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salary_cycle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalaryCycle _$$_SalaryCycleFromJson(Map<String, dynamic> json) =>
    _$_SalaryCycle(
      salaryCycleId: json['salaryCycleId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      endedAt: json['endedAt'] == null
          ? null
          : DateTime.parse(json['endedAt'] as String),
      payslips: (json['payslips'] as List<dynamic>?)
          ?.map((e) => Payslips.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecode(_$SalaryCycleStatusEnumEnumMap, json['status']),
    );

Map<String, dynamic> _$$_SalaryCycleToJson(_$_SalaryCycle instance) =>
    <String, dynamic>{
      'salaryCycleId': instance.salaryCycleId,
      'createdAt': instance.createdAt.toIso8601String(),
      'endedAt': instance.endedAt?.toIso8601String(),
      'payslips': instance.payslips,
      'status': _$SalaryCycleStatusEnumEnumMap[instance.status]!,
    };

const _$SalaryCycleStatusEnumEnumMap = {
  SalaryCycleStatusEnum.created: 'created',
  SalaryCycleStatusEnum.taskEditingPhase: 'taskEditingPhase',
  SalaryCycleStatusEnum.projectBonusPhase: 'projectBonusPhase',
  SalaryCycleStatusEnum.review: 'review',
  SalaryCycleStatusEnum.paid: 'paid',
  SalaryCycleStatusEnum.cancelled: 'cancelled',
};

_$_Payslips _$$_PayslipsFromJson(Map<String, dynamic> json) => _$_Payslips(
      payslipId: json['payslipId'] as String,
      note: json['note'] as String?,
      member: json['member'] == null
          ? null
          : Member.fromJson(json['member'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_PayslipsToJson(_$_Payslips instance) =>
    <String, dynamic>{
      'payslipId': instance.payslipId,
      'note': instance.note,
      'member': instance.member,
      'items': instance.items,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

_$_Items _$$_ItemsFromJson(Map<String, dynamic> json) => _$_Items(
      payslipItemId: json['payslipItemId'] as String,
      token: json['token'] as String?,
      amount: json['amount'] as int?,
      note: json['note'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_ItemsToJson(_$_Items instance) => <String, dynamic>{
      'payslipItemId': instance.payslipItemId,
      'token': instance.token,
      'amount': instance.amount,
      'note': instance.note,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
