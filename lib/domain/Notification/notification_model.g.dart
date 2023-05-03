// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationModel _$$_NotificationModelFromJson(Map<String, dynamic> json) =>
    _$_NotificationModel(
      notificationId: json['notificationId'] as String,
      type: $enumDecode(_$NotificationTypeEnumEnumMap, json['type']),
      content: json['content'] as String,
      title: json['title'] as String,
      target: json['target'] as String?,
      isRead: json['isRead'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_NotificationModelToJson(
        _$_NotificationModel instance) =>
    <String, dynamic>{
      'notificationId': instance.notificationId,
      'type': _$NotificationTypeEnumEnumMap[instance.type]!,
      'content': instance.content,
      'title': instance.title,
      'target': instance.target,
      'isRead': instance.isRead,
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$NotificationTypeEnumEnumMap = {
  NotificationTypeEnum.salaryCycleUpdateSuccess: 'salaryCycleUpdateSuccess',
  NotificationTypeEnum.salaryCycleUpdateFail: 'salaryCycleUpdateFail',
  NotificationTypeEnum.salaryCyclePaid: 'salaryCyclePaid',
  NotificationTypeEnum.salaryCycleStarted: 'salaryCycleStarted',
  NotificationTypeEnum.projectCreate: 'projectCreate',
  NotificationTypeEnum.projectUpdate: 'projectUpdate',
  NotificationTypeEnum.voucherReedemSuccess: 'voucherReedemSuccess',
  NotificationTypeEnum.voucherRedeemFailed: 'voucherRedeemFailed',
  NotificationTypeEnum.memberSendPointFailed: 'memberSendPointFailed',
  NotificationTypeEnum.memberSendPointSuccess: 'memberSendPointSuccess',
};
