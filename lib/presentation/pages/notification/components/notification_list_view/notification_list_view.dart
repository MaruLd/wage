import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/widgets/shimmer_list.dart';

import '../../../../../application/providers/api_provider.dart';
import 'notification_item.dart';

class NotificationListView extends ConsumerWidget {
  const NotificationListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notificationList = ref.watch(notificationFutureProvider);
    return notificationList.when(
        data: (data) {
          return Container(
            width: 340,
            constraints: const BoxConstraints(
              minHeight: 300,
            ),
            child: data.isNotEmpty
                ? ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: data.length,
                    itemBuilder: (context, int index) {
                      return NotificationItem(
                        notification: data[index],
                      );
                    },
                  )
                : Text(
                    'Bạn chưa có thông báo',
                    style: GoogleFonts.openSans(
                      color: const Color.fromARGB(255, 47, 47, 47),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ).centered(),
          );
        },
        error: (error, stackTrace) => const ShimmerList(
            height: 50.0,
            width: 325.0,
            row: 3,
            color: Color.fromARGB(118, 2, 193, 123),
            baseColor: Color.fromARGB(118, 0, 100, 63)),
        loading: () => const ShimmerList(
            height: 50.0,
            width: 325.0,
            row: 3,
            color: Color.fromARGB(118, 2, 193, 123),
            baseColor: Color.fromARGB(118, 0, 100, 63)));
  }
}
