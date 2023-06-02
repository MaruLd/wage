// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectDetail _$$_ProjectDetailFromJson(Map<String, dynamic> json) =>
    _$_ProjectDetail(
      projectId: json['projectId'] as String,
      projectName: json['projectName'] as String,
      projectShortName: json['projectShortName'] as String,
      projectShortDescription: json['projectShortDescription'] as String?,
      projectLongDescription: json['projectLongDescription'] as String?,
      members: (json['members'] as List<dynamic>?)
          ?.map((e) => ProjectMember.fromJson(e as Map<String, dynamic>))
          .toList(),
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
    );

Map<String, dynamic> _$$_ProjectDetailToJson(_$_ProjectDetail instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'projectName': instance.projectName,
      'projectShortName': instance.projectShortName,
      'projectShortDescription': instance.projectShortDescription,
      'projectLongDescription': instance.projectLongDescription,
      'members': instance.members,
      'projectStatus': _$ProjectStatusEnumEnumMap[instance.projectStatus]!,
      'projectType': _$ProjectTypeEnumEnumMap[instance.projectType],
      'projectVisibility':
          _$ProjectVisibilityEnumEnumMap[instance.projectVisibility],
      'createdAt': instance.createdAt.toIso8601String(),
      'startedAt': instance.startedAt?.toIso8601String(),
      'endedAt': instance.endedAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$ProjectStatusEnumEnumMap = {
  ProjectStatusEnum.created: 'created',
  ProjectStatusEnum.started: 'started',
  ProjectStatusEnum.ended: 'ended',
  ProjectStatusEnum.cancelled: 'cancelled',
  ProjectStatusEnum.stopped: 'stopped',
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

_$_ProjectMember _$$_ProjectMemberFromJson(Map<String, dynamic> json) =>
    _$_ProjectMember(
      projectMemberId: json['projectMemberId'] as String,
      member: Member.fromJson(json['member'] as Map<String, dynamic>),
      role: $enumDecode(_$ProjectMemberRoleEnumEnumMap, json['role']),
      major: json['major'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_ProjectMemberToJson(_$_ProjectMember instance) =>
    <String, dynamic>{
      'projectMemberId': instance.projectMemberId,
      'member': instance.member,
      'role': _$ProjectMemberRoleEnumEnumMap[instance.role]!,
      'major': instance.major,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$ProjectMemberRoleEnumEnumMap = {
  ProjectMemberRoleEnum.manager: 'manager',
  ProjectMemberRoleEnum.member: 'member',
};
