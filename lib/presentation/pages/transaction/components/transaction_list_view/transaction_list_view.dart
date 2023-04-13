import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/pages/transaction/components/transaction_list_view/transaction_item.dart';
import 'package:wage/presentation/widgets/shimmer_list.dart';

import '../../../../../application/providers/api_provider.dart';

class TransactionListView extends ConsumerWidget {
  const TransactionListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactionList = ref.watch(transactionListFutureProvider);
    return transactionList.when(
        data: (data) {
          return Container(
            width: 340,
            constraints: const BoxConstraints(
              minHeight: 300,
            ),
            child: data.isNotEmpty
                ? ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: data.length,
                    itemBuilder: (context, int index) {
                      return TransactionItem(
                        transaction: data[index],
                      );
                    },
                  )
                : Text(
                    'Bạn chưa có giao dịch nào',
                    style: GoogleFonts.openSans(
                      color: const Color.fromARGB(255, 47, 47, 47),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ).centered(),
          );
        },
        error: (error, stackTrace) {
          print(error);
          return const ShimmerList(
              height: 50.0,
              width: 325.0,
              row: 3,
              color: Color.fromARGB(118, 2, 193, 123),
              baseColor: Color.fromARGB(118, 0, 100, 63));
        },
        loading: () => const ShimmerList(
            height: 50.0,
            width: 325.0,
            row: 3,
            color: Color.fromARGB(118, 2, 193, 123),
            baseColor: Color.fromARGB(118, 0, 100, 63)));
  }
}
