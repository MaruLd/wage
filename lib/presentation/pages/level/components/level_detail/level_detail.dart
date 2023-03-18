// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

import '../projectxp/project_xp_list_view.dart';

class LevelsDetail extends StatelessWidget {
  var date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 18,
          ),
          Text('KINH NGHIỆM',
              style: TextStyle(
                color: global.normalText,
                fontFamily: global.headerFont,
                fontWeight: FontWeight.w700,
                fontSize: 19.sp,
              )),
          const SizedBox(
            width: 75,
          ),
          TextButton(
              onPressed: () {
                DatePicker.showDatePicker(context,
                    showTitleActions: true,
                    minTime: DateTime(2021, 12, 12),
                    maxTime: DateTime(2024, 12, 12), onChanged: (date) {
                  print('change $date');
                  this.date = date;
                }, onConfirm: (date) {
                  print('confirm $date');
                }, currentTime: DateTime.now(), locale: LocaleType.vi);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Quý 4/2023',
                    style: TextStyle(
                      color: global.normalText,
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                    ),
                  ), // <-- Text
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.calendar_month, color: global.normalText)
                      .offset(offset: Offset(0, -2)),
                ],
              ))
        ],
      ),
      ProjectXPListView(),
    ]);
  }
}
