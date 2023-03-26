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
  List<Payslips>? get payslips => throw _privateConstructorUsedError;
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
      List<Payslips>? payslips,
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
              as List<Payslips>?,
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
      List<Payslips>? payslips,
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
              as List<Payslips>?,
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
      final List<Payslips>? payslips,
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
  final List<Payslips>? _payslips;
  @override
  List<Payslips>? get payslips {
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
      final List<Payslips>? payslips,
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
  List<Payslips>? get payslips;
  @override
  SalaryCycleStatusEnum get status;
  @override
  @JsonKey(ignore: true)
  _$$_SalaryCycleCopyWith<_$_SalaryCycle> get copyWith =>
      throw _privateConstructorUsedError;
}

Payslips _$PayslipsFromJson(Map<String, dynamic> json) {
  return _Payslips.fromJson(json);
}

/// @nodoc
mixin _$Payslips {
  String get payslipId => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  Member? get member => throw _privateConstructorUsedError;
  List<Items>? get items => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayslipsCopyWith<Payslips> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayslipsCopyWith<$Res> {
  factory $PayslipsCopyWith(Payslips value, $Res Function(Payslips) then) =
      _$PayslipsCopyWithImpl<$Res, Payslips>;
  @useResult
  $Res call(
      {String payslipId,
      String? note,
      Member? member,
      List<Items>? items,
      DateTime? createdAt});

  $MemberCopyWith<$Res>? get member;
}

/// @nodoc
class _$PayslipsCopyWithImpl<$Res, $Val extends Payslips>
    implements $PayslipsCopyWith<$Res> {
  _$PayslipsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payslipId = null,
    Object? note = freezed,
    Object? member = freezed,
    Object? items = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      payslipId: null == payslipId
          ? _value.payslipId
          : payslipId // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      member: freezed == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as Member?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MemberCopyWith<$Res>? get member {
    if (_value.member == null) {
      return null;
    }

    return $MemberCopyWith<$Res>(_value.member!, (value) {
      return _then(_value.copyWith(member: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PayslipsCopyWith<$Res> implements $PayslipsCopyWith<$Res> {
  factory _$$_PayslipsCopyWith(
          _$_Payslips value, $Res Function(_$_Payslips) then) =
      __$$_PayslipsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String payslipId,
      String? note,
      Member? member,
      List<Items>? items,
      DateTime? createdAt});

  @override
  $MemberCopyWith<$Res>? get member;
}

/// @nodoc
class __$$_PayslipsCopyWithImpl<$Res>
    extends _$PayslipsCopyWithImpl<$Res, _$_Payslips>
    implements _$$_PayslipsCopyWith<$Res> {
  __$$_PayslipsCopyWithImpl(
      _$_Payslips _value, $Res Function(_$_Payslips) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payslipId = null,
    Object? note = freezed,
    Object? member = freezed,
    Object? items = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_Payslips(
      payslipId: null == payslipId
          ? _value.payslipId
          : payslipId // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      member: freezed == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as Member?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Payslips extends _Payslips {
  _$_Payslips(
      {required this.payslipId,
      this.note,
      this.member,
      final List<Items>? items,
      this.createdAt})
      : _items = items,
        super._();

  factory _$_Payslips.fromJson(Map<String, dynamic> json) =>
      _$$_PayslipsFromJson(json);

  @override
  final String payslipId;
  @override
  final String? note;
  @override
  final Member? member;
  final List<Items>? _items;
  @override
  List<Items>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Payslips(payslipId: $payslipId, note: $note, member: $member, items: $items, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Payslips &&
            (identical(other.payslipId, payslipId) ||
                other.payslipId == payslipId) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.member, member) || other.member == member) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, payslipId, note, member,
      const DeepCollectionEquality().hash(_items), createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PayslipsCopyWith<_$_Payslips> get copyWith =>
      __$$_PayslipsCopyWithImpl<_$_Payslips>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PayslipsToJson(
      this,
    );
  }
}

abstract class _Payslips extends Payslips {
  factory _Payslips(
      {required final String payslipId,
      final String? note,
      final Member? member,
      final List<Items>? items,
      final DateTime? createdAt}) = _$_Payslips;
  _Payslips._() : super._();

  factory _Payslips.fromJson(Map<String, dynamic> json) = _$_Payslips.fromJson;

  @override
  String get payslipId;
  @override
  String? get note;
  @override
  Member? get member;
  @override
  List<Items>? get items;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_PayslipsCopyWith<_$_Payslips> get copyWith =>
      throw _privateConstructorUsedError;
}

Items _$ItemsFromJson(Map<String, dynamic> json) {
  return _Items.fromJson(json);
}

/// @nodoc
mixin _$Items {
  String get payslipItemId => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemsCopyWith<Items> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsCopyWith<$Res> {
  factory $ItemsCopyWith(Items value, $Res Function(Items) then) =
      _$ItemsCopyWithImpl<$Res, Items>;
  @useResult
  $Res call(
      {String payslipItemId,
      String? token,
      int? amount,
      String? note,
      DateTime? createdAt});
}

/// @nodoc
class _$ItemsCopyWithImpl<$Res, $Val extends Items>
    implements $ItemsCopyWith<$Res> {
  _$ItemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payslipItemId = null,
    Object? token = freezed,
    Object? amount = freezed,
    Object? note = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      payslipItemId: null == payslipItemId
          ? _value.payslipItemId
          : payslipItemId // ignore: cast_nullable_to_non_nullable
              as String,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemsCopyWith<$Res> implements $ItemsCopyWith<$Res> {
  factory _$$_ItemsCopyWith(_$_Items value, $Res Function(_$_Items) then) =
      __$$_ItemsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String payslipItemId,
      String? token,
      int? amount,
      String? note,
      DateTime? createdAt});
}

/// @nodoc
class __$$_ItemsCopyWithImpl<$Res> extends _$ItemsCopyWithImpl<$Res, _$_Items>
    implements _$$_ItemsCopyWith<$Res> {
  __$$_ItemsCopyWithImpl(_$_Items _value, $Res Function(_$_Items) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payslipItemId = null,
    Object? token = freezed,
    Object? amount = freezed,
    Object? note = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_Items(
      payslipItemId: null == payslipItemId
          ? _value.payslipItemId
          : payslipItemId // ignore: cast_nullable_to_non_nullable
              as String,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Items extends _Items {
  _$_Items(
      {required this.payslipItemId,
      this.token,
      this.amount,
      this.note,
      this.createdAt})
      : super._();

  factory _$_Items.fromJson(Map<String, dynamic> json) =>
      _$$_ItemsFromJson(json);

  @override
  final String payslipItemId;
  @override
  final String? token;
  @override
  final int? amount;
  @override
  final String? note;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Items(payslipItemId: $payslipItemId, token: $token, amount: $amount, note: $note, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Items &&
            (identical(other.payslipItemId, payslipItemId) ||
                other.payslipItemId == payslipItemId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, payslipItemId, token, amount, note, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemsCopyWith<_$_Items> get copyWith =>
      __$$_ItemsCopyWithImpl<_$_Items>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemsToJson(
      this,
    );
  }
}

abstract class _Items extends Items {
  factory _Items(
      {required final String payslipItemId,
      final String? token,
      final int? amount,
      final String? note,
      final DateTime? createdAt}) = _$_Items;
  _Items._() : super._();

  factory _Items.fromJson(Map<String, dynamic> json) = _$_Items.fromJson;

  @override
  String get payslipItemId;
  @override
  String? get token;
  @override
  int? get amount;
  @override
  String? get note;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_ItemsCopyWith<_$_Items> get copyWith =>
      throw _privateConstructorUsedError;
}
