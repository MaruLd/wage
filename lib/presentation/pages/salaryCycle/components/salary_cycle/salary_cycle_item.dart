import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:wage/domain/Project/project_model.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

import '../../../../../domain/SalaryCycle/salary_cycle_model.dart';

class SalaryCycleItem extends StatelessWidget {
  SalaryCycleItem({Key? key, required this.salaryCycle, this.onTap})
      : super(key: key);
  SalaryCycle salaryCycle;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    String salaryCycleStatusTransform(SalaryCycleStatusEnum status) {
      switch (status) {
        case SalaryCycleStatusEnum.created:
          return 'Khởi Tạo';
        case SalaryCycleStatusEnum.taskEditingPhase:
          return 'Giai Đoạn Thêm Task';
        case SalaryCycleStatusEnum.projectBonusPhase:
          return 'Giai Đoạn Thưởng';
        case SalaryCycleStatusEnum.review:
          return 'Nhận xét';
        case SalaryCycleStatusEnum.paid:
          return 'Đã Trả';
        case SalaryCycleStatusEnum.cancelled:
          return 'Đã Hủy';
        default:
          return '';
      }
    }

    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Kỳ lương tháng ${DateFormat('MM').format(salaryCycle.createdAt)}',
              style: TextStyle(
                color: global.headerText,
                fontFamily: global.headerFont,
                fontWeight: FontWeight.w700,
                fontSize: 18.sp,
              ),
            ),
            Text(
              '${salaryCycle.payslips}',
              style: TextStyle(
                color: global.headerText,
                fontFamily: global.numberFont,
                fontWeight: FontWeight.w500,
                fontSize: 18.sp,
              ),
            ),
          ]),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Text(
                salaryCycleStatusTransform(salaryCycle.status) + ': ',
                style: TextStyle(
                  color: global.headerText,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                ),
              ),
              Text(
                salaryCycle.endedAt != null
                    ? DateFormat('dd-MM-yyyy')
                        .format(salaryCycle.endedAt!)
                        .toString()
                    : '',
                style: TextStyle(
                  color: global.headerText,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
