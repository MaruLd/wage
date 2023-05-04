import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wage/domain/Voucher/voucher_model.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../application/notifier/voucher_search/search_event.dart';
import '../../../../../application/providers/search_provider.dart';

class VoucherFilterItem extends ConsumerWidget {
  const VoucherFilterItem({Key? key, required this.voucherType})
      : super(key: key);
  final VoucherTypeEnum voucherType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: global.primary2, width: 1.0),
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      height: 40,
      child: TextButton(
        onPressed: () {
          if (voucherType == VoucherTypeEnum.all) {
            ref.refresh(searchVoucherProvider);
          } else {
            ref.refresh(searchVoucherProvider);
            ref.read(searchVoucherProvider.notifier).mapEventsToState(
                  FilteredVoucherChanged(
                    type: voucherType,
                  ),
                );
          }
        },
        child:
            Text('${voucherType.name == 'all' ? 'Tất cả' : voucherType.name}',
                style: GoogleFonts.montserrat(
                  color: global.primary2,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                )),
      ),
    );
  }
}
