import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import 'package:wage/presentation/widgets/refresher.dart';
import '../../widgets/main_body.dart';
import '../../widgets/main_header.dart';
import 'components/body.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  static String get routeName => 'home';
  static String get routeLocation => '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: global.primary2,
      body: Refresher(
          children: Column(
        children: [
          MainHeader(),
          const SizedBox(
            height: 80,
          ),
          MainBody(children: MenuBody()),
        ],
      )),
    );
  }
}
