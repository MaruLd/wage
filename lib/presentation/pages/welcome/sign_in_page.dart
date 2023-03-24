import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/presentation/pages/home/home_page.dart';

import '../../../application/providers/auth_datas_provider.dart';
import '../navbar/navbar.dart';
import 'components/body.dart';

class WelcomePage extends ConsumerWidget {
  const WelcomePage({Key? key}) : super(key: key);

  static String get routeName => 'login';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const storage = const FlutterSecureStorage();
    final tokenState = ref.watch(apiTokenProvider);
    final authState = ref.watch(authProvider);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (tokenState.valueOrNull != null && authState.valueOrNull != null) {
        print(tokenState);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Navigation()),
        );
      }
    });
    return WelcomeBody();
  }
}
