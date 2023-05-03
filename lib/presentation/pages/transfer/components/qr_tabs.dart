import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wage/presentation/pages/transfer/components/point_input_page/point_input_page.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../application/utils/navigation.dart';

class QRTabs extends StatelessWidget {
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
  Widget build(BuildContext context) {
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
            onPressed: () => qrPageNavigation(context),
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
