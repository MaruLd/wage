import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/presentation/widgets/loading_shimmer.dart';

import '../../profile/profile_page.dart';

void _ProfilePageNavigation(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ProfilePage()),
  );
}

class Profile extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userData = ref.watch(userDataProvider);
    final walletsData = ref.watch(walletsDataProvider);
    return userData.when(
        // show previous data/error on loading
        skipLoadingOnReload: true,
        // show previous data if there's an error
        skipError: true,
        error: (error, stackTrace) => LoadingShimmer(
            height: 100.0,
            width: 50.0,
            color: Color.fromARGB(118, 2, 193, 123),
            baseColor: Color.fromARGB(118, 0, 100, 63)),
        loading: () => LoadingShimmer(
            height: 100.0,
            width: 50.0,
            color: Color.fromARGB(118, 2, 193, 123),
            baseColor: Color.fromARGB(118, 0, 100, 63)),
        data: (userData) {
          return Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  _ProfilePageNavigation(context);
                },
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: global.darkGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                    child: Container(
                      width: 60,
                      height: 60,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: userData.imageUrl != null
                          ? Image.network(userData.imageUrl!)
                          : Image.asset(
                              'assets/images/ANYAA.png',
                            ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.all(8.0),
                child: Text(
                  userData.fullName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: global.normalText,
                    fontWeight: FontWeight.w500,
                    fontSize: 24.sp,
                  ),
                ),
              )
            ],
          );
        });
  }
}

class Logout extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authProvider = ref.watch(googleProvider);
    return SimpleSettingsTile(
        title: 'Đăng Xuất',
        leading: Icon(
          Icons.logout,
          color: global.primary,
          size: 30.0,
        ),
        onTap: () {
          authProvider.signOutWithGoogle();
        });
  }
}

class Notifications extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SimpleSettingsTile(
        title: 'Thông báo',
        leading: Icon(
          CupertinoIcons.bell_fill,
          color: global.primary,
          size: 30.0,
        ),
        onTap: () {});
  }
}
