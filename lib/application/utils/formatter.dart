import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../domain/Project/project_model.dart';
import '../../domain/SalaryCycle/salary_cycle_model.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../domain/Transaction/transaction_model.dart';
import '../../domain/Voucher/voucher_model.dart';

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
  return NumberFormat.decimalPattern().format(point);
}

String pointFormatForCard(double point) {
  if (point / 999999 > 1) {
    return NumberFormat.compact(locale: "en_US").format(point);
  } else {
    return NumberFormat.decimalPattern().format(point.floor());
  }
}

Color projectStatusColor(ProjectStatusEnum status) {
  switch (status) {
    case ProjectStatusEnum.created:
      return global.danger;
    case ProjectStatusEnum.started:
      return global.medium;
    case ProjectStatusEnum.ended:
      return global.primary2;
    case ProjectStatusEnum.cancelled:
      return Colors.red;
    case ProjectStatusEnum.stopped:
      return Color.fromARGB(164, 244, 67, 54);
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
    case ProjectStatusEnum.cancelled:
      return 'Bị hủy';
    case ProjectStatusEnum.stopped:
      return 'Dừng';
    default:
      return '';
  }
}

int daysBetween(DateTime from, DateTime to) {
  from = DateTime(from.year, from.month, from.day);
  to = DateTime(to.year, to.month, to.day);
  return (to.difference(from).inHours / 24).round();
}

double projectDateToPercent(DateTime startDate, DateTime endDate) {
  var projectMaxDays = daysBetween(startDate, endDate);
  var projectCurrentDays = daysBetween(startDate, DateTime.now());
  var percent = 0.0;
  if (projectCurrentDays / projectMaxDays >= 1.0) {
    percent = 1.0;
  } else {
    percent = projectCurrentDays / projectMaxDays;
  }
  return percent;
}

String salaryCycleStatusTransform(SalaryCycleStatusEnum status) {
  switch (status) {
    case SalaryCycleStatusEnum.ongoing:
      return 'Khởi tạo';
    case SalaryCycleStatusEnum.locked:
      return 'Báo cáo';
    case SalaryCycleStatusEnum.paid:
      return 'Hoàn tất';
    case SalaryCycleStatusEnum.cancelled:
      return 'Đã bị Hủy';
    default:
      return '';
  }
}

Color salaryCycleStatusColor(SalaryCycleStatusEnum status) {
  switch (status) {
    case SalaryCycleStatusEnum.ongoing:
      return global.danger;
    case SalaryCycleStatusEnum.locked:
      return global.medium;
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
      return 'Giao dịch';
  }
}

String voucherTypeTransform(VoucherTypeEnum type) {
  switch (type) {
    case VoucherTypeEnum.fnB:
      return 'Ăn uống';
    case VoucherTypeEnum.telecom:
      return 'Viễn thông';
    case VoucherTypeEnum.shopping:
      return 'Mua sắm';
    case VoucherTypeEnum.services:
      return 'Dịch vụ';
    case VoucherTypeEnum.educational:
      return 'Giáo dục';
    case VoucherTypeEnum.beauty:
      return 'Làm đẹp';
    case VoucherTypeEnum.entertainment:
      return 'Giải trí';
    case VoucherTypeEnum.others:
      return 'Khác';
    case VoucherTypeEnum.all:
      return 'Tất cả';
    default:
      return '';
  }
}
