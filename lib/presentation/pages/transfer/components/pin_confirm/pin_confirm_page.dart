import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import 'package:wage/presentation/widgets/main_body.dart';
import 'package:wage/presentation/widgets/sub_header.dart';

import 'components/confirm_pin.dart';

class PinConfirmTransferPage extends StatelessWidget {
  final String memberId;
  final String transferPoint;
  const PinConfirmTransferPage({
    super.key,
    required this.memberId, required this.transferPoint,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: global.primary2,
        body: Column(children: [
          const SizedBox(
            height: 20,
          ),
          const SubHeader(headerText: 'NHẬP MÃ PIN'),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: MainBody(
                child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: 250,
                  child: Text("Nhập mã PIN của bạn để chuyển Point",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        color: global.primary2,
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                PinConfirmTransfer(memberId: memberId, transferPoint: transferPoint, )
              ],
            ).offset(offset: Offset(0, 70))),
          )
        ]));
  }
}
