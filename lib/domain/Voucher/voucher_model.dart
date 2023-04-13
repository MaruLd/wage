import 'package:freezed_annotation/freezed_annotation.dart';
part 'voucher_model.freezed.dart';
part 'voucher_model.g.dart';

@freezed
class Voucher with _$Voucher {
  const Voucher._();
  factory Voucher({
    required String voucherId,
    String? voucherName,
    String? voucherDescription,
    required double voucherCost,
    required int voucherAmount,
    String? imageUrl,
    required DateTime createdAt,
  }) = _Voucher;
  factory Voucher.fromJson(Map<String, dynamic> json) =>
      _$VoucherFromJson(json);
}

@freezed
class MemberVoucher with _$MemberVoucher {
  const MemberVoucher._();
  factory MemberVoucher({
    required String memberVoucherId,
    required Voucher voucher,
    required MemberVoucherStatusEnum status,
    String? code,
    required DateTime createdAt,
    DateTime? expiredAt,
  }) = _MemberVoucher;
  factory MemberVoucher.fromJson(Map<String, dynamic> json) =>
      _$MemberVoucherFromJson(json);
}

enum MemberVoucherStatusEnum {
  @JsonValue("created")
  created,
  @JsonValue("used")
  used,
  @JsonValue("expired ")
  expired,
}
