import 'package:freezed_annotation/freezed_annotation.dart';

import '../Member/member_model.dart';
import '../Project/project_model.dart';
part 'project_detail_model.freezed.dart';
part 'project_detail_model.g.dart';

@freezed
// @JsonSerializable()
class ProjectDetail with _$ProjectDetail {
  const ProjectDetail._();
  factory ProjectDetail({
    required String projectId,
    required String projectName,
    required String projectShortName,
    String? projectShortDescription,
    String? projectLongDescription,
    List<ProjectMember>? members,
    required ProjectStatusEnum projectStatus,
    ProjectTypeEnum? projectType,
    ProjectVisibilityEnum? projectVisibility,
    required DateTime createdAt,
    DateTime? startedAt,
    DateTime? endedAt,
    DateTime? updatedAt,
  }) = _ProjectDetail;
  factory ProjectDetail.fromJson(Map<String, dynamic> json) =>
      _$ProjectDetailFromJson(json);
}

@freezed
class ProjectMember with _$ProjectMember {
  const ProjectMember._();
  factory ProjectMember({
    required String projectMemberId,
    required Member member,
    required ProjectMemberRoleEnum role,
    required String major,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ProjectMember;
  factory ProjectMember.fromJson(Map<String, dynamic> json) =>
      _$ProjectMemberFromJson(json);
}
