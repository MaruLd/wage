// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import 'loading_shimmer.dart';

class Avatar extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userData = ref.watch(userFutureProvider);
    final walletsData = ref.watch(walletsFutureProvider);
    return userData.when(
        error: (error, stackTrace) => Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const LoadingShimmer(
                    height: 90.0,
                    width: 90.0,
                    color: Color.fromARGB(118, 2, 193, 123),
                    baseColor: Color.fromARGB(118, 0, 100, 63),
                  ).clipOval(),
                  const SizedBox(
                    height: 14,
                  ),
                  const LoadingShimmer(
                    height: 30.0,
                    width: 150.0,
                    color: Color.fromARGB(118, 2, 193, 123),
                    baseColor: Color.fromARGB(118, 0, 100, 63),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const LoadingShimmer(
                    height: 20.0,
                    width: 240.0,
                    color: Color.fromARGB(118, 2, 193, 123),
                    baseColor: Color.fromARGB(118, 0, 100, 63),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                ]),
        loading: () => Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const LoadingShimmer(
                    height: 90.0,
                    width: 90.0,
                    color: Color.fromARGB(118, 2, 193, 123),
                    baseColor: Color.fromARGB(118, 0, 100, 63),
                  ).clipOval(),
                  const SizedBox(
                    height: 14,
                  ),
                  const LoadingShimmer(
                    height: 30.0,
                    width: 150.0,
                    color: Color.fromARGB(118, 2, 193, 123),
                    baseColor: Color.fromARGB(118, 0, 100, 63),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const LoadingShimmer(
                    height: 20.0,
                    width: 240.0,
                    color: Color.fromARGB(118, 2, 193, 123),
                    baseColor: Color.fromARGB(118, 0, 100, 63),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                ]),
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
                userData.emailAddress ?? '',
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
