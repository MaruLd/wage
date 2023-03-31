import 'package:freezed_annotation/freezed_annotation.dart';

import '../Member/member_model.dart';
import '../Wallets/wallets_model.dart';
part 'payslip_model.freezed.dart';
part 'payslip_model.g.dart';

@freezed
class Payslip with _$Payslip {
  const Payslip._();
  factory Payslip({
    required String payslipId,
    String? note,
    Member? member,
    List<Item>? items,
    DateTime? createdAt,
  }) = _Payslip;
  factory Payslip.fromJson(Map<String, dynamic> json) =>
      _$PayslipFromJson(json);
}

@freezed
class Item with _$Item {
  const Item._();
  factory Item({
    required String payslipItemId,
    WalletTokenEnum? token,
    int? amount,
    String? note,
    PayslipItemTypeEnum? type,
    DateTime? createdAt,
  }) = _Item;
  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

enum PayslipItemTypeEnum {
  @JsonValue("p1")
  p1,
  @JsonValue("p2")
  p2,
  @JsonValue("p3")
  p3,
  @JsonValue("xp")
  xp,
  @JsonValue("bonus")
  bonus,
  @JsonValue("other")
  other,
}
