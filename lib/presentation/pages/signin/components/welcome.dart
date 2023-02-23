import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wage/presentation/pages/signin/components/body.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    void _navigateToSignInBody(BuildContext context) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => SignInBody()));
    }

    return Scaffold(
        backgroundColor: global.background,
        body: SafeArea(
          child: Stack(children: <Widget>[
            Positioned(
              top: 156.h,
              left: 7.w,
              right: 7.w,
              child: SvgPicture.asset('assets/images/SplashBackground.svg'),
            ),
            Positioned(
                top: 70.h,
                left: 15.w,
                right: 0,
                child: Container(
                    height: 485,
                    width: 11,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Welcome.png'),
                          fit: BoxFit.fitWidth),
                    ))),
            Positioned(
                top: 440.h,
                left: -55.w,
                child: Container(
                    width: 455,
                    height: 455,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(48, 188, 151, 0.1),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(445, 406)),
                    ))),
            Positioned(
                top: 510.h,
                left: 31.w,
                right: 31.w,
                child: Text(
                  'Wallet for storing your Awards, Gains and Earnings',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: global.primary2,
                      fontFamily: global.headerFont,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w700),
                )),
            Positioned(
                top: 590.h,
                left: 31.w,
                right: 31.w,
                child: Text(
                  'Ví lưu trữ phúc lợi chỉ có tại\nUni Incubator',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: global.normalText,
                    fontFamily: global.smoothFont,
                    fontSize: 21.sp,
                  ),
                )),
            // ----------Begin button----------
            Positioned(
                bottom: 40.h,
                left: 10.w,
                right: 10.w,
                child: ElevatedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(18.0)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13.0))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(global.primary),
                  ),
                  child: Text(
                    'Bắt đầu',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: global.background,
                        fontFamily: global.headerFont,
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  onPressed: () {
                    _navigateToSignInBody(context);
                  },
                )),
          ]),
        ));
  }
}
