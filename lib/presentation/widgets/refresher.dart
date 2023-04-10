import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import '../../../application/providers/api_provider.dart';

class Refresher extends ConsumerWidget {
  const Refresher({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<Null> _refreshData() async {
      Future.delayed(const Duration(milliseconds: 500), () {
        ref.refresh(workHoursFutureProvider);
        ref.refresh(projectsCountProvider);
        ref.refresh(projectListFutureProvider);
        ref.refresh(nextLevelFutureProvider);
        ref.refresh(userFutureProvider);
        ref.refresh(walletsFutureProvider);
        ref.refresh(salaryCycleFutureProvider);
        ref.refresh(voucherFutureProvider);
        ref.refresh(memberVoucherFutureProvider);
        ref.refresh(serverAvailableProvider);
        ref.refresh(transactionListFutureProvider);
        ref.refresh(notificationFutureProvider);
        print('refreshing data...');
      });
    }

    return Scaffold(
        backgroundColor: global.background,
        body: RefreshIndicator(
          color: global.primary2,
          triggerMode: RefreshIndicatorTriggerMode.anywhere,
          onRefresh: _refreshData,
          child: ListView(
              children: [Container(color: global.primary2, child: child)]),
        ));
  }
}
