import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wage/presentation/pages/navbar/navbar.dart';
import 'package:wage/presentation/pages/signin/sign_in_page.dart';
import 'package:wage/providers/auth_datas_provider.dart';

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

      // Here we guarantee that hasData == true, i.e. we have a readable value

      // This has to do with how the FirebaseAuth SDK handles the "log-in" state
      // Returning `null` means "we are not authorized"
      final isAuth = authState.valueOrNull != null;

      final isLoggingIn = state.location == SignInPage.routeLocation;
      if (isLoggingIn) return isAuth ? Navigation.routeLocation : null;

      return isAuth ? Navigation.routeLocation : SignInPage.routeLocation;
    },
  );
});
