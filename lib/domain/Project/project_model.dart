import 'package:freezed_annotation/freezed_annotation.dart';
part 'project_model.freezed.dart';
part 'project_model.g.dart';

@freezed
class Project with _$Project {
  const Project._();
  factory Project({
    required String projectId,
    required String projectName,
    String? projectShortName,
    String? projectShortDescription,
    required String projectStatus,
    String? projectType,
    String? projectVisibility,
    DateTime? createdAt,
    DateTime? startedAt,
    DateTime? endedAt,
    DateTime? updatedAt,
    ProjectFiles? projectFiles,
  }) = _Project;
  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
  factory Project.empty() =>
      Project(projectId: "", projectName: "", projectStatus: "");
}

@freezed
class ProjectFiles with _$ProjectFiles {
  const ProjectFiles._();
  factory ProjectFiles({
    File? file,
    String? fileType,
  }) = _ProjectFiles;
  factory ProjectFiles.fromJson(Map<String, dynamic> json) =>
      _$ProjectFilesFromJson(json);
}

@freezed
class File with _$File {
  const File._();
  factory File({
    String? directUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _File;
  factory File.fromJson(Map<String, dynamic> json) => _$FileFromJson(json);
}
