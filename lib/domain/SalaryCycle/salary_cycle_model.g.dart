// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salary_cycle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalaryCycle _$$_SalaryCycleFromJson(Map<String, dynamic> json) =>
    _$_SalaryCycle(
      salaryCycleId: json['salaryCycleId'] as String,
      name: json['name'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      startedAt: DateTime.parse(json['startedAt'] as String),
      endedAt: json['endedAt'] == null
          ? null
          : DateTime.parse(json['endedAt'] as String),
      status: $enumDecode(_$SalaryCycleStatusEnumEnumMap, json['status']),
    );

Map<String, dynamic> _$$_SalaryCycleToJson(_$_SalaryCycle instance) =>
    <String, dynamic>{
      'salaryCycleId': instance.salaryCycleId,
      'name': instance.name,
      'createdAt': instance.createdAt.toIso8601String(),
      'startedAt': instance.startedAt.toIso8601String(),
      'endedAt': instance.endedAt?.toIso8601String(),
      'status': _$SalaryCycleStatusEnumEnumMap[instance.status]!,
    };

const _$SalaryCycleStatusEnumEnumMap = {
  SalaryCycleStatusEnum.ongoing: 'ongoing',
  SalaryCycleStatusEnum.locked: 'locked',
  SalaryCycleStatusEnum.paid: 'paid',
  SalaryCycleStatusEnum.cancelled: 'cancelled',
};
