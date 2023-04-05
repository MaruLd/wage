// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../application/utils/navigation.dart';
import '../pages/profile_overview/profile_page.dart';
import 'loading_shimmer.dart';

class MainHeader extends ConsumerWidget {
  const MainHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userData = ref.watch(userDataProvider);
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
                    Text(
                      'Xin chào,',
                      style: global.textStyle,
                    ),
                    userData.when(
                      // show previous data/error on loading
                      skipLoadingOnReload: true,
                      // show previous data if there's an error
                      skipError: true,
                      data: (userData) => Text(
                        userData.fullName ?? '',
                        style: global.boldTextStyle,
                      ),
                      error: (error, stackTrace) {
                        print(error.toString());
                        return LoadingShimmer(
                          height: 25.0,
                          width: 190.0,
                          color: Color.fromARGB(118, 2, 193, 123),
                          baseColor: Color.fromARGB(118, 0, 100, 63),
                        );
                      },
                      loading: () => LoadingShimmer(
                        height: 25.0,
                        width: 190.0,
                        color: Color.fromARGB(118, 2, 193, 123),
                        baseColor: Color.fromARGB(118, 0, 100, 63),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ).flexible(),
          const SizedBox(
            width: 20,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.bell_solid,
              color: global.background,
              size: 30.0,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              TextButton(
                onPressed: () {
                  settingPageNavigation(context);
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
                      child: userData.when(
                        data: (userData) => userData.imageUrl != null
                            ? Image.network(userData.imageUrl!)
                            : Image.asset('assets/images/ANYAA.png'),
                        error: (error, stackTrace) {
                          print(error.toString());
                          return LoadingShimmer(
                            height: 25.0,
                            width: 190.0,
                            color: Color.fromARGB(118, 2, 193, 123),
                          );
                        },
                        loading: () => LoadingShimmer(
                          height: 25.0,
                          width: 190.0,
                          color: Color.fromARGB(118, 2, 193, 123),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
