// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthInfo _$$_AuthInfoFromJson(Map<String, dynamic> json) => _$_AuthInfo(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      member: json['member'] == null
          ? null
          : SubMember.fromJson(json['member'] as Map<String, dynamic>),
      token: json['token'] as String?,
      isNewUser: json['isNewUser'] as bool?,
    );

Map<String, dynamic> _$$_AuthInfoToJson(_$_AuthInfo instance) =>
    <String, dynamic>{
      'user': instance.user,
      'member': instance.member,
      'token': instance.token,
      'isNewUser': instance.isNewUser,
    };

_$_SubMember _$$_SubMemberFromJson(Map<String, dynamic> json) => _$_SubMember(
      memberId: json['memberId'] as String,
      emailAddress: json['emailAddress'] as String,
      fullName: json['fullName'] as String,
      imageUrl: json['imageUrl'] as String,
      facebookUrl: json['facebookUrl'] as String,
    );

Map<String, dynamic> _$$_SubMemberToJson(_$_SubMember instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'emailAddress': instance.emailAddress,
      'fullName': instance.fullName,
      'imageUrl': instance.imageUrl,
      'facebookUrl': instance.facebookUrl,
    };
