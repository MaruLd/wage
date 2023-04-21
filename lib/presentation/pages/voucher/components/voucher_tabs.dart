import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

class VoucherTabs extends StatelessWidget {
  const VoucherTabs({
    Key? key,
    required this.changeTabBuyVoucher,
    required this.changeTabMyVoucher,
    required this.tabBuyVoucher,
    required this.tabMyVoucher,
  }) : super(key: key);
  final VoidCallback changeTabBuyVoucher;
  final VoidCallback changeTabMyVoucher;
  final bool tabBuyVoucher;
  final bool tabMyVoucher;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: global.background,
          border: BorderDirectional(
              bottom:
                  BorderSide(color: Colors.grey.withOpacity(0.3), width: 1))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: changeTabMyVoucher,
            child: Text('Đổi Voucher',
                style: GoogleFonts.montserrat(
                  color: tabBuyVoucher
                      ? global.primary2
                      : Colors.grey.withOpacity(0.8),
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                )),
          ),
          TextButton(
            onPressed: changeTabBuyVoucher,
            child: Text('Voucher của tôi',
                style: GoogleFonts.montserrat(
                  color: !tabBuyVoucher
                      ? global.primary2
                      : Colors.grey.withOpacity(0.8),
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                )),
          ),
        ],
      ),
    );
  }
}
