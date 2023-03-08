import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:go_router/go_router.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;
import 'package:wage/presentation/providers/auth_datas_provider.dart';

class ErrorPage extends ConsumerWidget {
  const ErrorPage({super.key});
  static String get routeName => 'error';
  static String get routeLocation => '/error';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(authProvider.select(
      (value) => value.valueOrNull?.displayName,
    ));

    return Scaffold(
        body: ListView(padding: EdgeInsets.all(24), children: [
      const SizedBox(
        height: 8,
      ),
      ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.all(18.0)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13.r))),
          backgroundColor: MaterialStateProperty.all<Color>(global.primary),
        ),
        child: Text(
          'Refresh',
          textAlign: TextAlign.left,
          style: TextStyle(
              color: global.background,
              fontFamily: global.headerFont,
              fontSize: 20.sp,
              fontWeight: FontWeight.w700),
        ),
        onPressed: () => context.go("/"),
      ),
    ]));
  }
}