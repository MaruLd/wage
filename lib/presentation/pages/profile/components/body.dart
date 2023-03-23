// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

class ProfileHeader extends StatefulWidget {
  const ProfileHeader(
      {Key? key,
      required this.backFunctions,
      required this.overview,
      required this.overviewDetail,
      required this.projectsDetail})
      : super(key: key);
  final Function backFunctions;
  final bool overview;
  final bool overviewDetail;
  final bool projectsDetail;

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  @override
  Widget build(BuildContext context) {
    String pageHeader() {
      if (widget.overview) {
        return 'HỒ SƠ';
      } else if (widget.overviewDetail) {
        return 'THÀNH TÍCH';
      } else if (widget.projectsDetail) {
        return 'CÁC DỰ ÁN';
      } else {
        return '';
      }
    }

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          TextButton.icon(
                              onPressed: () => widget.backFunctions(context),
                              icon: Icon(
                                Icons.arrow_back,
                                color: global.background,
                                size: 25.sp,
                              ),
                              label: Text('')),
                          Expanded(
                            child: Center(
                              child: Text(
                                pageHeader(),
                                style: global.boldTextStyle,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 75,
                          )
                        ]),
                  ],
                ),
              ],
            ),
          ).flexible(),
        ],
      ),
    );
  }
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
        error: (error, stackTrace) => Text(
              'Sorry, server currently down!',
              style: global.boldTextStyle,
            ),
        loading: () => CircularProgressIndicator().centered(),
        data: (userData) {
          return Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: global.circle,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.all(4),
                  child: Container(
                    width: 90,
                    height: 90,
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
              Padding(
                padding: EdgeInsetsDirectional.all(8.0),
                child: Text(
                  userData.fullName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: global.headerText,
                    fontWeight: FontWeight.w700,
                    fontSize: 24.sp,
                  ),
                ),
              ),
              Text(
                userData.emailAddress,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: global.headerText,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
            ],
          );
        });
  }
}
