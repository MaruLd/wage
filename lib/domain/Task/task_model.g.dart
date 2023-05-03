// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Task _$$_TaskFromJson(Map<String, dynamic> json) => _$_Task(
      projectReportMemberTaskId: json['projectReportMemberTaskId'] as String?,
      project: json['project'] == null
          ? null
          : Project.fromJson(json['project'] as Map<String, dynamic>),
      taskName: json['taskName'] as String?,
      taskDescription: json['taskDescription'] as String?,
      taskHour: (json['taskHour'] as num).toDouble(),
      taskRealHour: (json['taskRealHour'] as num).toDouble(),
      taskPoint: (json['taskPoint'] as num).toDouble(),
      bonusReason: json['bonusReason'] as String?,
      taskBonus: (json['taskBonus'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TaskToJson(_$_Task instance) => <String, dynamic>{
      'projectReportMemberTaskId': instance.projectReportMemberTaskId,
      'project': instance.project,
      'taskName': instance.taskName,
      'taskDescription': instance.taskDescription,
      'taskHour': instance.taskHour,
      'taskRealHour': instance.taskRealHour,
      'taskPoint': instance.taskPoint,
      'bonusReason': instance.bonusReason,
      'taskBonus': instance.taskBonus,
    };
