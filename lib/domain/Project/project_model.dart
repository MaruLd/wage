import 'package:freezed_annotation/freezed_annotation.dart';
part 'project_model.freezed.dart';
part 'project_model.g.dart';

@freezed
@JsonSerializable()
class Project with _$Project {
  const Project._();
  factory Project({
    required String projectId,
    required String projectName,
    required String projectShortName,
    String? projectShortDescription,
    required String projectStatus,
    String? projectType,
    String? projectVisibility,
    DateTime? createdAt,
    DateTime? startedAt,
    DateTime? endedAt,
    DateTime? updatedAt,
    String? role,
  }) = _Project;
  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
  factory Project.empty() => Project(
      projectId: "", projectName: "", projectStatus: "",projectShortName: "");
}
