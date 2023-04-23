import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/widgets/loading_shimmer.dart';
import 'package:wage/presentation/widgets/main_body.dart';
import 'package:wage/presentation/widgets/refresher.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../application/providers/api_provider.dart';
import '../../widgets/main_header.dart';
import '../../widgets/sub_page_avatar.dart';
import 'components/qr_code.dart';
import 'components/qr_scanner.dart';
import 'components/qr_tabs.dart';

class TransferPage extends ConsumerStatefulWidget {
  const TransferPage({super.key});
  @override
  ConsumerState<TransferPage> createState() => _TransferPageState();
}

class _TransferPageState extends ConsumerState<TransferPage> {
  bool tabMyQR = true;
  bool tabTransfer = false;
  @override
  Widget build(BuildContext context) {
    void changeTabMyQR() {
      setState(
        () {
          tabMyQR = false;
          tabTransfer = true;
        },
      );
    }

    void changeTabTransfer() {
      setState(
        () {
          tabMyQR = true;
          tabTransfer = false;
        },
      );
    }

    final userData = ref.watch(userFutureProvider);
    return Refresher(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const MainHeader('CHUYỂN POINT'),
          const SizedBox(
            height: 80,
          ),
          MainBody(
              child: Column(
            children: [
              Avatar(),
              QRTabs(
                changeTabMyQR: changeTabMyQR,
                changeTabTransfer: changeTabTransfer,
                tabMyQR: tabMyQR,
                tabTransfer: tabTransfer,
              ),
              const SizedBox(
                height: 60,
              ),
              Visibility(
                child: userData.when(
                    data: (data) => QRCode(
                          qrSize: 280,
                          qrPadding: 16,
                          qrBorderRadius: 16,
                          qrData: data.memberId,
                          qrBackgroundColor: global.primary2,
                        ),
                    error: (Object error, StackTrace stackTrace) =>
                        const LoadingShimmer(
                            height: 280.0,
                            width: 280.0,
                            color: Color.fromARGB(118, 2, 193, 123),
                            baseColor: Color.fromARGB(118, 0, 100, 63)),
                    loading: () => const LoadingShimmer(
                        height: 280.0,
                        width: 280.0,
                        color: Color.fromARGB(118, 2, 193, 123),
                        baseColor: Color.fromARGB(118, 0, 100, 63))),
                visible: tabMyQR,
              ),
            ],
          ))
        ],
      ).safeArea(),
    );
  }
}
