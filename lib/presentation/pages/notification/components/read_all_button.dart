import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../application/providers/api_provider.dart';
import '../../../../domain/Notification/notification_model.dart';
import '../../../../infrastructure/api_services/notification_service.dart';

class ReadAllButton extends ConsumerWidget {
  const ReadAllButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> readAllNotification() async {
      final notificationList = ref.watch(notificationFutureProvider(100)).whenOrNull(
            data: (data) => data,
          );
      if (notificationList != null) {
        NotificationService notificationService = NotificationService();
        for (NotificationModel notification in notificationList) {
          if (!notification.isRead) {
            var isRead = await notificationService
                .isReadNotification(notification.notificationId);
          }
        }
        ref.refresh(notificationFutureProvider(10));
      }
    }

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: global.cyan, width: 1.0),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      height: 40,
      width: 120,
      child: MaterialButton(
        onPressed: () => readAllNotification(),
        child: Text('Đọc hết',
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              color: global.cyan,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            )),
      ),
    );
  }
}
