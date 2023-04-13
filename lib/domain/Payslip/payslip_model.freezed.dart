// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payslip_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Payslip _$PayslipFromJson(Map<String, dynamic> json) {
  return _Payslip.fromJson(json);
}

/// @nodoc
mixin _$Payslip {
  String get payslipId => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  Member? get member => throw _privateConstructorUsedError;
  double? get totalP1 => throw _privateConstructorUsedError;
  double? get totalP2 => throw _privateConstructorUsedError;
  double? get totalP3 => throw _privateConstructorUsedError;
  double? get totalXP => throw _privateConstructorUsedError;
  List<Item>? get items => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayslipCopyWith<Payslip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayslipCopyWith<$Res> {
  factory $PayslipCopyWith(Payslip value, $Res Function(Payslip) then) =
      _$PayslipCopyWithImpl<$Res, Payslip>;
  @useResult
  $Res call(
      {String payslipId,
      String? note,
      Member? member,
      double? totalP1,
      double? totalP2,
      double? totalP3,
      double? totalXP,
      List<Item>? items,
      DateTime? createdAt});

  $MemberCopyWith<$Res>? get member;
}

/// @nodoc
class _$PayslipCopyWithImpl<$Res, $Val extends Payslip>
    implements $PayslipCopyWith<$Res> {
  _$PayslipCopyWithImpl(this._value, this._then);

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
    Object? totalP1 = freezed,
    Object? totalP2 = freezed,
    Object? totalP3 = freezed,
    Object? totalXP = freezed,
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
      totalP1: freezed == totalP1
          ? _value.totalP1
          : totalP1 // ignore: cast_nullable_to_non_nullable
              as double?,
      totalP2: freezed == totalP2
          ? _value.totalP2
          : totalP2 // ignore: cast_nullable_to_non_nullable
              as double?,
      totalP3: freezed == totalP3
          ? _value.totalP3
          : totalP3 // ignore: cast_nullable_to_non_nullable
              as double?,
      totalXP: freezed == totalXP
          ? _value.totalXP
          : totalXP // ignore: cast_nullable_to_non_nullable
              as double?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
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
abstract class _$$_PayslipCopyWith<$Res> implements $PayslipCopyWith<$Res> {
  factory _$$_PayslipCopyWith(
          _$_Payslip value, $Res Function(_$_Payslip) then) =
      __$$_PayslipCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String payslipId,
      String? note,
      Member? member,
      double? totalP1,
      double? totalP2,
      double? totalP3,
      double? totalXP,
      List<Item>? items,
      DateTime? createdAt});

  @override
  $MemberCopyWith<$Res>? get member;
}

