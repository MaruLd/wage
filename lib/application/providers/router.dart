import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wage/presentation/pages/navbar/navbar.dart';
import 'package:wage/presentation/pages/welcome/sign_in_page.dart';
import 'package:wage/application/providers/auth_datas_provider.dart';

import 'api_provider.dart';

final _key = GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authProvider);
  final tokenState = ref.watch(apiTokenProvider);

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
        path: WelcomePage.routeLocation,
        name: WelcomePage.routeName,
        builder: (context, state) {
          return const WelcomePage();
        },
      ),
    ],
    redirect: (context, state) {
      // If our async state is loading, don't perform redirects, yet
      if (authState.isLoading || authState.hasError) return null;

      // This has to do with how the FirebaseAuth SDK handles the "log-in" state
      // Returning `null` means "we are not authorized"
      final isAuth =
          authState.valueOrNull != null && tokenState.valueOrNull != null;

      final isLoggingIn = state.location == WelcomePage.routeLocation;

      if (isLoggingIn) return isAuth ? Navigation.routeLocation : null;

      return isAuth ? Navigation.routeLocation : WelcomePage.routeLocation;
    },
  );
});

// final routerProvider = Provider<GoRouter>((ref) {
//   final router = RouterNotifier(ref);
//   return GoRouter(
//       navigatorKey: _key,
//       debugLogDiagnostics: true,
//       refreshListenable: router,
//       redirect: router._redirectLogic,
//       routes: router._routes);
// });

// class RouterNotifier extends ChangeNotifier {
//   final Ref _ref;

//   RouterNotifier(this._ref) {
//     _ref.listen<LoginState>(
//       loginControllerProvider,
//       (_, __) => notifyListeners(),
//     );
//   }

//   String? _redirectLogic(BuildContext context, GoRouterState state) {
//     final loginState = _ref.watch(loginControllerProvider);
//     final authState = _ref.watch(authProvider);

//     final isAuth = loginState is LoginStateSuccess;
//     final isWelcome = state.location == WelcomePage.routeLocation;
//     final isLoggingIn = state.location == SignInPage.routeLocation;

//     if (isWelcome) {
//       return isAuth ? Navigation.routeLocation : SignInPage.routeLocation;
//     }

//     if (loginState is LoginStateInitial) {
//       return isLoggingIn ? null : SignInPage.routeLocation;
//     }

//     if (isLoggingIn)
//       return isAuth ? Navigation.routeLocation : SignInPage.routeLocation;

//     return isAuth ? null : WelcomePage.routeLocation;
//   }

//   List<GoRoute> get _routes => [
//         GoRoute(
//           path: Navigation.routeLocation,
//           name: Navigation.routeName,
//           builder: (context, state) {
//             return const Navigation();
//           },
//         ),
//         GoRoute(
//           path: SignInPage.routeLocation,
//           name: SignInPage.routeName,
//           builder: (context, state) {
//             return const SignInPage();
//           },
//         ),
//         GoRoute(
//           path: VoucherPage.routeLocation,
//           name: VoucherPage.routeName,
//           builder: (context, state) {
//             return VoucherPage();
//           },
//         ),
//       ];
// }
