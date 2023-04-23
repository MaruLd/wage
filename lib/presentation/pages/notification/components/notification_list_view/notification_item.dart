import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../application/providers/api_provider.dart';
import '../../../../../domain/Notification/notification_model.dart';
import '../../../../../infrastructure/api_services/notification_service.dart';

class NotificationItem extends ConsumerStatefulWidget {
  const NotificationItem(
      {Key? key, required this.notification, required this.refresh})
      : super(key: key);
  final NotificationModel notification;
  final Function refresh;

  @override
  ConsumerState<NotificationItem> createState() => _NotificationItemState();
}

class _NotificationItemState extends ConsumerState<NotificationItem> {
  bool isRead = false;
  @override
  Widget build(BuildContext context) {
    Future<void> readedNotification(NotificationModel notification) async {
      Alert(
        context: context,
        type: AlertType.info,
        title: notification.title,
        desc: notification.content,
        useRootNavigator: false,
        buttons: [
          DialogButton(
            child: Text(
              "Ok",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            width: 120,
          )
        ],
      ).show();
      NotificationService service = NotificationService();
      final result = service.isReadNotification(notification.notificationId);
      final isReadProvider = ref
          .read(isReadnotificationFutureProvider(notification.notificationId));
      isReadProvider.whenOrNull(
        data: (data) => data,
      );
      if (isReadProvider == 200) {
        setState(() {
          isRead = true;
          ref.refresh(notificationFutureProvider(10));
        });
      }
    }

    return GestureDetector(
      onTap: () async {
        await readedNotification(widget.notification);
        widget.refresh();
      },
      child: Container(
        decoration: BoxDecoration(
            color: global.background,
            border: BorderDirectional(
                bottom:
                    BorderSide(color: Colors.grey.withOpacity(0.5), width: 1))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 340,
                  child: Text(
                    '${widget.notification.title}',
                    style: GoogleFonts.montserrat(
                      color: widget.notification.isRead || isRead
                          ? Color.fromARGB(121, 79, 103, 150)
                          : global.headerText,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  DateFormat('dd/MM/yyyy -')
                      .add_Hm()
                      .format(widget.notification.createdAt),
                  style: GoogleFonts.montserrat(
                    color: widget.notification.isRead || isRead
                        ? Color.fromARGB(126, 58, 58, 58)
                        : global.smallText,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: 320,
                  child: Text(
                    widget.notification.content,
                    overflow: TextOverflow.clip,
                    style: GoogleFonts.montserrat(
                      color: widget.notification.isRead || isRead
                          ? Color.fromARGB(126, 58, 58, 58)
                          : global.normalText,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
