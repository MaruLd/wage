// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthDTO _$AuthDTOFromJson(Map<String, dynamic> json) {
  return _AuthDTO.fromJson(json);
}

/// @nodoc
mixin _$AuthDTO {
  User? get user => throw _privateConstructorUsedError;
  SubMember? get member => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthDTOCopyWith<AuthDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDTOCopyWith<$Res> {
  factory $AuthDTOCopyWith(AuthDTO value, $Res Function(AuthDTO) then) =
      _$AuthDTOCopyWithImpl<$Res, AuthDTO>;
  @useResult
  $Res call({User? user, SubMember? member, String? token});

  $UserCopyWith<$Res>? get user;
  $SubMemberCopyWith<$Res>? get member;
}

/// @nodoc
class _$AuthDTOCopyWithImpl<$Res, $Val extends AuthDTO>
    implements $AuthDTOCopyWith<$Res> {
  _$AuthDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? member = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      member: freezed == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as SubMember?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubMemberCopyWith<$Res>? get member {
    if (_value.member == null) {
      return null;
    }

    return $SubMemberCopyWith<$Res>(_value.member!, (value) {
      return _then(_value.copyWith(member: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthDTOCopyWith<$Res> implements $AuthDTOCopyWith<$Res> {
  factory _$$_AuthDTOCopyWith(
          _$_AuthDTO value, $Res Function(_$_AuthDTO) then) =
      __$$_AuthDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, SubMember? member, String? token});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $SubMemberCopyWith<$Res>? get member;
}

/// @nodoc
class __$$_AuthDTOCopyWithImpl<$Res>
    extends _$AuthDTOCopyWithImpl<$Res, _$_AuthDTO>
    implements _$$_AuthDTOCopyWith<$Res> {
  __$$_AuthDTOCopyWithImpl(_$_AuthDTO _value, $Res Function(_$_AuthDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? member = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_AuthDTO(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      member: freezed == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as SubMember?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthDTO implements _AuthDTO {
  _$_AuthDTO({this.user, this.member, this.token});

  factory _$_AuthDTO.fromJson(Map<String, dynamic> json) =>
      _$$_AuthDTOFromJson(json);

  @override
  final User? user;
  @override
  final SubMember? member;
  @override
  final String? token;

  @override
  String toString() {
    return 'AuthDTO(user: $user, member: $member, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthDTO &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.member, member) || other.member == member) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, member, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthDTOCopyWith<_$_AuthDTO> get copyWith =>
      __$$_AuthDTOCopyWithImpl<_$_AuthDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthDTOToJson(
      this,
    );
  }
}

abstract class _AuthDTO implements AuthDTO {
  factory _AuthDTO(
      {final User? user,
      final SubMember? member,
      final String? token}) = _$_AuthDTO;

  factory _AuthDTO.fromJson(Map<String, dynamic> json) = _$_AuthDTO.fromJson;

  @override
  User? get user;
  @override
  SubMember? get member;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$_AuthDTOCopyWith<_$_AuthDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

SubMember _$SubMemberFromJson(Map<String, dynamic> json) {
  return _SubMember.fromJson(json);
}

/// @nodoc
mixin _$SubMember {
  String get memberId => throw _privateConstructorUsedError;
  String get emailAddress => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get facebookUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubMemberCopyWith<SubMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubMemberCopyWith<$Res> {
  factory $SubMemberCopyWith(SubMember value, $Res Function(SubMember) then) =
      _$SubMemberCopyWithImpl<$Res, SubMember>;
  @useResult
  $Res call(
      {String memberId,
      String emailAddress,
      String fullName,
      String imageUrl,
      String facebookUrl});
}

/// @nodoc
class _$SubMemberCopyWithImpl<$Res, $Val extends SubMember>
    implements $SubMemberCopyWith<$Res> {
  _$SubMemberCopyWithImpl(this._value, this._then);

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
    Object? imageUrl = null,
    Object? facebookUrl = null,
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
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      facebookUrl: null == facebookUrl
          ? _value.facebookUrl
          : facebookUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubMemberCopyWith<$Res> implements $SubMemberCopyWith<$Res> {
  factory _$$_SubMemberCopyWith(
          _$_SubMember value, $Res Function(_$_SubMember) then) =
      __$$_SubMemberCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String memberId,
      String emailAddress,
      String fullName,
      String imageUrl,
      String facebookUrl});
}

/// @nodoc
class __$$_SubMemberCopyWithImpl<$Res>
    extends _$SubMemberCopyWithImpl<$Res, _$_SubMember>
    implements _$$_SubMemberCopyWith<$Res> {
  __$$_SubMemberCopyWithImpl(
      _$_SubMember _value, $Res Function(_$_SubMember) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
    Object? emailAddress = null,
    Object? fullName = null,
    Object? imageUrl = null,
    Object? facebookUrl = null,
  }) {
    return _then(_$_SubMember(
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
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      facebookUrl: null == facebookUrl
          ? _value.facebookUrl
          : facebookUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubMember extends _SubMember {
  _$_SubMember(
      {required this.memberId,
      required this.emailAddress,
      required this.fullName,
      required this.imageUrl,
      required this.facebookUrl})
      : super._();

  factory _$_SubMember.fromJson(Map<String, dynamic> json) =>
      _$$_SubMemberFromJson(json);

  @override
  final String memberId;
  @override
  final String emailAddress;
  @override
  final String fullName;
  @override
  final String imageUrl;
  @override
  final String facebookUrl;

  @override
  String toString() {
    return 'SubMember(memberId: $memberId, emailAddress: $emailAddress, fullName: $fullName, imageUrl: $imageUrl, facebookUrl: $facebookUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubMember &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.facebookUrl, facebookUrl) ||
                other.facebookUrl == facebookUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, memberId, emailAddress, fullName, imageUrl, facebookUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubMemberCopyWith<_$_SubMember> get copyWith =>
      __$$_SubMemberCopyWithImpl<_$_SubMember>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubMemberToJson(
      this,
    );
  }
}

abstract class _SubMember extends SubMember {
  factory _SubMember(
      {required final String memberId,
      required final String emailAddress,
      required final String fullName,
      required final String imageUrl,
      required final String facebookUrl}) = _$_SubMember;
  _SubMember._() : super._();

  factory _SubMember.fromJson(Map<String, dynamic> json) =
      _$_SubMember.fromJson;

  @override
  String get memberId;
  @override
  String get emailAddress;
  @override
  String get fullName;
  @override
  String get imageUrl;
  @override
  String get facebookUrl;
  @override
  @JsonKey(ignore: true)
  _$$_SubMemberCopyWith<_$_SubMember> get copyWith =>
      throw _privateConstructorUsedError;
}