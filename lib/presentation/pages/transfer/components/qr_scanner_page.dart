import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../application/utils/navigation.dart';
import '../../../widgets/sub_header.dart';

class QRScannerPage extends StatefulWidget {
  const QRScannerPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRScannerPageState();
}

class _QRScannerPageState extends State<QRScannerPage> {
  String? memberId;
  String? memberEmail;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: global.background,
      body: SafeArea(
        child: Container(
          color: global.primary2,
          child: Column(
            children: <Widget>[
              const SubHeader(headerText: 'SCAN MÃ QR'),
              const SizedBox(
                height: 20,
              ),
              Expanded(flex: 2, child: _buildQrView(context)),
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  color: global.background,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      if (memberId != null) ...[
                        Text('Người nhận: $memberEmail').centered(),
                        Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: global.primary, width: 1.0),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                          ),
                          height: 50,
                          width: 320,
                          child: TextButton.icon(
                              label: Text('Chuyển Point',
                                  style: GoogleFonts.openSans(
                                    color: global.primary,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  )),
                              icon: FaIcon(FontAwesomeIcons.moneyBillTransfer,
                                  color: global.primary, size: 23),
                              onPressed: () =>
                                  pointInputPageNavigation(context, memberId)),
                        ),
                      ] else ...[
                        const Text('Scan mã QR của người dùng'),
                      ],
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.red,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      controller.pauseCamera();
      List<String> list = scanData.code!.split("+");
      setState(() {
        memberId = list[0];
        memberEmail = list[1];
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    print('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
