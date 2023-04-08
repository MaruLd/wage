import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wage/presentation/pages/voucher/components/voucher_list_view/voucher_item.dart';
import 'package:wage/presentation/widgets/shimmer_list.dart';

import '../../../../../application/providers/api_provider.dart';
import '../../../../../application/providers/search_provider.dart';
import '../../../../../domain/Voucher/voucher_model.dart';

class VoucherListView extends ConsumerWidget {
  const VoucherListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final voucherProvider = ref.watch(voucherFutureProvider);
    final List<Voucher> voucherList =
        ref.watch(searchVoucherProvider).voucherList;

    return voucherProvider.when(
        data: (data) {
          return Container(
            width: 340,
            constraints: BoxConstraints(
              minHeight: 300,
            ),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: voucherList.length,
              itemBuilder: (context, int index) {
                return VoucherItem(
                  voucher: voucherList[index],
                );
              },
            ),
          );
        },
        error: (error, stackTrace) => ShimmerList(
            height: 126.0,
            width: 325.0,
            color: Color.fromARGB(118, 2, 193, 123),
            baseColor: Color.fromARGB(118, 0, 100, 63)),
        loading: () => ShimmerList(
            height: 126.0,
            width: 325.0,
            color: Color.fromARGB(118, 2, 193, 123),
            baseColor: Color.fromARGB(118, 0, 100, 63)));
  }
}
