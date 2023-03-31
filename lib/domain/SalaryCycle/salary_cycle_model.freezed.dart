// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'salary_cycle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalaryCycle _$SalaryCycleFromJson(Map<String, dynamic> json) {
  return _SalaryCycle.fromJson(json);
}

/// @nodoc
mixin _$SalaryCycle {
  String get salaryCycleId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get endedAt => throw _privateConstructorUsedError;
  List<Payslip>? get payslips => throw _privateConstructorUsedError;
  SalaryCycleStatusEnum get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalaryCycleCopyWith<SalaryCycle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalaryCycleCopyWith<$Res> {
  factory $SalaryCycleCopyWith(
          SalaryCycle value, $Res Function(SalaryCycle) then) =
      _$SalaryCycleCopyWithImpl<$Res, SalaryCycle>;
  @useResult
  $Res call(
      {String salaryCycleId,
      DateTime createdAt,
      DateTime? endedAt,
      List<Payslip>? payslips,
      SalaryCycleStatusEnum status});
}

/// @nodoc
class _$SalaryCycleCopyWithImpl<$Res, $Val extends SalaryCycle>
    implements $SalaryCycleCopyWith<$Res> {
  _$SalaryCycleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salaryCycleId = null,
    Object? createdAt = null,
    Object? endedAt = freezed,
    Object? payslips = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      salaryCycleId: null == salaryCycleId
          ? _value.salaryCycleId
          : salaryCycleId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      payslips: freezed == payslips
          ? _value.payslips
          : payslips // ignore: cast_nullable_to_non_nullable
              as List<Payslip>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SalaryCycleStatusEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SalaryCycleCopyWith<$Res>
    implements $SalaryCycleCopyWith<$Res> {
  factory _$$_SalaryCycleCopyWith(
          _$_SalaryCycle value, $Res Function(_$_SalaryCycle) then) =
      __$$_SalaryCycleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String salaryCycleId,
      DateTime createdAt,
      DateTime? endedAt,
      List<Payslip>? payslips,
      SalaryCycleStatusEnum status});
}

/// @nodoc
class __$$_SalaryCycleCopyWithImpl<$Res>
    extends _$SalaryCycleCopyWithImpl<$Res, _$_SalaryCycle>
    implements _$$_SalaryCycleCopyWith<$Res> {
  __$$_SalaryCycleCopyWithImpl(
      _$_SalaryCycle _value, $Res Function(_$_SalaryCycle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? salaryCycleId = null,
    Object? createdAt = null,
    Object? endedAt = freezed,
    Object? payslips = freezed,
    Object? status = null,
  }) {
    return _then(_$_SalaryCycle(
      salaryCycleId: null == salaryCycleId
          ? _value.salaryCycleId
          : salaryCycleId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endedAt: freezed == endedAt
          ? _value.endedAt
          : endedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      payslips: freezed == payslips
          ? _value._payslips
          : payslips // ignore: cast_nullable_to_non_nullable
              as List<Payslip>?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SalaryCycleStatusEnum,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SalaryCycle extends _SalaryCycle {
  _$_SalaryCycle(
      {required this.salaryCycleId,
      required this.createdAt,
      this.endedAt,
      final List<Payslip>? payslips,
      required this.status})
      : _payslips = payslips,
        super._();

  factory _$_SalaryCycle.fromJson(Map<String, dynamic> json) =>
      _$$_SalaryCycleFromJson(json);

  @override
  final String salaryCycleId;
  @override
  final DateTime createdAt;
  @override
  final DateTime? endedAt;
  final List<Payslip>? _payslips;
  @override
  List<Payslip>? get payslips {
    final value = _payslips;
    if (value == null) return null;
    if (_payslips is EqualUnmodifiableListView) return _payslips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SalaryCycleStatusEnum status;

  @override
  String toString() {
    return 'SalaryCycle(salaryCycleId: $salaryCycleId, createdAt: $createdAt, endedAt: $endedAt, payslips: $payslips, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalaryCycle &&
            (identical(other.salaryCycleId, salaryCycleId) ||
                other.salaryCycleId == salaryCycleId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            const DeepCollectionEquality().equals(other._payslips, _payslips) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, salaryCycleId, createdAt,
      endedAt, const DeepCollectionEquality().hash(_payslips), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SalaryCycleCopyWith<_$_SalaryCycle> get copyWith =>
      __$$_SalaryCycleCopyWithImpl<_$_SalaryCycle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalaryCycleToJson(
      this,
    );
  }
}

abstract class _SalaryCycle extends SalaryCycle {
  factory _SalaryCycle(
      {required final String salaryCycleId,
      required final DateTime createdAt,
      final DateTime? endedAt,
      final List<Payslip>? payslips,
      required final SalaryCycleStatusEnum status}) = _$_SalaryCycle;
  _SalaryCycle._() : super._();

  factory _SalaryCycle.fromJson(Map<String, dynamic> json) =
      _$_SalaryCycle.fromJson;

  @override
  String get salaryCycleId;
  @override
  DateTime get createdAt;
  @override
  DateTime? get endedAt;
  @override
  List<Payslip>? get payslips;
  @override
  SalaryCycleStatusEnum get status;
  @override
  @JsonKey(ignore: true)
  _$$_SalaryCycleCopyWith<_$_SalaryCycle> get copyWith =>
      throw _privateConstructorUsedError;
}
