import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wage/presentation/widgets/refresher.dart';
import '../../widgets/main_body.dart';
import '../../widgets/home_header.dart';
import 'components/body.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  static String get routeName => 'home';
  static String get routeLocation => '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Refresher(
        child: Column(
      children: [
        const HomeHeader(),
        const SizedBox(
          height: 80,
        ),
        MainBody(child: MenuBody()),
      ],
    ));
  }
}
