import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../widgets/loading_shimmer.dart';

class LevelProgress extends ConsumerWidget {
  const LevelProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nextLevel = ref.watch(nextLevelFutureProvider);
    final walletData = ref.watch(walletsFutureProvider);

    double? userXp = walletData.whenOrNull(data: (data) => data.totalXP);
    double? nextLevelXp = nextLevel.whenOrNull(data: (data) => data.xpNeeded);
    double xpNeededToLevelUp = nextLevelXp ?? 0 - (userXp ?? 0);

    return SizedBox(
      width: 390,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 160.0,
            child: Container(
              margin: EdgeInsets.fromLTRB(18, 12, 12, 12),
              decoration: BoxDecoration(
                color: Color.fromARGB(25, 0, 178, 113),
                borderRadius: new BorderRadius.only(
                    topRight: Radius.elliptical(50, 50),
                    bottomRight: Radius.elliptical(50, 50)),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(38, 16, 27, 16),
                child: Text(
                  'Level kế: $xpNeededToLevelUp exp',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: global.primary,
                    fontFamily: global.headerFont,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            child: Container(
              width: 180,
              margin: EdgeInsets.fromLTRB(22, 12, 12, 12),
              decoration: BoxDecoration(
                color: global.primary2,
                borderRadius: new BorderRadius.all(Radius.elliptical(50, 50)),
              ),
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(27, 16, 27, 16),
                  child: walletData.when(
                    data: (data) => Text('Hiện có: ${data.totalXP} exp',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: global.background,
                          fontFamily: global.headerFont,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        )),
                    error: (error, stackTrace) {
                      return LoadingShimmer(
                        height: 20.0,
                        width: 120.0,
                        color: Color.fromARGB(118, 2, 193, 123),
                      );
                    },
                    loading: () => LoadingShimmer(
                        height: 20.0,
                        width: 120.0,
                        color: Color.fromARGB(118, 2, 193, 123)),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
