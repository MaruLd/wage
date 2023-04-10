import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../domain/Project/project_model.dart';
import '../../domain/SalaryCycle/salary_cycle_model.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../domain/Transaction/transaction_model.dart';
import '../../domain/Wallets/wallets_model.dart';

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

Color projectStatusColor(ProjectStatusEnum status) {
  switch (status) {
    case ProjectStatusEnum.created:
      return Color.fromARGB(255, 255, 93, 158);
    case ProjectStatusEnum.started:
      return Color.fromARGB(255, 92, 72, 204);
    case ProjectStatusEnum.ended:
      return Color.fromARGB(255, 42, 143, 59);
    default:
      return Colors.grey;
  }
}

String projectStatusTransform(ProjectStatusEnum status) {
  switch (status) {
    case ProjectStatusEnum.created:
      return 'Khởi tạo';
    case ProjectStatusEnum.started:
      return 'Hiện thực';
    case ProjectStatusEnum.ended:
      return 'Hoàn thành';
    default:
      return '';
  }
}

double projectStatusPercentTransform(ProjectStatusEnum status) {
  switch (status) {
    case ProjectStatusEnum.created:
      return 0.25;
    case ProjectStatusEnum.started:
      return 0.50;
    case ProjectStatusEnum.ended:
      return 1.0;
    default:
      return 0;
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

String transactionTypeTransform(TransactionTypeEnum status) {
  switch (status) {
    case TransactionTypeEnum.buyVoucher:
      return 'Mua Voucher';
    case TransactionTypeEnum.newAccount:
      return 'Tài khoản mới';
    case TransactionTypeEnum.projectBonus:
      return 'Thưởng Project';
    case TransactionTypeEnum.systemSalary:
      return 'Hệ thống trả lương';
    case TransactionTypeEnum.walletExpire:
      return 'Ví hết hạn';
    default:
      return '';
  }
}

String wallletTokenTransform(WalletTokenEnum status) {
  switch (status) {
    case WalletTokenEnum.point:
      return 'point';
    case WalletTokenEnum.xp:
      return 'XP';
    default:
      return '';
  }
}
