// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'level_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Level _$LevelFromJson(Map<String, dynamic> json) {
  return _Level.fromJson(json);
}

/// @nodoc
mixin _$Level {
  int get levelId => throw _privateConstructorUsedError;
  String get levelName => throw _privateConstructorUsedError;
  double get basePoint => throw _privateConstructorUsedError;
  double get basePointPerHour => throw _privateConstructorUsedError;
  double get loyal => throw _privateConstructorUsedError;
  String get levelColor => throw _privateConstructorUsedError;
  double get xpNeeded => throw _privateConstructorUsedError;

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
      {int levelId,
      String levelName,
      double basePoint,
      double basePointPerHour,
      double loyal,
      String levelColor,
      double xpNeeded});
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
              as int,
      levelName: null == levelName
          ? _value.levelName
          : levelName // ignore: cast_nullable_to_non_nullable
              as String,
      basePoint: null == basePoint
          ? _value.basePoint
          : basePoint // ignore: cast_nullable_to_non_nullable
              as double,
      basePointPerHour: null == basePointPerHour
          ? _value.basePointPerHour
          : basePointPerHour // ignore: cast_nullable_to_non_nullable
              as double,
      loyal: null == loyal
          ? _value.loyal
          : loyal // ignore: cast_nullable_to_non_nullable
              as double,
      levelColor: null == levelColor
          ? _value.levelColor
          : levelColor // ignore: cast_nullable_to_non_nullable
              as String,
      xpNeeded: null == xpNeeded
          ? _value.xpNeeded
          : xpNeeded // ignore: cast_nullable_to_non_nullable
              as double,
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
      {int levelId,
      String levelName,
      double basePoint,
      double basePointPerHour,
      double loyal,
      String levelColor,
      double xpNeeded});
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
              as int,
      levelName: null == levelName
          ? _value.levelName
          : levelName // ignore: cast_nullable_to_non_nullable
              as String,
      basePoint: null == basePoint
          ? _value.basePoint
          : basePoint // ignore: cast_nullable_to_non_nullable
              as double,
      basePointPerHour: null == basePointPerHour
          ? _value.basePointPerHour
          : basePointPerHour // ignore: cast_nullable_to_non_nullable
              as double,
      loyal: null == loyal
          ? _value.loyal
          : loyal // ignore: cast_nullable_to_non_nullable
              as double,
      levelColor: null == levelColor
          ? _value.levelColor
          : levelColor // ignore: cast_nullable_to_non_nullable
              as String,
      xpNeeded: null == xpNeeded
          ? _value.xpNeeded
          : xpNeeded // ignore: cast_nullable_to_non_nullable
              as double,
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
  final int levelId;
  @override
  final String levelName;
  @override
  final double basePoint;
  @override
  final double basePointPerHour;
  @override
  final double loyal;
  @override
  final String levelColor;
  @override
  final double xpNeeded;

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
      {required final int levelId,
      required final String levelName,
      required final double basePoint,
      required final double basePointPerHour,
      required final double loyal,
      required final String levelColor,
      required final double xpNeeded}) = _$_Level;
  _Level._() : super._();

  factory _Level.fromJson(Map<String, dynamic> json) = _$_Level.fromJson;

  @override
  int get levelId;
  @override
  String get levelName;
  @override
  double get basePoint;
  @override
  double get basePointPerHour;
  @override
  double get loyal;
  @override
  String get levelColor;
  @override
  double get xpNeeded;
  @override
  @JsonKey(ignore: true)
  _$$_LevelCopyWith<_$_Level> get copyWith =>
      throw _privateConstructorUsedError;
}
