import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

class DateFilter extends StatefulWidget {
  const DateFilter({
    Key? key,
    required this.changeDateRange,
  }) : super(key: key);
  final Function(DateTime startDate, DateTime endDate) changeDateRange;

  @override
  State<DateFilter> createState() => _DateFilterState();
}

class _DateFilterState extends State<DateFilter> {
  String _dateRange =
      '${DateFormat('dd/MM/yyyy').format(DateTime.now().subtract(const Duration(days: 30)))} - ${DateFormat('dd/MM/yyyy').format(DateTime.now())}';
  @override
  Widget build(BuildContext context) {
    void onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
      widget.changeDateRange(
        args.value.startDate,
        args.value.endDate.add(Duration(days: 1)),
      );
      setState(() {
        _dateRange =
            '${DateFormat('dd/MM/yyyy').format(args.value.startDate ?? DateTime.now().subtract(const Duration(days: 30)))} - ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? DateTime.now())}';
      });
    }

    Dialog datePicker = Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0)), //this right here
      child: Container(
        width: 370,
        height: 350,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SfDateRangePicker(
              navigationMode: DateRangePickerNavigationMode.scroll,
              view: DateRangePickerView.year,
              onSelectionChanged: onSelectionChanged,
              selectionMode: DateRangePickerSelectionMode.range,
              initialSelectedRange: PickerDateRange(
                  DateTime.now().subtract(const Duration(days: 30)),
                  DateTime.now()),
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
    return Row(
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
                _dateRange,
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
    );
  }
}
