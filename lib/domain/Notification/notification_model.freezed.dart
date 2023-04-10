// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationModel {
  String get notificationId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get target => throw _privateConstructorUsedError;
  bool? get isRead => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call(
      {String notificationId,
      String type,
      String content,
      String title,
      String? target,
      bool? isRead,
      DateTime? createdAt});
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = null,
    Object? type = null,
    Object? content = null,
    Object? title = null,
    Object? target = freezed,
    Object? isRead = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      notificationId: null == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      target: freezed == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String?,
      isRead: freezed == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationModelCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$_NotificationModelCopyWith(_$_NotificationModel value,
          $Res Function(_$_NotificationModel) then) =
      __$$_NotificationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String notificationId,
      String type,
      String content,
      String title,
      String? target,
      bool? isRead,
      DateTime? createdAt});
}

/// @nodoc
class __$$_NotificationModelCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$_NotificationModel>
    implements _$$_NotificationModelCopyWith<$Res> {
  __$$_NotificationModelCopyWithImpl(
      _$_NotificationModel _value, $Res Function(_$_NotificationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = null,
    Object? type = null,
    Object? content = null,
    Object? title = null,
    Object? target = freezed,
    Object? isRead = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_NotificationModel(
      notificationId: null == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      target: freezed == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as String?,
      isRead: freezed == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationModel extends _NotificationModel {
  _$_NotificationModel(
      {required this.notificationId,
      required this.type,
      required this.content,
      required this.title,
      this.target,
      this.isRead,
      this.createdAt})
      : super._();

  factory _$_NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationModelFromJson(json);

  @override
  final String notificationId;
  @override
  final String type;
  @override
  final String content;
  @override
  final String title;
  @override
  final String? target;
  @override
  final bool? isRead;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'NotificationModel(notificationId: $notificationId, type: $type, content: $content, title: $title, target: $target, isRead: $isRead, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationModel &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, notificationId, type, content,
      title, target, isRead, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationModelCopyWith<_$_NotificationModel> get copyWith =>
      __$$_NotificationModelCopyWithImpl<_$_NotificationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationModelToJson(
      this,
    );
  }
}

abstract class _NotificationModel extends NotificationModel {
  factory _NotificationModel(
      {required final String notificationId,
      required final String type,
      required final String content,
      required final String title,
      final String? target,
      final bool? isRead,
      final DateTime? createdAt}) = _$_NotificationModel;
  _NotificationModel._() : super._();

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$_NotificationModel.fromJson;

  @override
  String get notificationId;
  @override
  String get type;
  @override
  String get content;
  @override
  String get title;
  @override
  String? get target;
  @override
  bool? get isRead;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationModelCopyWith<_$_NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
