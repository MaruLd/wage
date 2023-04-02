// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;


class Avatar extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userData = ref.watch(userDataProvider);
    final walletsData = ref.watch(walletsDataProvider);
    return userData.when(
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
                  userData.fullName ?? '',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: global.headerText,
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
              ),
              Text(
                userData.emailAddress,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: global.headerText,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
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
