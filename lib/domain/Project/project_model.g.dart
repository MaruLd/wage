// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Project _$$_ProjectFromJson(Map<String, dynamic> json) => _$_Project(
      projectId: json['projectId'] as String,
      projectName: json['projectName'] as String,
      projectShortName: json['projectShortName'] as String,
      projectShortDescription: json['projectShortDescription'] as String?,
      projectLongDescription: json['projectLongDescription'] as String?,
      projectStatus:
          $enumDecode(_$ProjectStatusEnumEnumMap, json['projectStatus']),
      projectType:
          $enumDecodeNullable(_$ProjectTypeEnumEnumMap, json['projectType']),
      projectVisibility: $enumDecodeNullable(
          _$ProjectVisibilityEnumEnumMap, json['projectVisibility']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
      endedAt: json['endedAt'] == null
          ? null
          : DateTime.parse(json['endedAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      role: $enumDecodeNullable(_$ProjectMemberRoleEnumEnumMap, json['role']),
    );

Map<String, dynamic> _$$_ProjectToJson(_$_Project instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'projectName': instance.projectName,
      'projectShortName': instance.projectShortName,
      'projectShortDescription': instance.projectShortDescription,
      'projectLongDescription': instance.projectLongDescription,
      'projectStatus': _$ProjectStatusEnumEnumMap[instance.projectStatus]!,
      'projectType': _$ProjectTypeEnumEnumMap[instance.projectType],
      'projectVisibility':
          _$ProjectVisibilityEnumEnumMap[instance.projectVisibility],
      'createdAt': instance.createdAt.toIso8601String(),
      'startedAt': instance.startedAt?.toIso8601String(),
      'endedAt': instance.endedAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'role': _$ProjectMemberRoleEnumEnumMap[instance.role],
    };

const _$ProjectStatusEnumEnumMap = {
  ProjectStatusEnum.created: 'created',
  ProjectStatusEnum.started: 'started',
  ProjectStatusEnum.ended: 'ended',
  ProjectStatusEnum.cancelled: 'cancelled',
};

const _$ProjectTypeEnumEnumMap = {
  ProjectTypeEnum.application: 'application',
  ProjectTypeEnum.service: 'service',
  ProjectTypeEnum.other: 'other ',
};

const _$ProjectVisibilityEnumEnumMap = {
  ProjectVisibilityEnum.public: 'public',
  ProjectVisibilityEnum.private: 'private',
};

const _$ProjectMemberRoleEnumEnumMap = {
  ProjectMemberRoleEnum.manager: 'manager',
  ProjectMemberRoleEnum.member: 'member',
};
