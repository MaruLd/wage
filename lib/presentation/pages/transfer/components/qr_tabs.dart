import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../application/providers/api_provider.dart';
import '../../../../application/utils/navigation.dart';

class QRTabs extends ConsumerWidget {
  const QRTabs({
    Key? key,
    required this.changeTabMyQR,
    required this.tabMyQR,
    required this.changeTabTransfer,
    required this.tabTransfer,
  }) : super(key: key);
  final VoidCallback changeTabMyQR;
  final VoidCallback changeTabTransfer;
  final bool tabMyQR;
  final bool tabTransfer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final havePin = ref.watch(checkPinProvider).whenOrNull(
          data: (data) => data,
        );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: tabMyQR
                    ? global.primary2
                    : global.primary2.withOpacity(0.5),
                width: 1.0),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          height: 40,
          width: 160,
          child: TextButton(
            onPressed: changeTabTransfer,
            child: Text('QR của tôi',
                style: GoogleFonts.montserrat(
                  color: tabMyQR
                      ? global.primary2
                      : global.primary2.withOpacity(0.5),
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                )),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: tabTransfer
                    ? global.primary2
                    : global.primary2.withOpacity(0.5),
                width: 1.0),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          height: 40,
          width: 160,
          child: TextButton(
            onPressed: () {
              if (havePin == true) {
                return qrPageNavigation(context);
              } else {
                Alert(
                  context: context,
                  type: AlertType.warning,
                  title: "Bạn chưa thêm mã PIN",
                  desc: "Bạn cần phải thêm mã PIN vào tài khoản của bạn",
                  useRootNavigator: false,
                  buttons: [
                    DialogButton(
                      width: 150,
                      color: global.primary2,
                      child: Text(
                        "Ok",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ).centered(),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ).show();
              }
            },
            child: Text('Chuyển Point',
                style: GoogleFonts.montserrat(
                  color: tabTransfer
                      ? global.primary2
                      : global.primary2.withOpacity(0.5),
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                )),
          ),
        ),
      ],
    );
  }
}
