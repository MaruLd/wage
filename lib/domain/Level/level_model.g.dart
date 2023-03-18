// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Level _$$_LevelFromJson(Map<String, dynamic> json) => _$_Level(
      levelId: json['levelId'] as String,
      levelName: json['levelName'] as String,
      basePoint: json['basePoint'] as int,
      basePointPerHour: json['basePointPerHour'] as int,
      loyal: json['loyal'] as int,
      levelColor: json['levelColor'] as String,
      xpNeeded: json['xpNeeded'] as int,
    );

Map<String, dynamic> _$$_LevelToJson(_$_Level instance) => <String, dynamic>{
      'levelId': instance.levelId,
      'levelName': instance.levelName,
      'basePoint': instance.basePoint,
      'basePointPerHour': instance.basePointPerHour,
      'loyal': instance.loyal,
      'levelColor': instance.levelColor,
      'xpNeeded': instance.xpNeeded,
    };
