import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../domain/Project/project_model.dart';
import '../../domain/SalaryCycle/salary_cycle_model.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../domain/Transaction/transaction_model.dart';
import '../../domain/Wallets/wallets_model.dart';

RegExp regexRemoveDecimal = RegExp(r'([.]*0)(?!.*\d)');

String numberFormat(
  int number,
) {
  if (number / 9999 > 1) {
    return NumberFormat.compact(locale: "en_US").format(number);
  } else {
    return NumberFormat.decimalPattern().format(number);
  }
}

String pointFormat(
  double point,
) {
  if (point / 9999 > 1) {
    return NumberFormat.compact(locale: "en_US").format(point);
  } else {
    return NumberFormat.decimalPattern().format(point);
  }
}

String pointFormatForCard(double point) {
  if (point / 9999999 > 1) {
    return NumberFormat.compact(locale: "en_US").format(point);
  } else {
    return NumberFormat.decimalPattern().format(point);
  }
}

Color projectStatusColor(double percent) {
  if (percent < 0.25) {
    return global.danger;
  }
  if (percent < 0.5) {
    return global.medium;
  }
  if (percent < 0.75) {
    return global.cyan;
  }
  if (percent >= 0.75) {
    return global.primary;
  } else {
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

int daysBetween(DateTime from, DateTime to) {
  from = DateTime(from.year, from.month, from.day);
  to = DateTime(to.year, to.month, to.day);
  return (to.difference(from).inHours / 24).round();
}

double projectDateToPercent(DateTime date) {
  var projectEndDate = DateTime(date.year, date.month + 6, date.day);
  var projectMaxDays = daysBetween(date, projectEndDate);
  var projectCurrentDays = daysBetween(date, DateTime.now());
  var percent = projectCurrentDays / projectMaxDays;
  return percent;
}

String salaryCycleStatusTransform(SalaryCycleStatusEnum status) {
  switch (status) {
    case SalaryCycleStatusEnum.ongoing:
      return 'Khởi Tạo';
    case SalaryCycleStatusEnum.locked:
      return 'Báo cáo';
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
    case SalaryCycleStatusEnum.ongoing:
      return global.medium;
    case SalaryCycleStatusEnum.locked:
      return global.yellow;
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
    case TransactionTypeEnum.projectSalary:
      return 'Từ dự án';
    case TransactionTypeEnum.projectBonus:
      return 'Thưởng Project';
    case TransactionTypeEnum.systemSalary:
      return 'Từ hệ thống';
    case TransactionTypeEnum.walletExpire:
      return 'Ví hết hạn';
    case TransactionTypeEnum.memberToMember:
      return 'Giao dịch';
    default:
      return '';
  }
}

String wallletTokenTransform(WalletTokenEnum status) {
  switch (status) {
    case WalletTokenEnum.point:
      return 'Point';
    case WalletTokenEnum.xp:
      return 'XP';
    default:
      return '';
  }
}

String notificationTypeTransform(String string) {
  switch (string) {
    case 'VOUCHER_BOUGHT':
      return 'Mua Voucher Thành Công!';
    case 'VOUCHER_BOUGHT':
      return 'Mua Voucher Thành Công!';
    case 'PROJECT_CREATED':
      return 'Dự án đã được tạo thành công';
    case 'PROJECT_UPDATED':
      return 'Dự án đã được bắt đầu';
    default:
      return '';
  }
}
