import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:rflutter_alert/rflutter_alert.dart' as Prefix;
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../../application/providers/api_provider.dart';
import '../../../../../../application/utils/navigation.dart';
import '../../../../../../domain/FCMNotification/fcm_notification_model.dart';
import '../../../../../../infrastructure/param/filter_params.dart';
import '../../../../../widgets/loading_shimmer.dart';

class PinConfirmBuy extends ConsumerStatefulWidget {
  const PinConfirmBuy({Key? key, required this.voucherId}) : super(key: key);
  final String voucherId;

  @override
  ConsumerState<PinConfirmBuy> createState() => _PinUpdatefieldState();
}

class _PinUpdatefieldState extends ConsumerState<PinConfirmBuy> {
  TextEditingController textEditingController = TextEditingController();

  StreamController<ErrorAnimationType>? errorController;

  bool hasPointError = false;
  bool hasPinError = false;
  bool isLoading = false;
  String pinCode = "";

  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
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
        Prefix.Alert(
          context: context,
          type: Prefix.AlertType.success,
          title: notification.Title,
          desc: notification.Content,
          useRootNavigator: false,
          buttons: [
            Prefix.DialogButton(
              child: Text(
                "Ok",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                voucherPageNavigation(context);
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
        Prefix.Alert(
          context: context,
          type: Prefix.AlertType.error,
          title: notification.Title,
          desc: notification.Content,
          useRootNavigator: false,
          buttons: [
            Prefix.DialogButton(
              child: Text(
                "Ok",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                voucherPageNavigation(context);
              },
              width: 120,
            )
          ],
        ).show();
      }
    });
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

  @override
  Widget build(BuildContext context) {
    Parameters param = Parameters(parameterList: [widget.voucherId, pinCode]);

    return Column(
      children: <Widget>[
        const SizedBox(height: 30),
        Form(
          key: formKey,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                width: 340,
                child: PinCodeTextField(
                  appContext: context,
                  pastedTextStyle: TextStyle(
                    color: global.primary2,
                    fontWeight: FontWeight.bold,
                  ),
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  keyboardType: TextInputType.number,
                  length: 6,
                  obscureText: true,
                  obscuringCharacter: '*',
                  blinkWhenObscuring: true,
                  animationType: AnimationType.fade,
                  textStyle: GoogleFonts.montserrat(
                    color: global.normalText,
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                  validator: (v) {
                    if (pinCode.length != 6) {
                      return "Nhập đủ 6 chữ số*";
                    } else {
                      return null;
                    }
                  },
                  pinTheme: PinTheme(
                    fieldHeight: 45,
                    fieldWidth: 45,
                    shape: PinCodeFieldShape.box,
                    inactiveColor: global.primary2,
                    selectedColor: global.primary2,
                    activeFillColor: global.primary2,
                    selectedFillColor: global.primary2,
                    activeColor: global.primary2,
                    inactiveFillColor: Colors.grey.shade100,
                    borderWidth: 2,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  cursorColor: Colors.black,
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  errorAnimationController: errorController,
                  controller: textEditingController,
                  boxShadows: const [
                    BoxShadow(
                      offset: Offset(0, 1),
                      color: Colors.black12,
                      blurRadius: 10,
                    )
                  ],
                  onCompleted: (v) {
                    debugPrint("Completed");
                  },
                  onChanged: (value) {
                    debugPrint(value);
                    setState(() {
                      pinCode = value;
                    });
                  },
                  beforeTextPaste: (text) {
                    return false;
                  },
                )),
          ]),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: isLoading
              ? const LoadingShimmer(
                  height: 18.0,
                  width: 200.0,
                  color: Color.fromARGB(118, 2, 193, 123),
                  baseColor: Color.fromARGB(118, 0, 100, 63),
                )
              : Text(
                  hasPointError
                      ? "Số Point trong tài khoản chưa đủ"
                      : hasPinError
                          ? "Mã PIN chưa chính xác"
                          : "",
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
              child: TextButton(
                onPressed: () async {
                  final buyVoucherProvider =
                      ref.read(buyVoucherFutureProvider(param));
                  await fireBaseMessage();
                  formKey.currentState!.validate();
                  buyVoucherProvider.when(
                    data: (response) {
                      print(response);
                      if (response.statusCode == 400) {
                        errorController!.add(ErrorAnimationType
                            .shake); // Triggering error shake animation
                        setState(() {
                          isLoading = false;
                          if (response.data['ErrorName'] ==
                              'INSUFFICENT_TOKEN') {
                            hasPointError = true;
                          } else {
                            hasPinError = true;
                          }
                        });
                      } else if (response.statusCode == 200) {
                        setState(
                          () {
                            isLoading = false;
                            hasPointError = false;
                          },
                        );
                      } else {
                        setState(
                          () {
                            isLoading = false;
                            hasPointError = false;
                          },
                        );
                      }
                    },
                    error: (error, stackTrace) {
                      errorController!.add(ErrorAnimationType
                          .shake); // Triggering error shake animation
                      setState(() {
                        isLoading = false;
                        hasPointError = true;
                      });
                    },
                    loading: () => setState(() => isLoading = true),
                  );
                  // conditions for validating
                },
                child: const Center(
                    child: Text(
                  "Xác nhận",
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
                    hasPointError = false;
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
