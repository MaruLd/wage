import 'package:flutter/cupertino.dart';

import 'components/body.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  static String get routeName => 'login';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context) {
    return WelcomeBody();
  }
}
