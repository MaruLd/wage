import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../domain/SalaryCycle/salary_cycle_model.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

String pointFormat(
  int point,
) {
  if (point / 9999 > 1) {
    return NumberFormat.compact(locale: "en_US").format(point);
  } else {
    return NumberFormat.decimalPattern().format(point);
  }
}

String multiplePointFormat(
  int? point,
  int? point2,
  int? point3,
) {
  var temp = point! + point2! + point3!;
  if (point / 9999 > 1) {
    return NumberFormat.compact(locale: "en_US").format(temp);
  } else {
    return NumberFormat.decimalPattern().format(temp);
  }
}

String pointFormatForCard(int point) {
  if (point / 9999999 > 1) {
    return NumberFormat.compact(locale: "en_US").format(point);
  } else {
    return NumberFormat.decimalPattern().format(point);
  }
}

String salaryCycleStatusTransform(SalaryCycleStatusEnum status) {
  switch (status) {
    case SalaryCycleStatusEnum.created:
      return 'Khởi Tạo';
    case SalaryCycleStatusEnum.taskEditingPhase:
      return 'Giai đoạn báo cáo Task';
    case SalaryCycleStatusEnum.projectBonusPhase:
      return 'Giai đoạn lương thưởng';
    case SalaryCycleStatusEnum.review:
      return 'Xem lại';
    case SalaryCycleStatusEnum.paid:
      return 'Đã Trả';
    case SalaryCycleStatusEnum.cancelled:
      return 'Đã bị Hủy';
    default:
      return '';
  }
}

Color salaryCycleStatusColor(SalaryCycleStatusEnum status) {
  switch (status) {
    case SalaryCycleStatusEnum.created:
      return Colors.grey;
    case SalaryCycleStatusEnum.taskEditingPhase:
      return global.medium;
    case SalaryCycleStatusEnum.projectBonusPhase:
      return global.yellow;
    case SalaryCycleStatusEnum.review:
      return global.danger;
    case SalaryCycleStatusEnum.paid:
      return global.primary;
    case SalaryCycleStatusEnum.cancelled:
      return Colors.redAccent;
    default:
      return Colors.grey;
  }
}
