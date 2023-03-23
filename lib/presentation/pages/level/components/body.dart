import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

import '../../../widgets/loading_shimmer.dart';
import 'level_detail/level_circle_progress.dart';
import 'level_detail/level_progress.dart';

class LevelHeader extends StatefulWidget {
  const LevelHeader({
    Key? key,
  }) : super(key: key);

  @override
  State<LevelHeader> createState() => _LevelHeaderState();
}

class _LevelHeaderState extends State<LevelHeader> {
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
                              onPressed: () => Navigator.pop(context),
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
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LevelCircleProgress(),
        const SizedBox(
          height: 10,
        ),
        LevelProgress(),
      ],
    );
  }
}
