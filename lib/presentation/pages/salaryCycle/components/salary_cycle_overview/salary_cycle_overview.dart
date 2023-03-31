// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

import '../../../../../application/providers/api_provider.dart';
import '../../../../widgets/point_card.dart';
import '../salary_cycle/salary_cycle_list_view.dart';

class SalaryCycleOverview extends ConsumerStatefulWidget {
  const SalaryCycleOverview({Key? key}) : super(key: key);

  @override
  ConsumerState<SalaryCycleOverview> createState() =>
      _SalaryCycleOverviewState();
}

class _SalaryCycleOverviewState extends ConsumerState<SalaryCycleOverview> {
  @override
  Widget build(BuildContext context) {
    final salaryCycleList = ref.watch(salaryCycleFutureProvider);
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      const SizedBox(height: 15),
      PointCard(),
      const SizedBox(height: 30),
      Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text('KỲ LƯƠNG CỦA TÔI',
            style: TextStyle(
              color: global.headerText,
              fontFamily: global.headerFont,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 15,
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
                    Icon(Icons.calendar_month, color: global.normalText),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Năm 2023',
                      style: TextStyle(
                        color: global.normalText,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              width: 150,
            ),
            Row(mainAxisSize: MainAxisSize.min, children: [
              Text(
                'Lọc',
                style: TextStyle(
                  color: global.normalText,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              Icon(Icons.filter_alt_rounded, color: global.normalText)
            ]),
          ],
        ),
        SalaryCycleListView(),
      ])
    ]);
  }
}
