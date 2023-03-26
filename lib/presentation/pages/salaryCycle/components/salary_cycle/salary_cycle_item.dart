import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wage/domain/Project/project_model.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

class SalaryCycleItem extends StatelessWidget {
  SalaryCycleItem({Key? key, required this.project, this.onTap})
      : super(key: key);
  Project project;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          const SizedBox(
            height: 12,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Ky luong thang 4',
              style: TextStyle(
                color: global.headerText,
                fontFamily: global.headerFont,
                fontWeight: FontWeight.w700,
                fontSize: 18.sp,
              ),
            ),
            Text(
              'Review',
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
                '18/12/2022 - 18/1/2023',
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
