import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/widgets/main_body.dart';
import 'package:wage/presentation/widgets/point_card.dart';
import 'package:wage/presentation/widgets/refresher.dart';

import '../../widgets/date_filter.dart';
import '../../widgets/main_header.dart';
import 'components/transaction_list_view/transaction_item.dart';
import 'components/transaction_list_view/transaction_list_view.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
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
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MainHeader('LỊCH SỬ GIAO DỊCH'),
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
              TransactionListView(
                startDate: _startDate,
                endDate: _endDate,
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ))
        ],
      ).safeArea(),
    );
  }
}
