import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/widgets/refresher.dart';

import '../../widgets/main_header.dart';
import '../../widgets/sub_body.dart';
import '../../widgets/sub_header.dart';
import 'components/notification_list_view/notification_list_view.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Refresher(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SubHeader('THÔNG BÁO'),
          const SizedBox(
            height: 30,
          ),
          SubBody(
              child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              NotificationListView(),
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
