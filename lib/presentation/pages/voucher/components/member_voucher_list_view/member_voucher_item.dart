import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/domain/Voucher/voucher_model.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import 'package:flutter_swipe_button/flutter_swipe_button.dart';

class MemberVoucherItem extends ConsumerWidget {
  const MemberVoucherItem({Key? key, required this.voucher}) : super(key: key);
  final MemberVoucher voucher;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FlipCard(
        fill: Fill
            .fillBack, // Fill the back side of the card to make in the same size as the front.
        direction: FlipDirection.VERTICAL, // default
        side: CardSide.FRONT, // The side to initially display.
        front: Container(
          height: 128,
          width: 325,
          decoration: BoxDecoration(
            color: Color.fromARGB(31, 69, 246, 157),
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 320,
                    constraints: BoxConstraints(maxHeight: 50),
                    child: Text(
                      voucher.voucher.voucherName!,
                      overflow: TextOverflow.clip,
                      style: GoogleFonts.montserrat(
                        color: global.headerText,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    width: 290,
                    constraints: new BoxConstraints(
                      maxHeight: 55,
                    ),
                    child: Text(
                      'Mô tả: ${voucher.voucher.voucherDescription}',
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.montserrat(
                        color: global.normalText,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    'HSD: ${DateFormat('dd/MM/yyyy').format(voucher.createdAt)} - ${DateFormat('dd/MM/yyyy').format(voucher.expiredAt!)}',
                    style: GoogleFonts.montserrat(
                      color: global.medium,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                ],
              ),
            ],
          ),
        ).py8(),
        back: Container(
          height: 128,
          width: 325,
          decoration: BoxDecoration(
            color: Color.fromARGB(31, 69, 246, 157),
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Mã: ${voucher.code}',
                style: GoogleFonts.montserrat(
                  color: global.danger,
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
              SwipeButton(
                width: 200,
                child: Text(
                  "Swipe to ...",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onSwipe: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Swipped"),
                      backgroundColor: Colors.green,
                    ),
                  );
                },
              )
            ],
          ),
        ).py8());
  }
}
