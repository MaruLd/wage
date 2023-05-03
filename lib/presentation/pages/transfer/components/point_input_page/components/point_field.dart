import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../../application/utils/navigation.dart';
import '../../../../../../infrastructure/api_services/wallet_service.dart';
import '../../../../../widgets/loading_shimmer.dart';

class PointField extends ConsumerStatefulWidget {
  const PointField({
    Key? key,
    required this.toMemberId,
  }) : super(key: key);
  final String toMemberId;

  @override
  ConsumerState<PointField> createState() => _PointFieldState();
}

class _PointFieldState extends ConsumerState<PointField> {
  TextEditingController textEditingController = TextEditingController();

  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String errorMessage = '';
  bool isLoading = false;
  String transferPoint = "";

  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();
    super.dispose();
  }

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  String pointValidation(String transferPoint, String currentPoint) {
    if (transferPoint == '') {
      return 'Point không được để trống';
    } else if (double.parse(transferPoint) < 1) {
      return 'Point chuyển phải từ 1 trở lên';
    } else if (double.parse(transferPoint) > double.parse(currentPoint)) {
      return 'Point chuyển vượt quá số Point bạn có';
    } else {
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 30),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: global.primary2, width: 1.0),
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            width: 200,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                key: formKey,
                cursorColor: global.primary2,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: 24,
                  color: global.primary2,
                  fontWeight: FontWeight.w600,
                ),
                decoration: InputDecoration(
                  hintStyle: GoogleFonts.montserrat(
                    fontSize: 20,
                    color: global.primary2,
                    fontWeight: FontWeight.w600,
                  ),
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                onChanged: (value) {
                  debugPrint(value);
                  setState(() {
                    transferPoint = value;
                  });
                },
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(hasError ? errorMessage : "",
              style: GoogleFonts.montserrat(
                color: Colors.red,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
            margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30),
            decoration: BoxDecoration(
              color: global.primary2,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ButtonTheme(
              height: 60,
              child: isLoading
                  ? const LoadingShimmer(
                      height: 48.0,
                      width: 300.0,
                      color: Color.fromARGB(118, 2, 193, 123),
                      baseColor: Color.fromARGB(118, 0, 100, 63),
                    )
                  : TextButton(
                      onPressed: () async {
                        setState(() {
                          isLoading = true;
                        });
                        const storage = FlutterSecureStorage();
                        String? currentPoint =
                            await storage.read(key: 'userPoint');
                        setState(() {
                          isLoading = false;
                          errorMessage = pointValidation(
                              transferPoint, currentPoint ?? '0');
                          if (errorMessage != '') {
                            hasError = true;
                          }
                        });
                        if (hasError == true) {
                          errorController!.add(ErrorAnimationType.shake);
                        } else {
                          setState(() {
                            isLoading = true;
                          });
                          WalletService walletService = WalletService();
                          Response response = await walletService.transferPoint(
                              widget.toMemberId, double.parse(transferPoint));
                          print(response.data);
                          print(double.parse(transferPoint));
                          if (response.data['ErrorName'] ==
                              'MEMBER_NOT_FOUND') {
                            setState(() {
                              isLoading = false;
                              hasError = true;
                              errorMessage = 'Không tìm thấy người dùng';
                            });
                          }
                          if (response.data['ErrorName'] == 'EXCEED_LIMIT') {
                            setState(() {
                              isLoading = false;
                              hasError = true;
                              errorMessage =
                                  'Point chuyển vượt quá giới hạn cho phép trong tháng';
                            });
                          } else if (response.statusCode == 200) {
                            setState(
                              () {
                                isLoading = false;
                                hasError = false;
                              },
                            );
                            transferPageNavigation(context);
                          } else {
                            setState(
                              () {
                                isLoading = false;
                                hasError = false;
                              },
                            );
                          }
                        }
                      },
                      child: const Center(
                          child: Text(
                        "Chuyển Point",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
            )),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              child: Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: global.cyan, width: 1.0),
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                ),
                child: Center(
                  child: Text('Clear',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        color: global.cyan,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      )),
                ),
              ),
              onPressed: () {
                textEditingController.clear();
                setState(
                  () {
                    hasError = false;
                  },
                );
              },
            ),
          ],
        )
      ],
    );
  }
}
