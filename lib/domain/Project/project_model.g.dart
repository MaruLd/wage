// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Project _$$_ProjectFromJson(Map<String, dynamic> json) => _$_Project(
      projectId: json['projectId'] as String,
      projectName: json['projectName'] as String,
      projectShortName: json['projectShortName'] as String?,
      projectShortDescription: json['projectShortDescription'] as String?,
      projectStatus: json['projectStatus'] as String,
      projectType: json['projectType'] as String?,
      projectVisibility: json['projectVisibility'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
      endedAt: json['endedAt'] == null
          ? null
          : DateTime.parse(json['endedAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      projectFiles: (json['projectFiles'] as List<dynamic>)
          .map((e) => ProjectFiles.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProjectToJson(_$_Project instance) =>
    <String, dynamic>{
      'projectId': instance.projectId,
      'projectName': instance.projectName,
      'projectShortName': instance.projectShortName,
      'projectShortDescription': instance.projectShortDescription,
      'projectStatus': instance.projectStatus,
      'projectType': instance.projectType,
      'projectVisibility': instance.projectVisibility,
      'createdAt': instance.createdAt?.toIso8601String(),
      'startedAt': instance.startedAt?.toIso8601String(),
      'endedAt': instance.endedAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'projectFiles': instance.projectFiles,
    };

_$_ProjectFiles _$$_ProjectFilesFromJson(Map<String, dynamic> json) =>
    _$_ProjectFiles(
      file: json['file'] == null
          ? null
          : File.fromJson(json['file'] as Map<String, dynamic>),
      fileType: json['fileType'] as String?,
    );

Map<String, dynamic> _$$_ProjectFilesToJson(_$_ProjectFiles instance) =>
    <String, dynamic>{
      'file': instance.file,
      'fileType': instance.fileType,
    };

_$_File _$$_FileFromJson(Map<String, dynamic> json) => _$_File(
      directUrl: json['directUrl'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_FileToJson(_$_File instance) => <String, dynamic>{
      'directUrl': instance.directUrl,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
