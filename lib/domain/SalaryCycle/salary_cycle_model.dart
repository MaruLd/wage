import 'package:freezed_annotation/freezed_annotation.dart';

import '../Payslip/payslip_model.dart';

part 'salary_cycle_model.freezed.dart';
part 'salary_cycle_model.g.dart';

@freezed
class SalaryCycle with _$SalaryCycle {
  const SalaryCycle._();
  factory SalaryCycle({
    required String salaryCycleId,
    required String name,
    required DateTime createdAt,
    required DateTime startedAt,
    DateTime? endedAt,
    required SalaryCycleStatusEnum status,
  }) = _SalaryCycle;
  factory SalaryCycle.fromJson(Map<String, dynamic> json) =>
      _$SalaryCycleFromJson(json);
}

enum SalaryCycleStatusEnum {
  @JsonValue("ongoing")
  ongoing,
  @JsonValue("locked")
  locked,
  @JsonValue("paid")
  paid,
  @JsonValue("cancelled")
  cancelled,
}
