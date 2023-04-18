// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthInfo _$$_AuthInfoFromJson(Map<String, dynamic> json) => _$_AuthInfo(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
      isNewUser: json['isNewUser'] as bool?,
    );

Map<String, dynamic> _$$_AuthInfoToJson(_$_AuthInfo instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
      'isNewUser': instance.isNewUser,
    };
