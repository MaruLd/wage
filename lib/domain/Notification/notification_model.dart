import 'package:freezed_annotation/freezed_annotation.dart';
part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
class NotificationModel with _$NotificationModel {
  const NotificationModel._();
  factory NotificationModel({
    required String notificationId,
    required NotificationTypeEnum type,
    required String content,
    required String title,
    String? target,
    required bool isRead,
    required DateTime createdAt,
  }) = _NotificationModel;
  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}

enum NotificationTypeEnum {
  @JsonValue("salaryCycleUpdateSuccess")
  salaryCycleUpdateSuccess,
  @JsonValue("salaryCycleUpdateFail")
  salaryCycleUpdateFail,
  @JsonValue("salaryCyclePaid")
  salaryCyclePaid,
  @JsonValue("projectCreate")
  projectCreate,
  @JsonValue("projectUpdate")
  projectUpdate,
  @JsonValue("voucherReedemSuccess")
  voucherReedemSuccess,
  @JsonValue("voucherRedeemFailed")
  voucherRedeemFailed,
}
