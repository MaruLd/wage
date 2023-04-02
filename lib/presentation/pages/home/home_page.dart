import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;
import 'package:wage/presentation/widgets/refresher.dart';
import '../../../application/providers/api_provider.dart';
import '../../widgets/main_body.dart';
import '../../widgets/main_header.dart';
import '../error/error_page.dart';
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
