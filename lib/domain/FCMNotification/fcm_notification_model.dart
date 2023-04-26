import 'package:freezed_annotation/freezed_annotation.dart';
part 'fcm_notification_model.freezed.dart';
part 'fcm_notification_model.g.dart';

@freezed
class FCMNotificationModel with _$FCMNotificationModel {
  const FCMNotificationModel._();
  factory FCMNotificationModel({
    required FCMNotificationTypeEnum Type,
    required String Content,
    required String Title,
    String? Target,
  }) = _FCMNotificationModel;
  factory FCMNotificationModel.fromJson(Map<String, dynamic> json) =>
      _$FCMNotificationModelFromJson(json);
}

enum FCMNotificationTypeEnum {
  @JsonValue("SalaryCycleStarted")
  salaryCycleStarted,
  @JsonValue("SalaryCycleUpdateSuccess")
  salaryCycleUpdateSuccess,
  @JsonValue("SalaryCycleUpdateFail")
  salaryCycleUpdateFail,
  @JsonValue("SalaryCyclePaid")
  salaryCyclePaid,
  @JsonValue("ProjectCreate")
  projectCreate,
  @JsonValue("ProjectUpdate")
  projectUpdate,
  @JsonValue("VoucherReedemSuccess")
  voucherReedemSuccess,
  @JsonValue("VoucherRedeemFailed")
  voucherRedeemFailed,
}
