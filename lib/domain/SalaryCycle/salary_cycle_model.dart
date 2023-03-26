import 'package:freezed_annotation/freezed_annotation.dart';

import '../Member/member_model.dart';
part 'salary_cycle_model.freezed.dart';
part 'salary_cycle_model.g.dart';

@freezed
class SalaryCycle with _$SalaryCycle {
  const SalaryCycle._();
  factory SalaryCycle({
    required String salaryCycleId,
    required DateTime createdAt,
    DateTime? endedAt,
     List<Payslips>? payslips,
    required SalaryCycleStatusEnum status,
  }) = _SalaryCycle;
  factory SalaryCycle.fromJson(Map<String, dynamic> json) =>
      _$SalaryCycleFromJson(json);
}

@freezed
class Payslips with _$Payslips {
  const Payslips._();
  factory Payslips({
    required  String payslipId,
    String? note,
    Member? member,
    List<Items>? items,
    DateTime? createdAt,
  }) = _Payslips;
  factory Payslips.fromJson(Map<String, dynamic> json) =>
      _$PayslipsFromJson(json);
}

@freezed
class Items with _$Items {
  const Items._();
  factory Items({
    required String payslipItemId,
  String? token,
  int? amount,
  String? note,
  DateTime? createdAt,
  }) = _Items;
  factory Items.fromJson(Map<String, dynamic> json) =>
      _$ItemsFromJson(json);  
}

enum SalaryCycleStatusEnum {
  @JsonValue("created")
  created,
  @JsonValue("taskEditingPhase")
  taskEditingPhase,
  @JsonValue("projectBonusPhase")
  projectBonusPhase,
  @JsonValue("review")
  review,
  @JsonValue("paid")
  paid,
  @JsonValue("cancelled")
  cancelled,
}


