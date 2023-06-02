import 'package:freezed_annotation/freezed_annotation.dart';

import '../Project/project_model.dart';
part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed
class Task with _$Task {
  const Task._();
  factory Task({
    String? projectReportMemberTaskId,
    Project? project,
    String? taskName,
    String? taskDescription,
    String? taskCode,
    required double taskHour,
    required double taskRealHour,
    required double taskPoint,
    required double taskEffort,
    String? bonusReason,
    required double taskBonus,
  }) = _Task;
  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
