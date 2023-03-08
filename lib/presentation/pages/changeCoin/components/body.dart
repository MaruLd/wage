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

class ChangeCoinBody extends StatelessWidget {
  const ChangeCoinBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          child: Column(mainAxisSize: MainAxisSize.max, children: []),
        ));
  }
}
