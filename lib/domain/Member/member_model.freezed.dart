// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Member _$MemberFromJson(Map<String, dynamic> json) {
  return _Member.fromJson(json);
}

/// @nodoc
mixin _$Member {
  String get memberId => throw _privateConstructorUsedError;
  String get emailAddress => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get facebookUrl => throw _privateConstructorUsedError;
  MemberLevels get memberLevels => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberCopyWith<Member> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberCopyWith<$Res> {
  factory $MemberCopyWith(Member value, $Res Function(Member) then) =
      _$MemberCopyWithImpl<$Res, Member>;
  @useResult
  $Res call(
      {String memberId,
      String emailAddress,
      String fullName,
      String? phoneNumber,
      String? imageUrl,
      String? facebookUrl,
      MemberLevels memberLevels,
      Role role});

  $MemberLevelsCopyWith<$Res> get memberLevels;
  $RoleCopyWith<$Res> get role;
}

/// @nodoc
class _$MemberCopyWithImpl<$Res, $Val extends Member>
    implements $MemberCopyWith<$Res> {
  _$MemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? emailAddress = null,
    Object? fullName = null,
    Object? phoneNumber = freezed,
    Object? imageUrl = freezed,
    Object? facebookUrl = freezed,
    Object? memberLevels = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookUrl: freezed == facebookUrl
          ? _value.facebookUrl
          : facebookUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      memberLevels: null == memberLevels
          ? _value.memberLevels
          : memberLevels // ignore: cast_nullable_to_non_nullable
              as MemberLevels,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MemberLevelsCopyWith<$Res> get memberLevels {
    return $MemberLevelsCopyWith<$Res>(_value.memberLevels, (value) {
      return _then(_value.copyWith(memberLevels: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RoleCopyWith<$Res> get role {
    return $RoleCopyWith<$Res>(_value.role, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MemberCopyWith<$Res> implements $MemberCopyWith<$Res> {
  factory _$$_MemberCopyWith(_$_Member value, $Res Function(_$_Member) then) =
      __$$_MemberCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String memberId,
      String emailAddress,
      String fullName,
      String? phoneNumber,
      String? imageUrl,
      String? facebookUrl,
      MemberLevels memberLevels,
      Role role});

  @override
  $MemberLevelsCopyWith<$Res> get memberLevels;
  @override
  $RoleCopyWith<$Res> get role;
}

/// @nodoc
class __$$_MemberCopyWithImpl<$Res>
    extends _$MemberCopyWithImpl<$Res, _$_Member>
    implements _$$_MemberCopyWith<$Res> {
  __$$_MemberCopyWithImpl(_$_Member _value, $Res Function(_$_Member) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? emailAddress = null,
    Object? fullName = null,
    Object? phoneNumber = freezed,
    Object? imageUrl = freezed,
    Object? facebookUrl = freezed,
    Object? memberLevels = null,
    Object? role = null,
  }) {
    return _then(_$_Member(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookUrl: freezed == facebookUrl
          ? _value.facebookUrl
          : facebookUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      memberLevels: null == memberLevels
          ? _value.memberLevels
          : memberLevels // ignore: cast_nullable_to_non_nullable
              as MemberLevels,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Member extends _Member {
  _$_Member(
      {required this.memberId,
      required this.emailAddress,
      required this.fullName,
      this.phoneNumber,
      this.imageUrl,
      this.facebookUrl,
      required this.memberLevels,
      required this.role})
      : super._();

  factory _$_Member.fromJson(Map<String, dynamic> json) =>
      _$$_MemberFromJson(json);

  @override
  final String memberId;
  @override
  final String emailAddress;
  @override
  final String fullName;
  @override
  final String? phoneNumber;
  @override
  final String? imageUrl;
  @override
  final String? facebookUrl;
  @override
  final MemberLevels memberLevels;
  @override
  final Role role;

  @override
  String toString() {
    return 'Member(memberId: $memberId, emailAddress: $emailAddress, fullName: $fullName, phoneNumber: $phoneNumber, imageUrl: $imageUrl, facebookUrl: $facebookUrl, memberLevels: $memberLevels, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Member &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.facebookUrl, facebookUrl) ||
                other.facebookUrl == facebookUrl) &&
            (identical(other.memberLevels, memberLevels) ||
                other.memberLevels == memberLevels) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, memberId, emailAddress, fullName,
      phoneNumber, imageUrl, facebookUrl, memberLevels, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberCopyWith<_$_Member> get copyWith =>
      __$$_MemberCopyWithImpl<_$_Member>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberToJson(
      this,
    );
  }
}

abstract class _Member extends Member {
  factory _Member(
      {required final String memberId,
      required final String emailAddress,
      required final String fullName,
      final String? phoneNumber,
      final String? imageUrl,
      final String? facebookUrl,
      required final MemberLevels memberLevels,
      required final Role role}) = _$_Member;
  _Member._() : super._();

  factory _Member.fromJson(Map<String, dynamic> json) = _$_Member.fromJson;

  @override
  String get memberId;
  @override
  String get emailAddress;
  @override
  String get fullName;
  @override
  String? get phoneNumber;
  @override
  String? get imageUrl;
  @override
  String? get facebookUrl;
  @override
  MemberLevels get memberLevels;
  @override
  Role get role;
  @override
  @JsonKey(ignore: true)
  _$$_MemberCopyWith<_$_Member> get copyWith =>
      throw _privateConstructorUsedError;
}

MemberLevels _$MemberLevelsFromJson(Map<String, dynamic> json) {
  return _MemberLevels.fromJson(json);
}

/// @nodoc
mixin _$MemberLevels {
  Level get level => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberLevelsCopyWith<MemberLevels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberLevelsCopyWith<$Res> {
  factory $MemberLevelsCopyWith(
          MemberLevels value, $Res Function(MemberLevels) then) =
      _$MemberLevelsCopyWithImpl<$Res, MemberLevels>;
  @useResult
  $Res call({Level level, DateTime createdAt});

  $LevelCopyWith<$Res> get level;
}

/// @nodoc
class _$MemberLevelsCopyWithImpl<$Res, $Val extends MemberLevels>
    implements $MemberLevelsCopyWith<$Res> {
  _$MemberLevelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LevelCopyWith<$Res> get level {
    return $LevelCopyWith<$Res>(_value.level, (value) {
      return _then(_value.copyWith(level: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MemberLevelsCopyWith<$Res>
    implements $MemberLevelsCopyWith<$Res> {
  factory _$$_MemberLevelsCopyWith(
          _$_MemberLevels value, $Res Function(_$_MemberLevels) then) =
      __$$_MemberLevelsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Level level, DateTime createdAt});

  @override
  $LevelCopyWith<$Res> get level;
}

/// @nodoc
class __$$_MemberLevelsCopyWithImpl<$Res>
    extends _$MemberLevelsCopyWithImpl<$Res, _$_MemberLevels>
    implements _$$_MemberLevelsCopyWith<$Res> {
  __$$_MemberLevelsCopyWithImpl(
      _$_MemberLevels _value, $Res Function(_$_MemberLevels) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? createdAt = null,
  }) {
    return _then(_$_MemberLevels(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MemberLevels extends _MemberLevels {
  _$_MemberLevels({required this.level, required this.createdAt}) : super._();

  factory _$_MemberLevels.fromJson(Map<String, dynamic> json) =>
      _$$_MemberLevelsFromJson(json);

  @override
  final Level level;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'MemberLevels(level: $level, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MemberLevels &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, level, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MemberLevelsCopyWith<_$_MemberLevels> get copyWith =>
      __$$_MemberLevelsCopyWithImpl<_$_MemberLevels>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberLevelsToJson(
      this,
    );
  }
}

abstract class _MemberLevels extends MemberLevels {
  factory _MemberLevels(
      {required final Level level,
      required final DateTime createdAt}) = _$_MemberLevels;
  _MemberLevels._() : super._();

  factory _MemberLevels.fromJson(Map<String, dynamic> json) =
      _$_MemberLevels.fromJson;

  @override
  Level get level;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_MemberLevelsCopyWith<_$_MemberLevels> get copyWith =>
      throw _privateConstructorUsedError;
}

Level _$LevelFromJson(Map<String, dynamic> json) {
  return _Level.fromJson(json);
}

/// @nodoc
mixin _$Level {
  String get levelId => throw _privateConstructorUsedError;
  String get levelName => throw _privateConstructorUsedError;
  int get basePoint => throw _privateConstructorUsedError;
  int get basePointPerHour => throw _privateConstructorUsedError;
  int get loyal => throw _privateConstructorUsedError;
  String get levelColor => throw _privateConstructorUsedError;
  int get xpNeeded => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LevelCopyWith<Level> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelCopyWith<$Res> {
  factory $LevelCopyWith(Level value, $Res Function(Level) then) =
      _$LevelCopyWithImpl<$Res, Level>;
  @useResult
  $Res call(
      {String levelId,
      String levelName,
      int basePoint,
      int basePointPerHour,
      int loyal,
      String levelColor,
      int xpNeeded});
}

/// @nodoc
class _$LevelCopyWithImpl<$Res, $Val extends Level>
    implements $LevelCopyWith<$Res> {
  _$LevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelId = null,
    Object? levelName = null,
    Object? basePoint = null,
    Object? basePointPerHour = null,
    Object? loyal = null,
    Object? levelColor = null,
    Object? xpNeeded = null,
  }) {
    return _then(_value.copyWith(
      levelId: null == levelId
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as String,
      levelName: null == levelName
          ? _value.levelName
          : levelName // ignore: cast_nullable_to_non_nullable
              as String,
      basePoint: null == basePoint
          ? _value.basePoint
          : basePoint // ignore: cast_nullable_to_non_nullable
              as int,
      basePointPerHour: null == basePointPerHour
          ? _value.basePointPerHour
          : basePointPerHour // ignore: cast_nullable_to_non_nullable
              as int,
      loyal: null == loyal
          ? _value.loyal
          : loyal // ignore: cast_nullable_to_non_nullable
              as int,
      levelColor: null == levelColor
          ? _value.levelColor
          : levelColor // ignore: cast_nullable_to_non_nullable
              as String,
      xpNeeded: null == xpNeeded
          ? _value.xpNeeded
          : xpNeeded // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LevelCopyWith<$Res> implements $LevelCopyWith<$Res> {
  factory _$$_LevelCopyWith(_$_Level value, $Res Function(_$_Level) then) =
      __$$_LevelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String levelId,
      String levelName,
      int basePoint,
      int basePointPerHour,
      int loyal,
      String levelColor,
      int xpNeeded});
}

/// @nodoc
class __$$_LevelCopyWithImpl<$Res> extends _$LevelCopyWithImpl<$Res, _$_Level>
    implements _$$_LevelCopyWith<$Res> {
  __$$_LevelCopyWithImpl(_$_Level _value, $Res Function(_$_Level) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levelId = null,
    Object? levelName = null,
    Object? basePoint = null,
    Object? basePointPerHour = null,
    Object? loyal = null,
    Object? levelColor = null,
    Object? xpNeeded = null,
  }) {
    return _then(_$_Level(
      levelId: null == levelId
          ? _value.levelId
          : levelId // ignore: cast_nullable_to_non_nullable
              as String,
      levelName: null == levelName
          ? _value.levelName
          : levelName // ignore: cast_nullable_to_non_nullable
              as String,
      basePoint: null == basePoint
          ? _value.basePoint
          : basePoint // ignore: cast_nullable_to_non_nullable
              as int,
      basePointPerHour: null == basePointPerHour
          ? _value.basePointPerHour
          : basePointPerHour // ignore: cast_nullable_to_non_nullable
              as int,
      loyal: null == loyal
          ? _value.loyal
          : loyal // ignore: cast_nullable_to_non_nullable
              as int,
      levelColor: null == levelColor
          ? _value.levelColor
          : levelColor // ignore: cast_nullable_to_non_nullable
              as String,
      xpNeeded: null == xpNeeded
          ? _value.xpNeeded
          : xpNeeded // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Level extends _Level {
  _$_Level(
      {required this.levelId,
      required this.levelName,
      required this.basePoint,
      required this.basePointPerHour,
      required this.loyal,
      required this.levelColor,
      required this.xpNeeded})
      : super._();

  factory _$_Level.fromJson(Map<String, dynamic> json) =>
      _$$_LevelFromJson(json);

  @override
  final String levelId;
  @override
  final String levelName;
  @override
  final int basePoint;
  @override
  final int basePointPerHour;
  @override
  final int loyal;
  @override
  final String levelColor;
  @override
  final int xpNeeded;

  @override
  String toString() {
    return 'Level(levelId: $levelId, levelName: $levelName, basePoint: $basePoint, basePointPerHour: $basePointPerHour, loyal: $loyal, levelColor: $levelColor, xpNeeded: $xpNeeded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Level &&
            (identical(other.levelId, levelId) || other.levelId == levelId) &&
            (identical(other.levelName, levelName) ||
                other.levelName == levelName) &&
            (identical(other.basePoint, basePoint) ||
                other.basePoint == basePoint) &&
            (identical(other.basePointPerHour, basePointPerHour) ||
                other.basePointPerHour == basePointPerHour) &&
            (identical(other.loyal, loyal) || other.loyal == loyal) &&
            (identical(other.levelColor, levelColor) ||
                other.levelColor == levelColor) &&
            (identical(other.xpNeeded, xpNeeded) ||
                other.xpNeeded == xpNeeded));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, levelId, levelName, basePoint,
      basePointPerHour, loyal, levelColor, xpNeeded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LevelCopyWith<_$_Level> get copyWith =>
      __$$_LevelCopyWithImpl<_$_Level>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LevelToJson(
      this,
    );
  }
}

abstract class _Level extends Level {
  factory _Level(
      {required final String levelId,
      required final String levelName,
      required final int basePoint,
      required final int basePointPerHour,
      required final int loyal,
      required final String levelColor,
      required final int xpNeeded}) = _$_Level;
  _Level._() : super._();

  factory _Level.fromJson(Map<String, dynamic> json) = _$_Level.fromJson;

  @override
  String get levelId;
  @override
  String get levelName;
  @override
  int get basePoint;
  @override
  int get basePointPerHour;
  @override
  int get loyal;
  @override
  String get levelColor;
  @override
  int get xpNeeded;
  @override
  @JsonKey(ignore: true)
  _$$_LevelCopyWith<_$_Level> get copyWith =>
      throw _privateConstructorUsedError;
}

Role _$RoleFromJson(Map<String, dynamic> json) {
  return _Role.fromJson(json);
}

/// @nodoc
mixin _$Role {
  String get roleId => throw _privateConstructorUsedError;
  String get roleName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoleCopyWith<Role> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleCopyWith<$Res> {
  factory $RoleCopyWith(Role value, $Res Function(Role) then) =
      _$RoleCopyWithImpl<$Res, Role>;
  @useResult
  $Res call({String roleId, String roleName});
}

/// @nodoc
class _$RoleCopyWithImpl<$Res, $Val extends Role>
    implements $RoleCopyWith<$Res> {
  _$RoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleId = null,
    Object? roleName = null,
  }) {
    return _then(_value.copyWith(
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String,
      roleName: null == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoleCopyWith<$Res> implements $RoleCopyWith<$Res> {
  factory _$$_RoleCopyWith(_$_Role value, $Res Function(_$_Role) then) =
      __$$_RoleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String roleId, String roleName});
}

/// @nodoc
class __$$_RoleCopyWithImpl<$Res> extends _$RoleCopyWithImpl<$Res, _$_Role>
    implements _$$_RoleCopyWith<$Res> {
  __$$_RoleCopyWithImpl(_$_Role _value, $Res Function(_$_Role) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleId = null,
    Object? roleName = null,
  }) {
    return _then(_$_Role(
      roleId: null == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String,
      roleName: null == roleName
          ? _value.roleName
          : roleName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Role extends _Role {
  _$_Role({required this.roleId, required this.roleName}) : super._();

  factory _$_Role.fromJson(Map<String, dynamic> json) => _$$_RoleFromJson(json);

  @override
  final String roleId;
  @override
  final String roleName;

  @override
  String toString() {
    return 'Role(roleId: $roleId, roleName: $roleName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Role &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.roleName, roleName) ||
                other.roleName == roleName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, roleId, roleName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoleCopyWith<_$_Role> get copyWith =>
      __$$_RoleCopyWithImpl<_$_Role>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoleToJson(
      this,
    );
  }
}

abstract class _Role extends Role {
  factory _Role(
      {required final String roleId, required final String roleName}) = _$_Role;
  _Role._() : super._();

  factory _Role.fromJson(Map<String, dynamic> json) = _$_Role.fromJson;

  @override
  String get roleId;
  @override
  String get roleName;
  @override
  @JsonKey(ignore: true)
  _$$_RoleCopyWith<_$_Role> get copyWith => throw _privateConstructorUsedError;
}
