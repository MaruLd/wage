import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../widgets/point_card.dart';
import 'salary_cycle_list_view/salary_cycle_list_view.dart';

class SalaryCycleOverview extends StatefulWidget {
  const SalaryCycleOverview({Key? key}) : super(key: key);

  @override
  State<SalaryCycleOverview> createState() => _SalaryCycleOverviewState();
}

class _SalaryCycleOverviewState extends State<SalaryCycleOverview> {
  String dateRange = '${DateFormat('dd/MM/yyyy').format(DateTime.now())}';
  @override
  Widget build(BuildContext context) {
    void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
      setState(() {
        dateRange = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -' +
            ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
      });
    }

    Dialog datePicker = Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0)), //this right here
      child: Container(
        width: 360,
        height: 350,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SfDateRangePicker(
              navigationMode: DateRangePickerNavigationMode.scroll,
              view: DateRangePickerView.month,
              onSelectionChanged: _onSelectionChanged,
              selectionMode: DateRangePickerSelectionMode.range,
              initialSelectedRange: PickerDateRange(
                  DateTime.now(), DateTime.now().add(const Duration(days: 2))),
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop();
                },
                child: Text(
                  'Done',
                ))
          ],
        ),
      ),
    );
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
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 300,
              child: Row(
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  Icon(Icons.calendar_month, color: global.normalText),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    dateRange,
                    overflow: TextOverflow.clip,
                    style: GoogleFonts.montserrat(
                      color: global.normalText,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            TextButton(
                onPressed: () async {
                  await showDialog(
                      context: context,
                      builder: (BuildContext context) => datePicker);
                },
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  Text(
                    'Lọc',
                    style: TextStyle(
                      color: global.normalText,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  Icon(Icons.filter_alt_rounded, color: global.normalText)
                ])),
            const SizedBox(width: 10),
          ],
        ),
        SalaryCycleListView(),
      ])
    ]);
  }
}
