// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/providers/api_provider.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

class WalletHeader extends StatefulWidget {
  const WalletHeader({
    Key? key,
    required this.backFunctions,
  }) : super(key: key);
  final Function backFunctions;

  @override
  State<WalletHeader> createState() => _WalletHeaderState();
}

class _WalletHeaderState extends State<WalletHeader> {
  @override
  Widget build(BuildContext context) {
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
                                'Username',
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
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: global.primary2),
                child: CircularPercentIndicator(
                  percent: 0.5,
                  radius: 100,
                  lineWidth: 35,
                  reverse: true,
                  progressColor: global.background,
                  backgroundColor: Color.fromARGB(66, 255, 255, 255),
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: global.militaryGreen),
                    width: 130,
                    height: 130,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/Level 4.svg',
                            width: 80,
                            height: 80,
                            fit: BoxFit.fitHeight,
                          ),
                          Text(
                            'Leader',
                            style: global.boldSmallTextStyle,
                          )
                        ]),
                  ),
                ).p24(),
              ),
              const SizedBox(
                height: 18,
              ),
            ],
          );
        });
  }
}
