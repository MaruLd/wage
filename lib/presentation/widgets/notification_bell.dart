// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import 'package:google_fonts/google_fonts.dart';

import '../../application/utils/navigation.dart';

class NotificationBell extends ConsumerWidget {
  const NotificationBell({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unreadNotificationCount =
        ref.watch(notificationFutureProvider(100)).whenOrNull(
      data: (datas) {
        int temp = 0;
        for (var data in datas) {
          if (data.isRead != null && data.isRead == false) {
            temp++;
          }
        }
        return temp;
      },
    );
    return Container(
      width: 60,
      height: 60,
      child: MaterialButton(
        onPressed: () => notificationPageNavigation(context),
        child: Stack(
          children: [
            Icon(
              CupertinoIcons.bell_solid,
              color: global.background,
              size: 35.0,
            ).centered(),
            if (unreadNotificationCount != 0 && unreadNotificationCount != null)
              Container(
                width: 40,
                height: 40,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(
                  top: 5,
                ),
                child: Container(
                  width: 19,
                  height: 19,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 175, 37, 37),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Center(
                      child: Text(
                        '${(unreadNotificationCount) < 100 ? unreadNotificationCount : '99+'}',
                        style: GoogleFonts.montserrat(
                          color: global.background,
                          fontWeight: FontWeight.w700,
                          fontSize: 9,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
