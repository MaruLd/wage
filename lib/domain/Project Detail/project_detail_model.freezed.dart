// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectDetail _$ProjectDetailFromJson(Map<String, dynamic> json) {
  return _ProjectDetail.fromJson(json);
}

/// @nodoc
mixin _$ProjectDetail {
  String get projectId => throw _privateConstructorUsedError;
  String get projectName => throw _privateConstructorUsedError;
  String get projectShortName => throw _privateConstructorUsedError;
  String? get projectShortDescription => throw _privateConstructorUsedError;
  String? get projectLongDescription => throw _privateConstructorUsedError;
  List<ProjectMember>? get members => throw _privateConstructorUsedError;
  ProjectStatusEnum get projectStatus => throw _privateConstructorUsedError;
  ProjectTypeEnum? get projectType => throw _privateConstructorUsedError;
  ProjectVisibilityEnum? get projectVisibility =>
      throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get startedAt => throw _privateConstructorUsedError;
  DateTime? get endedAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectDetailCopyWith<ProjectDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectDetailCopyWith<$Res> {
  factory $ProjectDetailCopyWith(
          ProjectDetail value, $Res Function(ProjectDetail) then) =
      _$ProjectDetailCopyWithImpl<$Res, ProjectDetail>;
  @useResult
  $Res call(
      {String projectId,
      String projectName,
      String projectShortName,
      String? projectShortDescription,
      String? projectLongDescription,
      List<ProjectMember>? members,
      ProjectStatusEnum projectStatus,
      ProjectTypeEnum? projectType,
      ProjectVisibilityEnum? projectVisibility,
      DateTime createdAt,
      DateTime? startedAt,
      DateTime? endedAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$ProjectDetailCopyWithImpl<$Res, $Val extends ProjectDetail>
    implements $ProjectDetailCopyWith<$Res> {
  _$ProjectDetailCopyWithImpl(this._value, this._then);

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
    Object? projectLongDescription = freezed,
    Object? members = freezed,
    Object? projectStatus = null,
    Object? projectType = freezed,
    Object? projectVisibility = freezed,
    Object? createdAt = null,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? updatedAt = freezed,
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
      projectLongDescription: freezed == projectLongDescription
          ? _value.projectLongDescription
          : projectLongDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      members: freezed == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<ProjectMember>?,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectDetailCopyWith<$Res>
    implements $ProjectDetailCopyWith<$Res> {
  factory _$$_ProjectDetailCopyWith(
          _$_ProjectDetail value, $Res Function(_$_ProjectDetail) then) =
      __$$_ProjectDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String projectId,
      String projectName,
      String projectShortName,
      String? projectShortDescription,
      String? projectLongDescription,
      List<ProjectMember>? members,
      ProjectStatusEnum projectStatus,
      ProjectTypeEnum? projectType,
      ProjectVisibilityEnum? projectVisibility,
      DateTime createdAt,
      DateTime? startedAt,
      DateTime? endedAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$_ProjectDetailCopyWithImpl<$Res>
    extends _$ProjectDetailCopyWithImpl<$Res, _$_ProjectDetail>
    implements _$$_ProjectDetailCopyWith<$Res> {
  __$$_ProjectDetailCopyWithImpl(
      _$_ProjectDetail _value, $Res Function(_$_ProjectDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectId = null,
    Object? projectName = null,
    Object? projectShortName = null,
    Object? projectShortDescription = freezed,
    Object? projectLongDescription = freezed,
    Object? members = freezed,
    Object? projectStatus = null,
    Object? projectType = freezed,
    Object? projectVisibility = freezed,
    Object? createdAt = null,
    Object? startedAt = freezed,
    Object? endedAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_ProjectDetail(
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
      projectLongDescription: freezed == projectLongDescription
          ? _value.projectLongDescription
          : projectLongDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      members: freezed == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<ProjectMember>?,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProjectDetail extends _ProjectDetail {
  _$_ProjectDetail(
      {required this.projectId,
      required this.projectName,
      required this.projectShortName,
      this.projectShortDescription,
      this.projectLongDescription,
      final List<ProjectMember>? members,
      required this.projectStatus,
      this.projectType,
      this.projectVisibility,
      required this.createdAt,
      this.startedAt,
      this.endedAt,
      this.updatedAt})
      : _members = members,
        super._();

  factory _$_ProjectDetail.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectDetailFromJson(json);

  @override
  final String projectId;
  @override
  final String projectName;
  @override
  final String projectShortName;
  @override
  final String? projectShortDescription;
  @override
  final String? projectLongDescription;
  final List<ProjectMember>? _members;
  @override
  List<ProjectMember>? get members {
    final value = _members;
    if (value == null) return null;
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ProjectStatusEnum projectStatus;
  @override
  final ProjectTypeEnum? projectType;
  @override
  final ProjectVisibilityEnum? projectVisibility;
  @override
  final DateTime createdAt;
  @override
  final DateTime? startedAt;
  @override
  final DateTime? endedAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ProjectDetail(projectId: $projectId, projectName: $projectName, projectShortName: $projectShortName, projectShortDescription: $projectShortDescription, projectLongDescription: $projectLongDescription, members: $members, projectStatus: $projectStatus, projectType: $projectType, projectVisibility: $projectVisibility, createdAt: $createdAt, startedAt: $startedAt, endedAt: $endedAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectDetail &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            (identical(other.projectShortName, projectShortName) ||
                other.projectShortName == projectShortName) &&
            (identical(
                    other.projectShortDescription, projectShortDescription) ||
                other.projectShortDescription == projectShortDescription) &&
            (identical(other.projectLongDescription, projectLongDescription) ||
                other.projectLongDescription == projectLongDescription) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
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
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      projectId,
      projectName,
      projectShortName,
      projectShortDescription,
      projectLongDescription,
      const DeepCollectionEquality().hash(_members),
      projectStatus,
      projectType,
      projectVisibility,
      createdAt,
      startedAt,
      endedAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectDetailCopyWith<_$_ProjectDetail> get copyWith =>
      __$$_ProjectDetailCopyWithImpl<_$_ProjectDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectDetailToJson(
      this,
    );
  }
}

abstract class _ProjectDetail extends ProjectDetail {
  factory _ProjectDetail(
      {required final String projectId,
      required final String projectName,
      required final String projectShortName,
      final String? projectShortDescription,
      final String? projectLongDescription,
      final List<ProjectMember>? members,
      required final ProjectStatusEnum projectStatus,
      final ProjectTypeEnum? projectType,
      final ProjectVisibilityEnum? projectVisibility,
      required final DateTime createdAt,
      final DateTime? startedAt,
      final DateTime? endedAt,
      final DateTime? updatedAt}) = _$_ProjectDetail;
  _ProjectDetail._() : super._();

  factory _ProjectDetail.fromJson(Map<String, dynamic> json) =
      _$_ProjectDetail.fromJson;

  @override
  String get projectId;
  @override
  String get projectName;
  @override
  String get projectShortName;
  @override
  String? get projectShortDescription;
  @override
  String? get projectLongDescription;
  @override
  List<ProjectMember>? get members;
  @override
  ProjectStatusEnum get projectStatus;
  @override
  ProjectTypeEnum? get projectType;
  @override
  ProjectVisibilityEnum? get projectVisibility;
  @override
  DateTime get createdAt;
  @override
  DateTime? get startedAt;
  @override
  DateTime? get endedAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectDetailCopyWith<_$_ProjectDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

ProjectMember _$ProjectMemberFromJson(Map<String, dynamic> json) {
  return _ProjectMember.fromJson(json);
}

/// @nodoc
mixin _$ProjectMember {
  String get projectMemberId => throw _privateConstructorUsedError;
  Member get member => throw _privateConstructorUsedError;
  ProjectMemberRoleEnum get role => throw _privateConstructorUsedError;
  String get major => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectMemberCopyWith<ProjectMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectMemberCopyWith<$Res> {
  factory $ProjectMemberCopyWith(
          ProjectMember value, $Res Function(ProjectMember) then) =
      _$ProjectMemberCopyWithImpl<$Res, ProjectMember>;
  @useResult
  $Res call(
      {String projectMemberId,
      Member member,
      ProjectMemberRoleEnum role,
      String major,
      DateTime? createdAt,
      DateTime? updatedAt});

  $MemberCopyWith<$Res> get member;
}

/// @nodoc
class _$ProjectMemberCopyWithImpl<$Res, $Val extends ProjectMember>
    implements $ProjectMemberCopyWith<$Res> {
  _$ProjectMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectMemberId = null,
    Object? member = null,
    Object? role = null,
    Object? major = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      projectMemberId: null == projectMemberId
          ? _value.projectMemberId
          : projectMemberId // ignore: cast_nullable_to_non_nullable
              as String,
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as Member,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ProjectMemberRoleEnum,
      major: null == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MemberCopyWith<$Res> get member {
    return $MemberCopyWith<$Res>(_value.member, (value) {
      return _then(_value.copyWith(member: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProjectMemberCopyWith<$Res>
    implements $ProjectMemberCopyWith<$Res> {
  factory _$$_ProjectMemberCopyWith(
          _$_ProjectMember value, $Res Function(_$_ProjectMember) then) =
      __$$_ProjectMemberCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String projectMemberId,
      Member member,
      ProjectMemberRoleEnum role,
      String major,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $MemberCopyWith<$Res> get member;
}

/// @nodoc
class __$$_ProjectMemberCopyWithImpl<$Res>
    extends _$ProjectMemberCopyWithImpl<$Res, _$_ProjectMember>
    implements _$$_ProjectMemberCopyWith<$Res> {
  __$$_ProjectMemberCopyWithImpl(
      _$_ProjectMember _value, $Res Function(_$_ProjectMember) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectMemberId = null,
    Object? member = null,
    Object? role = null,
    Object? major = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_ProjectMember(
      projectMemberId: null == projectMemberId
          ? _value.projectMemberId
          : projectMemberId // ignore: cast_nullable_to_non_nullable
              as String,
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as Member,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ProjectMemberRoleEnum,
      major: null == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProjectMember extends _ProjectMember {
  _$_ProjectMember(
      {required this.projectMemberId,
      required this.member,
      required this.role,
      required this.major,
      this.createdAt,
      this.updatedAt})
      : super._();

  factory _$_ProjectMember.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectMemberFromJson(json);

  @override
  final String projectMemberId;
  @override
  final Member member;
  @override
  final ProjectMemberRoleEnum role;
  @override
  final String major;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ProjectMember(projectMemberId: $projectMemberId, member: $member, role: $role, major: $major, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectMember &&
            (identical(other.projectMemberId, projectMemberId) ||
                other.projectMemberId == projectMemberId) &&
            (identical(other.member, member) || other.member == member) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, projectMemberId, member, role, major, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectMemberCopyWith<_$_ProjectMember> get copyWith =>
      __$$_ProjectMemberCopyWithImpl<_$_ProjectMember>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectMemberToJson(
      this,
    );
  }
}

abstract class _ProjectMember extends ProjectMember {
  factory _ProjectMember(
      {required final String projectMemberId,
      required final Member member,
      required final ProjectMemberRoleEnum role,
      required final String major,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_ProjectMember;
  _ProjectMember._() : super._();

  factory _ProjectMember.fromJson(Map<String, dynamic> json) =
      _$_ProjectMember.fromJson;

  @override
  String get projectMemberId;
  @override
  Member get member;
  @override
  ProjectMemberRoleEnum get role;
  @override
  String get major;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectMemberCopyWith<_$_ProjectMember> get copyWith =>
      throw _privateConstructorUsedError;
}
