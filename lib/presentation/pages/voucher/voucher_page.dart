import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../application/providers/api_provider.dart';
import '../../../domain/FCMNotification/fcm_notification_model.dart';
import '../../widgets/main_body.dart';
import '../../widgets/refresher.dart';
import 'components/search_voucher_card.dart';
import '../../widgets/sub_header.dart';
import 'components/member_voucher_list_view/member_voucher_list_view.dart';
import 'components/search_voucher_bar.dart';
import 'components/voucher_list_view/voucher_list_view.dart';
import 'components/voucher_tabs.dart';

class VoucherPage extends ConsumerStatefulWidget {
  const VoucherPage({Key? key}) : super(key: key);

  static String get routeName => 'voucher';
  static String get routeLocation => '/voucher';
  @override
  ConsumerState<VoucherPage> createState() => _VoucherPageState();
}

class _VoucherPageState extends ConsumerState<VoucherPage> {
  bool tabBuyVoucher = true;
  bool tabMyVoucher = false;

  @override
  void initState() {
    fireBaseMessage();
    super.initState();
  }

  fireBaseMessage() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      debugPrint('Got a message whilst in the foreground!');
      debugPrint('Message data: ${message.data}');
      if (message.notification != null) {
        debugPrint(
            'Message also contained a notification: ${message.notification}');
      }
      final notification = FCMNotificationModel.fromJson(message.data);

      if (notification.Type == FCMNotificationTypeEnum.voucherReedemSuccess) {
        Alert(
          context: context,
          type: AlertType.success,
          title: notification.Title,
          desc: notification.Content,
          useRootNavigator: false,
          buttons: [
            DialogButton(
              child: Text(
                "Ok",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              width: 120,
            )
          ],
        ).show();
        ref.refresh(voucherListFutureProvider);
        ref.refresh(notificationFutureProvider(10));
        ref.refresh(memberVoucherListFutureProvider);
        ref.refresh(walletsFutureProvider);
      } else if (notification.Type ==
          FCMNotificationTypeEnum.voucherRedeemFailed) {
        Alert(
          context: context,
          type: AlertType.error,
          title: notification.Title,
          desc: notification.Content,
          useRootNavigator: false,
          buttons: [
            DialogButton(
              child: Text(
                "Ok",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              width: 120,
            )
          ],
        ).show();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    void changeTabBuyVoucher() {
      setState(
        () {
          tabBuyVoucher = false;
          tabMyVoucher = true;
        },
      );
    }

    void changeTabMyVoucher() {
      setState(
        () {
          tabBuyVoucher = true;
          tabMyVoucher = false;
        },
      );
    }

    final totalVoucher = ref
        .watch(voucherListFutureProvider)
        .whenOrNull(data: (data) => data.length);
    final totalMyVoucher = ref
        .watch(memberVoucherListFutureProvider)
        .whenOrNull(data: (data) => data.length);

    return Refresher(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SubHeader(headerText: 'Vouchers'),
          const SizedBox(
            height: 90,
          ),
          MainBody(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                SearchCard(
                  searchBar: SearchVoucherBar(),
                  totalVoucher: tabBuyVoucher
                      ? (totalVoucher ?? 0)
                      : (totalMyVoucher ?? 0),
                ),
                const SizedBox(height: 10),
                VoucherTabs(
                  changeTabBuyVoucher: changeTabBuyVoucher,
                  changeTabMyVoucher: changeTabMyVoucher,
                  tabBuyVoucher: tabBuyVoucher,
                  tabMyVoucher: tabMyVoucher,
                ),
                const SizedBox(height: 20),
                Visibility(
                  child: VoucherListView(),
                  visible: tabBuyVoucher,
                ),
                Visibility(
                  child: MemberVoucherListView(),
                  visible: tabMyVoucher,
                ),
              ]).offset(offset: Offset(0, -12)))
        ],
      ),
    );
  }
}
