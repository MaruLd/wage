// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fcm_notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FCMNotificationModel _$FCMNotificationModelFromJson(Map<String, dynamic> json) {
  return _FCMNotificationModel.fromJson(json);
}

/// @nodoc
mixin _$FCMNotificationModel {
  String get Type => throw _privateConstructorUsedError;
  String get Content => throw _privateConstructorUsedError;
  String get Title => throw _privateConstructorUsedError;
  String? get Target => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FCMNotificationModelCopyWith<FCMNotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FCMNotificationModelCopyWith<$Res> {
  factory $FCMNotificationModelCopyWith(FCMNotificationModel value,
          $Res Function(FCMNotificationModel) then) =
      _$FCMNotificationModelCopyWithImpl<$Res, FCMNotificationModel>;
  @useResult
  $Res call({String Type, String Content, String Title, String? Target});
}

/// @nodoc
class _$FCMNotificationModelCopyWithImpl<$Res,
        $Val extends FCMNotificationModel>
    implements $FCMNotificationModelCopyWith<$Res> {
  _$FCMNotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Type = null,
    Object? Content = null,
    Object? Title = null,
    Object? Target = freezed,
  }) {
    return _then(_value.copyWith(
      Type: null == Type
          ? _value.Type
          : Type // ignore: cast_nullable_to_non_nullable
              as String,
      Content: null == Content
          ? _value.Content
          : Content // ignore: cast_nullable_to_non_nullable
              as String,
      Title: null == Title
          ? _value.Title
          : Title // ignore: cast_nullable_to_non_nullable
              as String,
      Target: freezed == Target
          ? _value.Target
          : Target // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FCMNotificationModelCopyWith<$Res>
    implements $FCMNotificationModelCopyWith<$Res> {
  factory _$$_FCMNotificationModelCopyWith(_$_FCMNotificationModel value,
          $Res Function(_$_FCMNotificationModel) then) =
      __$$_FCMNotificationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String Type, String Content, String Title, String? Target});
}

/// @nodoc
class __$$_FCMNotificationModelCopyWithImpl<$Res>
    extends _$FCMNotificationModelCopyWithImpl<$Res, _$_FCMNotificationModel>
    implements _$$_FCMNotificationModelCopyWith<$Res> {
  __$$_FCMNotificationModelCopyWithImpl(_$_FCMNotificationModel _value,
      $Res Function(_$_FCMNotificationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Type = null,
    Object? Content = null,
    Object? Title = null,
    Object? Target = freezed,
  }) {
    return _then(_$_FCMNotificationModel(
      Type: null == Type
          ? _value.Type
          : Type // ignore: cast_nullable_to_non_nullable
              as String,
      Content: null == Content
          ? _value.Content
          : Content // ignore: cast_nullable_to_non_nullable
              as String,
      Title: null == Title
          ? _value.Title
          : Title // ignore: cast_nullable_to_non_nullable
              as String,
      Target: freezed == Target
          ? _value.Target
          : Target // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FCMNotificationModel extends _FCMNotificationModel {
  _$_FCMNotificationModel(
      {required this.Type,
      required this.Content,
      required this.Title,
      this.Target})
      : super._();

  factory _$_FCMNotificationModel.fromJson(Map<String, dynamic> json) =>
      _$$_FCMNotificationModelFromJson(json);

  @override
  final String Type;
  @override
  final String Content;
  @override
  final String Title;
  @override
  final String? Target;

  @override
  String toString() {
    return 'FCMNotificationModel(Type: $Type, Content: $Content, Title: $Title, Target: $Target)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FCMNotificationModel &&
            (identical(other.Type, Type) || other.Type == Type) &&
            (identical(other.Content, Content) || other.Content == Content) &&
            (identical(other.Title, Title) || other.Title == Title) &&
            (identical(other.Target, Target) || other.Target == Target));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, Type, Content, Title, Target);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FCMNotificationModelCopyWith<_$_FCMNotificationModel> get copyWith =>
      __$$_FCMNotificationModelCopyWithImpl<_$_FCMNotificationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FCMNotificationModelToJson(
      this,
    );
  }
}

abstract class _FCMNotificationModel extends FCMNotificationModel {
  factory _FCMNotificationModel(
      {required final String Type,
      required final String Content,
      required final String Title,
      final String? Target}) = _$_FCMNotificationModel;
  _FCMNotificationModel._() : super._();

  factory _FCMNotificationModel.fromJson(Map<String, dynamic> json) =
      _$_FCMNotificationModel.fromJson;

  @override
  String get Type;
  @override
  String get Content;
  @override
  String get Title;
  @override
  String? get Target;
  @override
  @JsonKey(ignore: true)
  _$$_FCMNotificationModelCopyWith<_$_FCMNotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
