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
          ?.map((e) => Payslip.fromJson(e as Map<String, dynamic>))
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
