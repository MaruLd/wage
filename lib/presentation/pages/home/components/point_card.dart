import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/providers/api_provider.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

class PointCard extends ConsumerWidget {
  const PointCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final walletsData = ref.watch(walletsDataProvider);
    return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 130.h,
              width: 318.w,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 6,
                    color: Colors.black,
                    offset: Offset(0, 2),
                  )
                ],
                gradient: LinearGradient(
                  colors: [Color(0xFF014131), Color(0xD2026E5A)],
                  stops: [0, 1],
                  begin: AlignmentDirectional(0, -1),
                  end: AlignmentDirectional(0, 1),
                ),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 35, 2, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Số point khả dụng',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: global.background,
                                fontWeight: FontWeight.w300,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 10, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            walletsData.when(
                              // show previous data/error on loading
                              skipLoadingOnReload: true,
                              // show previous data if there's an error
                              skipError: true,
                              data: (wallet) {
                                return Text(wallet.totalPoint.toString(),
                                    style: global.boldTextStyle);
                              },
                              error: (error, stackTrace) {
                                print(error.toString());
                                return Text('0', style: global.boldTextStyle);
                              },
                              loading: () => CircularProgressIndicator(
                                      color: global.primary)
                                  .centered(),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/PointCardBackground.png',
                  ).offset(offset: Offset(8, 4)),
                ],
              ),
            ),
          ],
        ));
  }
}
