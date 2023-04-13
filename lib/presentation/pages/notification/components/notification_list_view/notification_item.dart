import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../application/utils/formatter.dart';
import '../../../../../domain/Notification/notification_model.dart';
import '../../../../../infrastructure/api_services/notification_service.dart';

class NotificationItem extends ConsumerStatefulWidget {
  NotificationItem({Key? key, required this.notification}) : super(key: key);
  final NotificationModel notification;

  @override
  ConsumerState<NotificationItem> createState() => _NotificationItemState();
}

class _NotificationItemState extends ConsumerState<NotificationItem> {
  @override
  Widget build(BuildContext context) {
    void readedNotification() {
      NotificationService notificationService = NotificationService();
      var isRead = notificationService
          .isReadNotification(widget.notification.notificationId);
      ref.refresh(notificationFutureProvider);
      showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: Text(widget.notification.title),
                content: Text(widget.notification.content),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Ok'),
                    child: const Text('Ok'),
                  ),
                ],
              ));
    }

    return GestureDetector(
      onTap: () => readedNotification(),
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
                Text(
                  '${widget.notification.title}',
                  style: GoogleFonts.montserrat(
                    color: widget.notification.isRead
                        ? Color.fromARGB(121, 79, 103, 150)
                        : global.headerText,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
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
                      color: widget.notification.isRead
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
