import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../application/utils/formatter.dart';
import '../../../../../domain/Notification/notification_model.dart';

class NotificationItem extends StatelessWidget {
  NotificationItem({
    Key? key,
    required this.notification,
  }) : super(key: key);
  final NotificationModel notification;

  @override
  Widget build(BuildContext context) {
    print(notification);
    return Container(
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
                '${notificationTypeTransform(notification.type)}',
                style: GoogleFonts.montserrat(
                  color: global.headerText,
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
                  notification.content,
                  overflow: TextOverflow.clip,
                  style: GoogleFonts.montserrat(
                    color: global.normalText,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
