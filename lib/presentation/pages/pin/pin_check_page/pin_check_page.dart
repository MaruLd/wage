import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/pages/pin/pin_check_page/components/check_pin.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import 'package:wage/presentation/widgets/main_body.dart';
import 'package:wage/presentation/widgets/sub_header.dart';

class PinCheckPage extends StatelessWidget {
  const PinCheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: global.background,
        body: SafeArea(
          child: Container(
            color: global.primary2,
            child: Column(children: [
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
                      child: Text("Nhập mã PIN của bạn để xác nhận",
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
                    PinCheckfield()
                  ],
                ).offset(offset: Offset(0, 70))),
              )
            ]),
          ),
        ));
  }
}
