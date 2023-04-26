import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wage/presentation/pages/navigation/navigation_bar.dart';
import 'package:wage/presentation/pages/sign_in/sign_in_page.dart';
import 'package:wage/application/providers/auth_datas_provider.dart';

import '../../presentation/pages/setting/setting_page.dart';

final _key = GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);

  return GoRouter(
    navigatorKey: _key,
    debugLogDiagnostics: true,
    initialLocation: Navigation.routeLocation,
    routes: [
      GoRoute(
        path: Navigation.routeLocation,
        name: Navigation.routeName,
        builder: (context, state) {
          return const Navigation();
        },
      ),
      GoRoute(
        path: SettingPage.routeLocation,
        name: SettingPage.routeName,
        builder: (context, state) {
          return const SettingPage();
        },
      ),
      GoRoute(
        path: SignInPage.routeLocation,
        name: SignInPage.routeName,
        builder: (context, state) {
          return const SignInPage();
        },
      ),
    ],
    redirect: (context, state) {
      // If our async state is loading, don't perform redirects, yet
      if (authState.isLoading || authState.hasError) return null;

      // This has to do with how the FirebaseAuth SDK handles the "log-in" state
      // Returning `null` means "we are not authorized"
      final isAuth = authState.valueOrNull != null;
      final isLoggingIn = state.location == SignInPage.routeLocation;

      if (isLoggingIn)
        return isAuth ? Navigation.routeLocation : SignInPage.routeLocation;

      return isAuth ? Navigation.routeLocation : null;
    },
  );
});