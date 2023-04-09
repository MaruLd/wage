import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/widgets/main_body.dart';
import 'package:wage/presentation/widgets/point_card.dart';
import 'package:wage/presentation/widgets/refresher.dart';

import '../../widgets/main_header.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

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
            children: [PointCard()],
          ))
        ],
      ).safeArea(),
    );
  }
}
