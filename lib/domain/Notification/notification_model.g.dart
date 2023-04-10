// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationModel _$$_NotificationModelFromJson(Map<String, dynamic> json) =>
    _$_NotificationModel(
      notificationId: json['notificationId'] as String,
      type: json['type'] as String,
      content: json['content'] as String,
      title: json['title'] as String,
      target: json['target'] as String?,
      isRead: json['isRead'] as bool?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_NotificationModelToJson(
        _$_NotificationModel instance) =>
    <String, dynamic>{
      'notificationId': instance.notificationId,
      'type': instance.type,
      'content': instance.content,
      'title': instance.title,
      'target': instance.target,
      'isRead': instance.isRead,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
