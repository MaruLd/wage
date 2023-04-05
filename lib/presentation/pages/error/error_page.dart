import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:go_router/go_router.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/pages/home/home_page.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import 'package:wage/application/providers/auth_datas_provider.dart';

import '../../../application/providers/api_provider.dart';
import '../navigation/navigation_bar.dart';

class ErrorPage extends ConsumerWidget {
  const ErrorPage({super.key});
  static String get routeName => 'error';
  static String get routeLocation => '/error';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        var haveToken = ref.watch(apiTokenProvider);
        if (haveToken.valueOrNull == null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Navigation()),
          );
        }
      });
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Positioned(
          top: 650,
          left: 15,
          right: 15,
          child: TextButton(
            onPressed: () {
              Phoenix.rebirth(context);
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(18.0)),
              side: MaterialStateProperty.all(
                  BorderSide(color: global.darkGreen, width: 1)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13.r))),
            ),
            child: Text(
              'Khởi động lại app',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: global.headerText,
                  fontFamily: global.headerFont,
                  fontSize: 20,
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
          top: -250,
          left: 133,
          child: Container(
              width: 342,
              height: 342,
              decoration: BoxDecoration(
                color: Color.fromRGBO(48, 188, 151, 0.2),
                borderRadius: BorderRadius.all(Radius.elliptical(342, 342)),
              ))),
      Positioned(
          top: 200,
          left: 15,
          child: Container(
            width: 350,
            height: 100,
            child: Text(
              'ĐÃ XẢY RA LỖI\n VUI LÒNG QUAY LẠI SAU',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: global.headerText,
                  fontFamily: global.headerFont,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
          )),
      Positioned(
          top: 240,
          left: 7,
          right: 7,
          child: Container(
              width: 377,
              height: 404,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/error.png'),
                    fit: BoxFit.fitWidth),
              ))),
    ])));
  }
}
