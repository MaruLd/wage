import 'package:freezed_annotation/freezed_annotation.dart';
part 'project_model.freezed.dart';
part 'project_model.g.dart';

@freezed
// @JsonSerializable()
class Project with _$Project {
  const Project._();
  factory Project({
    required String projectId,
    required String projectName,
    required String projectShortName,
    String? projectShortDescription,
    String? projectLongDescription,
    required ProjectStatusEnum projectStatus,
    ProjectTypeEnum? projectType,
    ProjectVisibilityEnum? projectVisibility,
    DateTime? createdAt,
    DateTime? startedAt,
    DateTime? endedAt,
    DateTime? updatedAt,
    ProjectMemberRoleEnum? role,
  }) = _Project;
  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
  factory Project.empty() => Project(
      projectId: "",
      projectName: "",
      projectStatus: ProjectStatusEnum.started,
      projectShortName: "");
}

enum ProjectStatusEnum {
  @JsonValue("created")
  created,
  @JsonValue("started")
  started,
  @JsonValue("ended")
  ended,
  @JsonValue("cancelled")
  cancelled,
}

enum ProjectTypeEnum {
  @JsonValue("application")
  application,
  @JsonValue("service")
  service,
  @JsonValue("other ")
  other,
}

enum ProjectVisibilityEnum {
  @JsonValue("public")
  public,
  @JsonValue("private ")
  private,
}

enum ProjectMemberRoleEnum {
  @JsonValue("manager")
  manager,
  @JsonValue("member  ")
  member,
}
