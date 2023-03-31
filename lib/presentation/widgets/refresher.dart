import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;
import '../../../application/providers/api_provider.dart';

class Refresher extends ConsumerWidget {
  const Refresher({
    Key? key,
    required this.children,
  }) : super(key: key);
  final Widget children;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<Null> _refreshData() async {
      Future.delayed(const Duration(milliseconds: 500), () {
        ref.refresh(memberWorkHoursProvider);
        ref.refresh(projectsCountProvider);
        ref.refresh(projectListDatasProvider);
        ref.refresh(nextLevelDataProvider);
        ref.refresh(userDataProvider);
        ref.refresh(walletsDataProvider);
        ref.refresh(serverAvailableProvider);
        print('refreshing data...');
      });
    }

    return Scaffold(
        backgroundColor: global.primary2,
        body: RefreshIndicator(
          color: global.primary,
          triggerMode: RefreshIndicatorTriggerMode.anywhere,
          onRefresh: _refreshData,
          child: Stack(children: <Widget>[
            ListView(),
            SingleChildScrollView(child: children)
          ]),
        ));
  }
}
