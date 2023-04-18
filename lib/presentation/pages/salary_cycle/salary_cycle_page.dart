import 'package:flutter/material.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import 'package:wage/presentation/widgets/main_body.dart';
import 'package:wage/presentation/widgets/refresher.dart';

import '../../widgets/date_filter.dart';
import '../../widgets/point_card.dart';
import 'components/salary_cycle_list_view/salary_cycle_list_view.dart';

class SalaryCyclePage extends StatefulWidget {
  const SalaryCyclePage({super.key});

  @override
  State<SalaryCyclePage> createState() => _SalaryCyclePageState();
}

class _SalaryCyclePageState extends State<SalaryCyclePage> {
  DateTime? _startDate;
  DateTime? _endDate;
  changeDateRange(DateTime? startDate, DateTime? endDate) {
    setState(() {
      _startDate = startDate ?? DateTime.now().subtract(Duration(days: 30));
      _endDate = endDate ?? DateTime.now();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Refresher(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            "KỲ LƯƠNG CỦA TÔI",
            textAlign: TextAlign.center,
            style: global.boldTextStyle,
          ),
          const SizedBox(
            height: 80,
          ),
          MainBody(
              child: Column(
            children: [
              PointCard(),
              const SizedBox(height: 30),
              DateFilter(
                changeDateRange: changeDateRange,
              ),
              SalaryCycleListView(
                startDate: _startDate,
                endDate: _endDate,
              )
            ],
          ))
        ],
      ),
    );
  }
}
