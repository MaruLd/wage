// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/providers/api_provider.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

class HomePageHeader extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Padding(
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
                      Row(children: [
                        TextButton.icon(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(
                              Icons.arrow_back,
                              color: global.background,
                              size: 25.sp,
                            ),
                            label: Text('')),
                        Text(
                          'CHUYỂN ĐỔI COIN',
                          style: global.boldTextStyle,
                        ),
                      ]),
                    ],
                  ),
                ],
              ),
            ).flexible(),
          ],
        ),
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
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => CircularProgressIndicator().centered(),
        data: (userData) {
          return Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                child: Container(
                  width: 70,
                  height: 70,
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
              Padding(
                padding: EdgeInsetsDirectional.all(8.0),
                child: Text(
                  userData.fullName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: global.background,
                    fontWeight: FontWeight.w500,
                    fontSize: 24.sp,
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                child: walletsData.when(
                  // show previous data/error on loading
                  skipLoadingOnReload: true,
                  // show previous data if there's an error
                  skipError: true,
                  data: (walletData) {
                    return Text(walletData.totalPoint.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: global.background,
                          fontFamily: global.numberFont,
                          fontWeight: FontWeight.w700,
                          fontSize: 40.sp,
                        ));
                  },
                  error: (error, stackTrace) {
                    print(error.toString());
                    return Text('0', style: global.boldNumberStyle);
                  },
                  loading: () => CircularProgressIndicator().centered(),
                ),
              ),
            ],
          );
        });
  }
}

class VoucherBody extends ConsumerWidget {
  const VoucherBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: global.background,
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Color(0x34000000),
                offset: Offset(0, -2),
              )
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
              topLeft: Radius.circular(40.r),
              topRight: Radius.circular(40.r),
            ),
          ),
          child: MyVoucherItem(),
        ));
  }
}

class MyVoucherItem extends StatelessWidget {
  MyVoucherItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          padding: EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(1, 1), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            children: [
              Text('image'),
              SizedBox(
                width: 8,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.62,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'data',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: global.normalText,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        // SizedBox(
                        //   width: 20,
                        // ),
                        Icon(
                          Icons.schedule_rounded,
                          color: global.primary,
                          size: 14,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          'Data 1',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 12,
                              color: global.primary,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        // SizedBox(
                        //   width: 20,
                        // ),
                        Icon(
                          Icons.location_on_outlined,
                          color: global.darkGreen,
                          size: 14,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Flexible(
                          child: Text(
                            'data',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 12, color: global.background),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }

  Widget buildProgress(
      {Color? activeColor,
      Color? inactiveColor,
      double progress = 1,
      double? height,
      double width = 100}) {
    if (inactiveColor == null) {
      inactiveColor = Colors.grey;
    }
    if (height == null) {
      height = 4;
    }
    if (progress > 1) {
      progress /= 100;
    }
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: inactiveColor,
          borderRadius: BorderRadius.all(Radius.circular(4))),
      child: Stack(
        children: <Widget>[
          Container(
            width: width * progress,
            height: height,
            decoration: BoxDecoration(
                color: activeColor,
                borderRadius: BorderRadius.all(Radius.circular(4))),
          )
        ],
      ),
    );
  }
}
