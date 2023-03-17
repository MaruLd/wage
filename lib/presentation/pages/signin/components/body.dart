import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;
import 'package:wage/presentation/providers/api_provider.dart';

import '../../../providers/login_controller_provider.dart';

class SignInBody extends ConsumerWidget {
  SignInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    final googleSignInProvider = ref.watch(googleProvider);
    final stateProvider = ref.read(loginControllerProvider.notifier);

    void login(String email, String password) async {
      ref.read(loginControllerProvider.notifier).login(email, password);
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: global.background,
        body: Stack(children: <Widget>[
          // ----------Email section----------
          Positioned(
            top: 380.h,
            left: 35.w,
            right: 35.w,
            child: Container(
              width: 315,
              height: 58,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                controller: emailController,
                maxLines: 1,
                style: TextStyle(
                  color: global.normalText,
                  fontFamily: global.mainFont,
                  fontSize: 20.sp,
                ),
                decoration: InputDecoration(
                  isDense: true,
                  labelText: 'Email / Id number',
                  labelStyle: TextStyle(
                    color: global.secondary2,
                    fontFamily: global.mainFont,
                    fontSize: 18.sp,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: global.darkGreen),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: global.primary2),
                  ),
                ),
              ),
            ),
          ),

          // ----------Password section----------
          Positioned(
            top: 450.h,
            left: 35.w,
            right: 35.w,
            child: Container(
              width: 315,
              height: 58,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: TextFormField(
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                controller: passwordController,
                maxLines: 1,
                style: TextStyle(
                  color: global.normalText,
                  fontFamily: global.mainFont,
                  fontSize: 20.sp,
                ),
                decoration: InputDecoration(
                  isDense: true,
                  labelText: 'Mật khẩu',
                  labelStyle: TextStyle(
                    color: global.secondary2,
                    fontFamily: global.mainFont,
                    fontSize: 18.sp,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: global.darkGreen),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: global.primary2),
                  ),
                ),
              ),
            ),
          ),

          // ----------Forget password----------
          Positioned(
            top: 520.h,
            left: 32.w,
            child: TextButton(
              style: TextButton.styleFrom(
                primary: global.forgetButton,
                textStyle: TextStyle(fontSize: 16.sp),
              ),
              onPressed: () {},
              child: const Text('Quên mật khẩu?'),
            ),
          ),

          // ----------Sign in button----------
          Positioned(
              top: 590.h,
              left: 15.w,
              right: 15.w,
              child: ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(18.0)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.r))),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(global.primary),
                ),
                child: Text(
                  'Đăng nhập',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: global.background,
                      fontFamily: global.headerFont,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700),
                ),
                onPressed: () {
                  login(emailController.text, passwordController.text);
                },
              )),
          // or text
          Positioned.fill(
            top: 540.h,
            left: 15.w,
            right: 15.w,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: global.smallText,
                      thickness: 1,
                      indent: 0.1,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Hoặc',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: global.smallText,
                          fontFamily: global.headerFont,
                          fontSize: 14.sp,
                        ),
                      )),
                  Expanded(
                    child: Divider(
                      color: global.smallText,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // ----------Google section----------
          Positioned(
              top: 700.h,
              left: 15.w,
              right: 15.w,
              child: OutlinedButton.icon(
                onPressed: () {
                  googleSignInProvider.googleLogin();
                  stateProvider.googleLogin();
                },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(18.0)),
                  side: MaterialStateProperty.all(
                      BorderSide(color: global.darkGreen, width: 1)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.r))),
                ),
                icon: SvgPicture.asset('assets/images/SignInGoogleLogo.svg'),
                label: Text(
                  'Đăng nhập với Google',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: global.headerText,
                      fontFamily: global.headerFont,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700),
                ),
              )),

          Positioned(
              top: -261,
              left: -109,
              child: Container(
                  width: 445,
                  height: 406,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(48, 188, 151, 0.2),
                    borderRadius: BorderRadius.all(Radius.elliptical(445, 406)),
                  ))),
          Positioned(
              top: -250.h,
              left: 133.w,
              child: Container(
                  width: 342,
                  height: 342,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(48, 188, 151, 0.2),
                    borderRadius: BorderRadius.all(Radius.elliptical(342, 342)),
                  ))),
          Positioned(
              top: 190.h,
              left: 7.w,
              right: 7.w,
              child: Container(
                  width: 377,
                  height: 124,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/wagelogo.png'),
                        fit: BoxFit.fitWidth),
                  ))),
          Positioned(
              top: 330.h,
              left: 35.w,
              child: Text(
                'Đăng nhập',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: global.headerText,
                    fontFamily: global.headerFont,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700),
              )),
        ]));
  }
}
