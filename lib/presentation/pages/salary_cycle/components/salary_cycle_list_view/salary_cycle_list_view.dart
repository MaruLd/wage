import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/presentation/pages/salary_cycle/components/salary_cycle_list_view/salary_cycle_item.dart';
import 'package:wage/presentation/widgets/shimmer_list.dart';

class SalaryCycleListView extends ConsumerWidget {
  const SalaryCycleListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final salaryCycleList = ref.watch(salaryCycleFutureProvider);

    return salaryCycleList.when(
        data: (data) {
          return Container(
            width: 340,
            constraints: new BoxConstraints(
              minHeight: 300,
            ),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: data.length,
              itemBuilder: (context, int index) {
                return Container(
                  width: 320,
                  child: SalaryCycleItem(
                    onTap: () {},
                    salaryCycle: data[index],
                  ),
                );
              },
            ),
          );
        },
        error: (error, stackTrace) => const ShimmerList(
            height: 50.0,
            width: 340.0,
            row: 3,
            color: Color.fromARGB(118, 2, 193, 123),
            baseColor: Color.fromARGB(118, 0, 100, 63)),
        loading: () => const ShimmerList(
            height: 50.0,
            width: 340.0,
            row: 3,
            color: Color.fromARGB(118, 2, 193, 123),
            baseColor: Color.fromARGB(118, 0, 100, 63)));
  }
}
