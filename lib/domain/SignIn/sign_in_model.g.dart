// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignIn _$$_SignInFromJson(Map<String, dynamic> json) => _$_SignIn(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_SignInToJson(_$_SignIn instance) => <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
    };
