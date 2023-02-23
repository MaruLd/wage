import 'package:flutter/cupertino.dart';
import 'package:wage/presentation/pages/signin/components/welcome.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  static String get routeName => 'login';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context) {
    return WelcomeBody();
  }
}
