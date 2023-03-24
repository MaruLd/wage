// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

import '../../../../widgets/point_card.dart';
import '../salary_cycle/salary_cycle_list_view.dart';

class SalaryCycleOverview extends StatefulWidget {
  const SalaryCycleOverview({Key? key}) : super(key: key);

  @override
  State<SalaryCycleOverview> createState() => _SalaryCycleOverviewState();
}

class _SalaryCycleOverviewState extends State<SalaryCycleOverview> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      const SizedBox(height: 15),
      PointCard(),
      const SizedBox(height: 30),
      RichText(
        textAlign: TextAlign.center,
        text: new TextSpan(
          style: new TextStyle(
            color: global.headerText,
            fontFamily: global.headerFont,
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
          children: <TextSpan>[
            new TextSpan(
                text: 'Lưu ý: ',
                style: new TextStyle(
                  color: global.danger,
                  fontWeight: FontWeight.w500,
                )),
            new TextSpan(
              text:
                  'Sau khoảng thời gian kỳ lương\nđược Review, các khiếu nại sẽ không\nđược nhận nữa.',
            ),
          ],
        ),
      ),
      const SizedBox(height: 15),
      Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 18,
            ),
            Text('CÁC KỲ LƯƠNG',
                style: TextStyle(
                  color: global.normalText,
                  fontFamily: global.headerFont,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                )),
            const SizedBox(
              width: 75,
            ),
            TextButton(
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(2021, 12, 12),
                      maxTime: DateTime(2024, 12, 12),
                      onChanged: (date) {}, onConfirm: (date) {
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
                        fontSize: 18,
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
        SalaryCycleListView(),
      ])
    ]);
  }
}
