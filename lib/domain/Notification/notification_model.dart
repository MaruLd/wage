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
  @JsonValue("salaryCycleStarted")
  salaryCycleStarted,
  @JsonValue("projectCreate")
  projectCreate,
  @JsonValue("projectUpdate")
  projectUpdate,
  @JsonValue("voucherReedemSuccess")
  voucherReedemSuccess,
  @JsonValue("voucherRedeemFailed")
  voucherRedeemFailed,
  @JsonValue("memberSendPointFailed")
  memberSendPointFailed,
  @JsonValue("memberSendPointSuccess")
  memberSendPointSuccess,
  @JsonValue("projectMemberRequestAccepted")
  projectMemberRequestAccepted,
  @JsonValue("projectMemberRequestRejected")
  projectMemberRequestRejected,
  @JsonValue("projectMemberRequestPending")
  projectMemberRequestPending,
  @JsonValue("projectPMChange")
  projectPMChange,
  @JsonValue("projectReportPending")
  projectReportPending,
  @JsonValue("projectReportAccepted")
  projectReportAccepted,
  @JsonValue("projectReportRejected")
  projectReportRejected,
  @JsonValue("testing")
  testing,
}
