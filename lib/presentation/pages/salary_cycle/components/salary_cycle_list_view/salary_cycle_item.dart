import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:wage/application/utils/number_formatter.dart';
import 'package:wage/domain/Project/project_model.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

import '../../../../../application/providers/api_provider.dart';
import '../../../../../application/utils/navigation.dart';
import '../../../../../domain/SalaryCycle/salary_cycle_model.dart';
import '../../../../widgets/loading_shimmer.dart';
import '../../../payslips/payslip_page.dart';

class SalaryCycleItem extends ConsumerWidget {
  SalaryCycleItem({Key? key, required this.salaryCycle, this.onTap})
      : super(key: key);
  SalaryCycle salaryCycle;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final payslip = ref.watch(payslipDataProvider(salaryCycle.salaryCycleId));
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
      onTap: () => payslipPageNavigation(context),
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
            payslip.when(
              data: (data) => Text(
                pointFormat(data.totalP1, data.totalP2, data.totalP3),
                style: TextStyle(
                  color: global.headerText,
                  fontFamily: global.numberFont,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                ),
              ),
              error: (error, stackTrace) {
                print(error.toString());
                return LoadingShimmer(
                  height: 25.0,
                  width: 50.0,
                  color: Color.fromARGB(118, 2, 193, 123),
                  baseColor: Color.fromARGB(118, 0, 100, 63),
                );
              },
              loading: () => LoadingShimmer(
                height: 25.0,
                width: 50.0,
                color: Color.fromARGB(118, 2, 193, 123),
                baseColor: Color.fromARGB(118, 0, 100, 63),
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