/// @nodoc
class __$$_PayslipCopyWithImpl<$Res>
    extends _$PayslipCopyWithImpl<$Res, _$_Payslip>
    implements _$$_PayslipCopyWith<$Res> {
  __$$_PayslipCopyWithImpl(_$_Payslip _value, $Res Function(_$_Payslip) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payslipId = null,
    Object? note = freezed,
    Object? member = freezed,
    Object? totalP1 = freezed,
    Object? totalP2 = freezed,
    Object? totalP3 = freezed,
    Object? totalXP = freezed,
    Object? items = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_Payslip(
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
      totalP1: freezed == totalP1
          ? _value.totalP1
          : totalP1 // ignore: cast_nullable_to_non_nullable
              as double?,
      totalP2: freezed == totalP2
          ? _value.totalP2
          : totalP2 // ignore: cast_nullable_to_non_nullable
              as double?,
      totalP3: freezed == totalP3
          ? _value.totalP3
          : totalP3 // ignore: cast_nullable_to_non_nullable
              as double?,
      totalXP: freezed == totalXP
          ? _value.totalXP
          : totalXP // ignore: cast_nullable_to_non_nullable
              as double?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Payslip extends _Payslip {
  _$_Payslip(
      {required this.payslipId,
      this.note,
      this.member,
      this.totalP1,
      this.totalP2,
      this.totalP3,
      this.totalXP,
      final List<Item>? items,
      this.createdAt})
      : _items = items,
        super._();

  factory _$_Payslip.fromJson(Map<String, dynamic> json) =>
      _$$_PayslipFromJson(json);

  @override
  final String payslipId;
  @override
  final String? note;
  @override
  final Member? member;
  @override
  final double? totalP1;
  @override
  final double? totalP2;
  @override
  final double? totalP3;
  @override
  final double? totalXP;
  final List<Item>? _items;
  @override
  List<Item>? get items {
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
    return 'Payslip(payslipId: $payslipId, note: $note, member: $member, totalP1: $totalP1, totalP2: $totalP2, totalP3: $totalP3, totalXP: $totalXP, items: $items, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Payslip &&
            (identical(other.payslipId, payslipId) ||
                other.payslipId == payslipId) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.member, member) || other.member == member) &&
            (identical(other.totalP1, totalP1) || other.totalP1 == totalP1) &&
            (identical(other.totalP2, totalP2) || other.totalP2 == totalP2) &&
            (identical(other.totalP3, totalP3) || other.totalP3 == totalP3) &&
            (identical(other.totalXP, totalXP) || other.totalXP == totalXP) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      payslipId,
      note,
      member,
      totalP1,
      totalP2,
      totalP3,
      totalXP,
      const DeepCollectionEquality().hash(_items),
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PayslipCopyWith<_$_Payslip> get copyWith =>
      __$$_PayslipCopyWithImpl<_$_Payslip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PayslipToJson(
      this,
    );
  }
}

abstract class _Payslip extends Payslip {
  factory _Payslip(
      {required final String payslipId,
      final String? note,
      final Member? member,
      final double? totalP1,
      final double? totalP2,
      final double? totalP3,
      final double? totalXP,
      final List<Item>? items,
      final DateTime? createdAt}) = _$_Payslip;
  _Payslip._() : super._();

  factory _Payslip.fromJson(Map<String, dynamic> json) = _$_Payslip.fromJson;

  @override
  String get payslipId;
  @override
  String? get note;
  @override
  Member? get member;
  @override
  double? get totalP1;
  @override
  double? get totalP2;
  @override
  double? get totalP3;
  @override
  double? get totalXP;
  @override
  List<Item>? get items;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_PayslipCopyWith<_$_Payslip> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String get payslipItemId => throw _privateConstructorUsedError;
  WalletTokenEnum? get token => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  PayslipItemTypeEnum? get type => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {String payslipItemId,
      WalletTokenEnum? token,
      int? amount,
      String? note,
      PayslipItemTypeEnum? type,
      DateTime? createdAt});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

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
    Object? type = freezed,
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
              as WalletTokenEnum?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PayslipItemTypeEnum?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$_ItemCopyWith(_$_Item value, $Res Function(_$_Item) then) =
      __$$_ItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String payslipItemId,
      WalletTokenEnum? token,
      int? amount,
      String? note,
      PayslipItemTypeEnum? type,
      DateTime? createdAt});
}

/// @nodoc
class __$$_ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res, _$_Item>
    implements _$$_ItemCopyWith<$Res> {
  __$$_ItemCopyWithImpl(_$_Item _value, $Res Function(_$_Item) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payslipItemId = null,
    Object? token = freezed,
    Object? amount = freezed,
    Object? note = freezed,
    Object? type = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_Item(
      payslipItemId: null == payslipItemId
          ? _value.payslipItemId
          : payslipItemId // ignore: cast_nullable_to_non_nullable
              as String,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as WalletTokenEnum?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PayslipItemTypeEnum?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item extends _Item {
  _$_Item(
      {required this.payslipItemId,
      this.token,
      this.amount,
      this.note,
      this.type,
      this.createdAt})
      : super._();

  factory _$_Item.fromJson(Map<String, dynamic> json) => _$$_ItemFromJson(json);

  @override
  final String payslipItemId;
  @override
  final WalletTokenEnum? token;
  @override
  final int? amount;
  @override
  final String? note;
  @override
  final PayslipItemTypeEnum? type;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Item(payslipItemId: $payslipItemId, token: $token, amount: $amount, note: $note, type: $type, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Item &&
            (identical(other.payslipItemId, payslipItemId) ||
                other.payslipItemId == payslipItemId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, payslipItemId, token, amount, note, type, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemCopyWith<_$_Item> get copyWith =>
      __$$_ItemCopyWithImpl<_$_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemToJson(
      this,
    );
  }
}

abstract class _Item extends Item {
  factory _Item(
      {required final String payslipItemId,
      final WalletTokenEnum? token,
      final int? amount,
      final String? note,
      final PayslipItemTypeEnum? type,
      final DateTime? createdAt}) = _$_Item;
  _Item._() : super._();

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  String get payslipItemId;
  @override
  WalletTokenEnum? get token;
  @override
  int? get amount;
  @override
  String? get note;
  @override
  PayslipItemTypeEnum? get type;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCopyWith<_$_Item> get copyWith => throw _privateConstructorUsedError;
}
