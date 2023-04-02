import 'package:freezed_annotation/freezed_annotation.dart';

import '../Payslip/payslip_model.dart';

part 'salary_cycle_model.freezed.dart';
part 'salary_cycle_model.g.dart';

@freezed
class SalaryCycle with _$SalaryCycle {
  const SalaryCycle._();
  factory SalaryCycle({
    required String salaryCycleId,
    required DateTime createdAt,
    DateTime? endedAt,
     List<Payslip>? payslips,
    required SalaryCycleStatusEnum status,
  }) = _SalaryCycle;
  factory SalaryCycle.fromJson(Map<String, dynamic> json) =>
      _$SalaryCycleFromJson(json);
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


