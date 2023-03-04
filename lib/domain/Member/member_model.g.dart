// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Member _$$_MemberFromJson(Map<String, dynamic> json) => _$_Member(
      memberId: json['memberId'] as String,
      emailAddress: json['emailAddress'] as String,
      fullName: json['fullName'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      imageUrl: json['imageUrl'] as String,
      facebookUrl: json['facebookUrl'] as String?,
      memberLevels:
          MemberLevels.fromJson(json['memberLevels'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MemberToJson(_$_Member instance) => <String, dynamic>{
      'memberId': instance.memberId,
      'emailAddress': instance.emailAddress,
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'imageUrl': instance.imageUrl,
      'facebookUrl': instance.facebookUrl,
      'memberLevels': instance.memberLevels,
    };

_$_MemberLevels _$$_MemberLevelsFromJson(Map<String, dynamic> json) =>
    _$_MemberLevels(
      level: Level.fromJson(json['level'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_MemberLevelsToJson(_$_MemberLevels instance) =>
    <String, dynamic>{
      'level': instance.level,
      'createdAt': instance.createdAt.toIso8601String(),
    };

_$_Level _$$_LevelFromJson(Map<String, dynamic> json) => _$_Level(
      levelId: json['levelId'] as String,
      levelName: json['levelName'] as String,
      basePoint: json['basePoint'] as int,
      basePointPerHour: json['basePointPerHour'] as int,
      loyal: json['loyal'] as int,
      xpNeeded: json['xpNeeded'] as int,
    );

Map<String, dynamic> _$$_LevelToJson(_$_Level instance) => <String, dynamic>{
      'levelId': instance.levelId,
      'levelName': instance.levelName,
      'basePoint': instance.basePoint,
      'basePointPerHour': instance.basePointPerHour,
      'loyal': instance.loyal,
      'xpNeeded': instance.xpNeeded,
    };
