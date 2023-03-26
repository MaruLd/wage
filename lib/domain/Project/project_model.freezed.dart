// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
mixin _$Project {
  String get projectId => throw _privateConstructorUsedError;
  String get projectName => throw _privateConstructorUsedError;
  String get projectShortName => throw _privateConstructorUsedError;
  String? get projectShortDescription => throw _privateConstructorUsedError;
  ProjectStatusEnum get projectStatus => throw _privateConstructorUsedError;
  ProjectTypeEnum? get projectType => throw _privateConstructorUsedError;
  ProjectVisibilityEnum? get projectVisibility =>
      throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get startedAt => throw _privateConstructorUsedError;
  DateTime? get endedAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  ProjectMemberRoleEnum? get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res, Project>;
  @useResult
  $Res call(
      {String projectId,
      String projectName,
      String projectShortName,
      String? projectShortDescription,
      ProjectStatusEnum projectStatus,
      ProjectTypeEnum? projectType,
      ProjectVisibilityEnum? projectVisibility,
      DateTime? createdAt,
      DateTime? startedAt,
      DateTime? endedAt,
      DateTime? updatedAt,
      ProjectMemberRoleEnum? role});
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res, $Val extends Project>
    implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? projectName = null,
    Object? projectShortName = null,
    Object? projectShortDescription = freezed,
    Object? projectStatus = null,
    Object? projectType = freezed,
    Object? projectVisibility = freezed,
    Object? createdAt = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? updatedAt = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      projectShortName: null == projectShortName
          ? _value.projectShortName
          : projectShortName // ignore: cast_nullable_to_non_nullable
              as String,
      projectShortDescription: freezed == projectShortDescription
          ? _value.projectShortDescription
          : projectShortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      projectStatus: null == projectStatus
          ? _value.projectStatus
          : projectStatus // ignore: cast_nullable_to_non_nullable
              as ProjectStatusEnum,
      projectType: freezed == projectType
          ? _value.projectType
          : projectType // ignore: cast_nullable_to_non_nullable
              as ProjectTypeEnum?,
      projectVisibility: freezed == projectVisibility
          ? _value.projectVisibility
          : projectVisibility // ignore: cast_nullable_to_non_nullable
              as ProjectVisibilityEnum?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ProjectMemberRoleEnum?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$_ProjectCopyWith(
          _$_Project value, $Res Function(_$_Project) then) =
      __$$_ProjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String projectId,
      String projectName,
      String projectShortName,
      String? projectShortDescription,
      ProjectStatusEnum projectStatus,
      ProjectTypeEnum? projectType,
      ProjectVisibilityEnum? projectVisibility,
      DateTime? createdAt,
      DateTime? startedAt,
      DateTime? endedAt,
      DateTime? updatedAt,
      ProjectMemberRoleEnum? role});
}

/// @nodoc
class __$$_ProjectCopyWithImpl<$Res>
    extends _$ProjectCopyWithImpl<$Res, _$_Project>
    implements _$$_ProjectCopyWith<$Res> {
  __$$_ProjectCopyWithImpl(_$_Project _value, $Res Function(_$_Project) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? projectName = null,
    Object? projectShortName = null,
    Object? projectShortDescription = freezed,
    Object? projectStatus = null,
    Object? projectType = freezed,
    Object? projectVisibility = freezed,
    Object? createdAt = freezed,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? updatedAt = freezed,
    Object? role = freezed,
  }) {
    return _then(_$_Project(
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String,
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      projectShortName: null == projectShortName
          ? _value.projectShortName
          : projectShortName // ignore: cast_nullable_to_non_nullable
              as String,
      projectShortDescription: freezed == projectShortDescription
          ? _value.projectShortDescription
          : projectShortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      projectStatus: null == projectStatus
          ? _value.projectStatus
          : projectStatus // ignore: cast_nullable_to_non_nullable
              as ProjectStatusEnum,
      projectType: freezed == projectType
          ? _value.projectType
          : projectType // ignore: cast_nullable_to_non_nullable
              as ProjectTypeEnum?,
      projectVisibility: freezed == projectVisibility
          ? _value.projectVisibility
          : projectVisibility // ignore: cast_nullable_to_non_nullable
              as ProjectVisibilityEnum?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startedAt: freezed == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ProjectMemberRoleEnum?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Project extends _Project {
  _$_Project(
      {required this.projectId,
      required this.projectName,
      required this.projectShortName,
      this.projectShortDescription,
      required this.projectStatus,
      this.projectType,
      this.projectVisibility,
      this.createdAt,
      this.startedAt,
      this.endedAt,
      this.updatedAt,
      this.role})
      : super._();

  factory _$_Project.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectFromJson(json);

  @override
  final String projectId;
  @override
  final String projectName;
  @override
  final String projectShortName;
  @override
  final String? projectShortDescription;
  @override
  final ProjectStatusEnum projectStatus;
  @override
  final ProjectTypeEnum? projectType;
  @override
  final ProjectVisibilityEnum? projectVisibility;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? endedAt;
  @override
  final DateTime? updatedAt;
  @override
  final ProjectMemberRoleEnum? role;

  @override
  String toString() {
    return 'Project(projectId: $projectId, projectName: $projectName, projectShortName: $projectShortName, projectShortDescription: $projectShortDescription, projectStatus: $projectStatus, projectType: $projectType, projectVisibility: $projectVisibility, createdAt: $createdAt, startedAt: $startedAt, endedAt: $endedAt, updatedAt: $updatedAt, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Project &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            (identical(other.projectShortName, projectShortName) ||
                other.projectShortName == projectShortName) &&
            (identical(
                    other.projectShortDescription, projectShortDescription) ||
                other.projectShortDescription == projectShortDescription) &&
            (identical(other.projectStatus, projectStatus) ||
                other.projectStatus == projectStatus) &&
            (identical(other.projectType, projectType) ||
                other.projectType == projectType) &&
            (identical(other.projectVisibility, projectVisibility) ||
                other.projectVisibility == projectVisibility) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      projectId,
      projectName,
      projectShortName,
      projectShortDescription,
      projectStatus,
      projectType,
      projectVisibility,
      createdAt,
      startedAt,
      endedAt,
      updatedAt,
      role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectCopyWith<_$_Project> get copyWith =>
      __$$_ProjectCopyWithImpl<_$_Project>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectToJson(
      this,
    );
  }
}

abstract class _Project extends Project {
  factory _Project(
      {required final String projectId,
      required final String projectName,
      required final String projectShortName,
      final String? projectShortDescription,
      required final ProjectStatusEnum projectStatus,
      final ProjectTypeEnum? projectType,
      final ProjectVisibilityEnum? projectVisibility,
      final DateTime? createdAt,
      final DateTime? startedAt,
      final DateTime? endedAt,
      final DateTime? updatedAt,
      final ProjectMemberRoleEnum? role}) = _$_Project;
  _Project._() : super._();

  factory _Project.fromJson(Map<String, dynamic> json) = _$_Project.fromJson;

  @override
  String get projectId;
  @override
  String get projectName;
  @override
  String get projectShortName;
  @override
  String? get projectShortDescription;
  @override
  ProjectStatusEnum get projectStatus;
  @override
  ProjectTypeEnum? get projectType;
  @override
  ProjectVisibilityEnum? get projectVisibility;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get startedAt;
  @override
  DateTime? get endedAt;
  @override
  DateTime? get updatedAt;
  @override
  ProjectMemberRoleEnum? get role;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectCopyWith<_$_Project> get copyWith =>
      throw _privateConstructorUsedError;
}
