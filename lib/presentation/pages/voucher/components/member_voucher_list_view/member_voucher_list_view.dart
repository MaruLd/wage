import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/widgets/shimmer_list.dart';

import '../../../../../application/providers/api_provider.dart';
import '../../../../../application/providers/search_provider.dart';
import '../../../../../domain/Voucher/voucher_model.dart';
import 'member_voucher_item.dart';

class MemberVoucherListView extends ConsumerWidget {
  const MemberVoucherListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final memberVoucherProvider = ref.watch(memberVoucherListFutureProvider);
    final List<MemberVoucher> voucherList =
        ref.watch(searchMemberVoucherProvider).memberVoucherList;

    return memberVoucherProvider.when(
        data: (data) {
          return Container(
            width: 370,
            constraints: const BoxConstraints(
              minHeight: 300,
            ),
            child: data.isNotEmpty
                ? ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: voucherList.length,
                    itemBuilder: (context, int index) {
                      return MemberVoucherItem(
                        memberVoucher: voucherList[index],
                      );
                    },
                  )
                : Text(
                    'Bạn chưa có voucher nào',
                    style: GoogleFonts.openSans(
                      color: const Color.fromARGB(255, 47, 47, 47),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ).centered(),
          );
        },
        error: (error, stackTrace) => const ShimmerList(
            height: 126.0,
            width: 370.0,
            row: 5,
            color: Color.fromARGB(118, 2, 193, 123),
            baseColor: Color.fromARGB(118, 0, 100, 63)),
        loading: () => const ShimmerList(
            height: 126.0,
            width: 370.0,
            row: 5,
            color: Color.fromARGB(118, 2, 193, 123),
            baseColor: Color.fromARGB(118, 0, 100, 63)));
  }
}
