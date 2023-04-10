// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm_notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FCMNotificationModel _$$_FCMNotificationModelFromJson(
        Map<String, dynamic> json) =>
    _$_FCMNotificationModel(
      Type: json['Type'] as String,
      Content: json['Content'] as String,
      Title: json['Title'] as String,
      Target: json['Target'] as String?,
    );

Map<String, dynamic> _$$_FCMNotificationModelToJson(
        _$_FCMNotificationModel instance) =>
    <String, dynamic>{
      'Type': instance.Type,
      'Content': instance.Content,
      'Title': instance.Title,
      'Target': instance.Target,
    };
