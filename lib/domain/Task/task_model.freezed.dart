// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  String? get projectReportMemberTaskId => throw _privateConstructorUsedError;
  Project? get project => throw _privateConstructorUsedError;
  String? get taskName => throw _privateConstructorUsedError;
  String? get taskDescription => throw _privateConstructorUsedError;
  double get taskHour => throw _privateConstructorUsedError;
  double get taskRealHour => throw _privateConstructorUsedError;
  double get taskPoint => throw _privateConstructorUsedError;
  String? get bonusReason => throw _privateConstructorUsedError;
  double get taskBonus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {String? projectReportMemberTaskId,
      Project? project,
      String? taskName,
      String? taskDescription,
      double taskHour,
      double taskRealHour,
      double taskPoint,
      String? bonusReason,
      double taskBonus});

  $ProjectCopyWith<$Res>? get project;
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectReportMemberTaskId = freezed,
    Object? project = freezed,
    Object? taskName = freezed,
    Object? taskDescription = freezed,
    Object? taskHour = null,
    Object? taskRealHour = null,
    Object? taskPoint = null,
    Object? bonusReason = freezed,
    Object? taskBonus = null,
  }) {
    return _then(_value.copyWith(
      projectReportMemberTaskId: freezed == projectReportMemberTaskId
          ? _value.projectReportMemberTaskId
          : projectReportMemberTaskId // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project?,
      taskName: freezed == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String?,
      taskDescription: freezed == taskDescription
          ? _value.taskDescription
          : taskDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      taskHour: null == taskHour
          ? _value.taskHour
          : taskHour // ignore: cast_nullable_to_non_nullable
              as double,
      taskRealHour: null == taskRealHour
          ? _value.taskRealHour
          : taskRealHour // ignore: cast_nullable_to_non_nullable
              as double,
      taskPoint: null == taskPoint
          ? _value.taskPoint
          : taskPoint // ignore: cast_nullable_to_non_nullable
              as double,
      bonusReason: freezed == bonusReason
          ? _value.bonusReason
          : bonusReason // ignore: cast_nullable_to_non_nullable
              as String?,
      taskBonus: null == taskBonus
          ? _value.taskBonus
          : taskBonus // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res>? get project {
    if (_value.project == null) {
      return null;
    }

    return $ProjectCopyWith<$Res>(_value.project!, (value) {
      return _then(_value.copyWith(project: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$_TaskCopyWith(_$_Task value, $Res Function(_$_Task) then) =
      __$$_TaskCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? projectReportMemberTaskId,
      Project? project,
      String? taskName,
      String? taskDescription,
      double taskHour,
      double taskRealHour,
      double taskPoint,
      String? bonusReason,
      double taskBonus});

  @override
  $ProjectCopyWith<$Res>? get project;
}

/// @nodoc
class __$$_TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res, _$_Task>
    implements _$$_TaskCopyWith<$Res> {
  __$$_TaskCopyWithImpl(_$_Task _value, $Res Function(_$_Task) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectReportMemberTaskId = freezed,
    Object? project = freezed,
    Object? taskName = freezed,
    Object? taskDescription = freezed,
    Object? taskHour = null,
    Object? taskRealHour = null,
    Object? taskPoint = null,
    Object? bonusReason = freezed,
    Object? taskBonus = null,
  }) {
    return _then(_$_Task(
      projectReportMemberTaskId: freezed == projectReportMemberTaskId
          ? _value.projectReportMemberTaskId
          : projectReportMemberTaskId // ignore: cast_nullable_to_non_nullable
              as String?,
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project?,
      taskName: freezed == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String?,
      taskDescription: freezed == taskDescription
          ? _value.taskDescription
          : taskDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      taskHour: null == taskHour
          ? _value.taskHour
          : taskHour // ignore: cast_nullable_to_non_nullable
              as double,
      taskRealHour: null == taskRealHour
          ? _value.taskRealHour
          : taskRealHour // ignore: cast_nullable_to_non_nullable
              as double,
      taskPoint: null == taskPoint
          ? _value.taskPoint
          : taskPoint // ignore: cast_nullable_to_non_nullable
              as double,
      bonusReason: freezed == bonusReason
          ? _value.bonusReason
          : bonusReason // ignore: cast_nullable_to_non_nullable
              as String?,
      taskBonus: null == taskBonus
          ? _value.taskBonus
          : taskBonus // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Task extends _Task {
  _$_Task(
      {this.projectReportMemberTaskId,
      this.project,
      this.taskName,
      this.taskDescription,
      required this.taskHour,
      required this.taskRealHour,
      required this.taskPoint,
      this.bonusReason,
      required this.taskBonus})
      : super._();

  factory _$_Task.fromJson(Map<String, dynamic> json) => _$$_TaskFromJson(json);

  @override
  final String? projectReportMemberTaskId;
  @override
  final Project? project;
  @override
  final String? taskName;
  @override
  final String? taskDescription;
  @override
  final double taskHour;
  @override
  final double taskRealHour;
  @override
  final double taskPoint;
  @override
  final String? bonusReason;
  @override
  final double taskBonus;

  @override
  String toString() {
    return 'Task(projectReportMemberTaskId: $projectReportMemberTaskId, project: $project, taskName: $taskName, taskDescription: $taskDescription, taskHour: $taskHour, taskRealHour: $taskRealHour, taskPoint: $taskPoint, bonusReason: $bonusReason, taskBonus: $taskBonus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Task &&
            (identical(other.projectReportMemberTaskId,
                    projectReportMemberTaskId) ||
                other.projectReportMemberTaskId == projectReportMemberTaskId) &&
            (identical(other.project, project) || other.project == project) &&
            (identical(other.taskName, taskName) ||
                other.taskName == taskName) &&
            (identical(other.taskDescription, taskDescription) ||
                other.taskDescription == taskDescription) &&
            (identical(other.taskHour, taskHour) ||
                other.taskHour == taskHour) &&
            (identical(other.taskRealHour, taskRealHour) ||
                other.taskRealHour == taskRealHour) &&
            (identical(other.taskPoint, taskPoint) ||
                other.taskPoint == taskPoint) &&
            (identical(other.bonusReason, bonusReason) ||
                other.bonusReason == bonusReason) &&
            (identical(other.taskBonus, taskBonus) ||
                other.taskBonus == taskBonus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      projectReportMemberTaskId,
      project,
      taskName,
      taskDescription,
      taskHour,
      taskRealHour,
      taskPoint,
      bonusReason,
      taskBonus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskCopyWith<_$_Task> get copyWith =>
      __$$_TaskCopyWithImpl<_$_Task>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskToJson(
      this,
    );
  }
}

abstract class _Task extends Task {
  factory _Task(
      {final String? projectReportMemberTaskId,
      final Project? project,
      final String? taskName,
      final String? taskDescription,
      required final double taskHour,
      required final double taskRealHour,
      required final double taskPoint,
      final String? bonusReason,
      required final double taskBonus}) = _$_Task;
  _Task._() : super._();

  factory _Task.fromJson(Map<String, dynamic> json) = _$_Task.fromJson;

  @override
  String? get projectReportMemberTaskId;
  @override
  Project? get project;
  @override
  String? get taskName;
  @override
  String? get taskDescription;
  @override
  double get taskHour;
  @override
  double get taskRealHour;
  @override
  double get taskPoint;
  @override
  String? get bonusReason;
  @override
  double get taskBonus;
  @override
  @JsonKey(ignore: true)
  _$$_TaskCopyWith<_$_Task> get copyWith => throw _privateConstructorUsedError;
}
