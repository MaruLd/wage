import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/pages/voucher/components/voucher_list_view/voucher_filter_item.dart';
import 'package:wage/presentation/pages/voucher/components/voucher_list_view/voucher_item.dart';
import 'package:wage/presentation/widgets/shimmer_list.dart';

import '../../../../../application/providers/api_provider.dart';
import '../../../../../application/providers/search_provider.dart';
import '../../../../../domain/Voucher/voucher_model.dart';

class VoucherListView extends ConsumerStatefulWidget {
  const VoucherListView({Key? key}) : super(key: key);

  @override
  ConsumerState<VoucherListView> createState() => _VoucherListViewState();
}

class _VoucherListViewState extends ConsumerState<VoucherListView> {
  VoucherTypeEnum activeVoucherType = VoucherTypeEnum.all;
  @override
  Widget build(BuildContext context) {
    void ChangeActiveVoucherType(VoucherTypeEnum type) {
      setState(
        () {
          activeVoucherType = type;
        },
      );
    }

    final voucherProvider = ref.watch(voucherListFutureProvider);
    final List<Voucher> voucherList =
        ref.watch(searchVoucherProvider).voucherList;
    List<dynamic> voucherTypeList = VoucherTypeEnum.values.toList();
    return voucherProvider.when(
        data: (data) {
          return Column(
            children: [
              SizedBox(
                  width: 380,
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: voucherTypeList.length,
                    itemBuilder: (context, int index) {
                      return VoucherFilterItem(
                        voucherType: voucherTypeList[index],
                        activeVoucherType: activeVoucherType,
                        ChangeActiveVoucherType: ChangeActiveVoucherType,
                      ).p4();
                    },
                  )),
              const SizedBox(
                height: 8,
              ),
              Container(
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
                          return VoucherItem(
                            voucher: voucherList[index],
                          );
                        },
                      )
                    : Text(
                        'Hệ thống chưa có voucher nào',
                        style: GoogleFonts.openSans(
                          color: const Color.fromARGB(255, 47, 47, 47),
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ).centered(),
              ),
            ],
          );
        },
        error: (error, stackTrace) => const ShimmerList(
            height: 125.0,
            width: 370.0,
            row: 5,
            color: Color.fromARGB(118, 2, 193, 123),
            baseColor: Color.fromARGB(118, 0, 100, 63)),
        loading: () => const ShimmerList(
            height: 125.0,
            width: 370.0,
            row: 5,
            color: Color.fromARGB(118, 2, 193, 123),
            baseColor: Color.fromARGB(118, 0, 100, 63)));
  }
}
