import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/domain/Notification/notification_model.dart';
import 'package:wage/presentation/widgets/shimmer_list.dart';

import '../../../../../application/providers/api_provider.dart';
import 'notification_item.dart';

class NotificationListView extends ConsumerStatefulWidget {
  const NotificationListView({Key? key}) : super(key: key);
  @override
  ConsumerState<NotificationListView> createState() =>
      _NotificationListViewState();
}

class _NotificationListViewState extends ConsumerState<NotificationListView> {
  int _currentPage = 1;
  bool _canLoadMore = false;
  @override
  Widget build(BuildContext context) {
    void onLoadMoreClick() {
      setState(() {
        _currentPage++;
      });
    }

    void refresh() {
      ref.refresh(notificationFutureProvider(_currentPage));
    }

    final notificationProvider =
        ref.watch(notificationFutureProvider(_currentPage));
    return Column(children: [
      notificationProvider.when(
          data: (notificationList) {
            if (notificationList.length == (_currentPage * 10)) {
              setState(() {
                _canLoadMore = true;
              });
            } else {
              setState(() {
                _canLoadMore = false;
              });
            }
            return Container(
              width: 340,
              constraints: const BoxConstraints(
                minHeight: 300,
              ),
              child: notificationList.isNotEmpty
                  ? ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: notificationList.length,
                      itemBuilder: (context, int index) {
                        return NotificationItem(
                          notification: notificationList[index],
                          refresh: refresh,
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
              row: 5,
              color: Color.fromARGB(118, 2, 193, 123),
              baseColor: Color.fromARGB(118, 0, 100, 63)),
          loading: () => const ShimmerList(
              height: 50.0,
              width: 325.0,
              row: 5,
              color: Color.fromARGB(118, 2, 193, 123),
              baseColor: Color.fromARGB(118, 0, 100, 63))),
      const SizedBox(
        height: 20,
      ),
      if (_canLoadMore)
        Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: Color.fromARGB(255, 46, 205, 202), width: 1.0),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          height: 38,
          width: 130,
          child: MaterialButton(
            onPressed: () => onLoadMoreClick(),
            child: Text('Load thêm',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: Color.fromARGB(255, 46, 205, 202),
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                )),
          ),
        )
    ]);
  }
}
