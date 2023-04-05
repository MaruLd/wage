// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../application/providers/api_provider.dart';
import '../../../../widgets/point_card.dart';
import '../salary_cycle_list_view/salary_cycle_list_view.dart';

class SalaryCycleOverview extends ConsumerStatefulWidget {
  const SalaryCycleOverview({Key? key}) : super(key: key);

  @override
  ConsumerState<SalaryCycleOverview> createState() =>
      _SalaryCycleOverviewState();
}

class _SalaryCycleOverviewState extends ConsumerState<SalaryCycleOverview> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      PointCard(),
      const SizedBox(height: 30),
      Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text('KỲ LƯƠNG CỦA TÔI',
            style: GoogleFonts.montserrat(
              color: global.headerText,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            )),
        const SizedBox(height: 10),
        Container(
          width: 370,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                        'Tháng 4/2022 - 5/2022',
                        style: TextStyle(
                          color: global.normalText,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )),
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
              const SizedBox(width: 10),
            ],
          ),
        ),
        SalaryCycleListView(),
      ])
    ]);
  }
}
