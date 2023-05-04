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
    required VoucherTypeEnum voucherType,
    Supplier? supplier,
    String? imageUrl,
    required DateTime createdAt,
  }) = _Voucher;
  factory Voucher.fromJson(Map<String, dynamic> json) =>
      _$VoucherFromJson(json);
}

@freezed
class Supplier with _$Supplier {
  const Supplier._();
  factory Supplier({
    required String supplierId,
    String? name,
    String? description,
    SupplierStatusEnum? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Supplier;
  factory Supplier.fromJson(Map<String, dynamic> json) =>
      _$SupplierFromJson(json);
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

enum SupplierStatusEnum {
  @JsonValue("available")
  available,
  @JsonValue("unavailable")
  unavailable,
}

enum VoucherTypeEnum {
  @JsonValue("fnB")
  fnB,
  @JsonValue("telecom")
  telecom,
  @JsonValue("shopping")
  shopping,
  @JsonValue("services")
  services,
  @JsonValue("educattional")
  educattional,
  @JsonValue("beauty")
  beauty,
  @JsonValue("entertainment")
  entertainment,
  @JsonValue("others ")
  others,
}
