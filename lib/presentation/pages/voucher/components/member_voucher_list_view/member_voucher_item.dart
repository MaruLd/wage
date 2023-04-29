import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/domain/Voucher/voucher_model.dart';
import 'package:wage/infrastructure/api_services/voucher_service.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import 'package:flutter_swipe_button/flutter_swipe_button.dart';

import '../../../transfer/components/qr_code.dart';

class MemberVoucherItem extends ConsumerStatefulWidget {
  const MemberVoucherItem({Key? key, required this.memberVoucher})
      : super(key: key);
  final MemberVoucher memberVoucher;

  @override
  ConsumerState<MemberVoucherItem> createState() => _MemberVoucherItemState();
}

class _MemberVoucherItemState extends ConsumerState<MemberVoucherItem> {
  var cardSide = CardSide.FRONT;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                    content: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 240,
                        height: 240,
                        child: QRCode(
                            qrSize: 110,
                            qrPadding: 16,
                            qrBorderRadius: 16,
                            qrData: widget.memberVoucher.code ?? '',
                            qrBackgroundColor: global.primary2)),
                    const SizedBox(height: 20),
                    Text(
                      widget.memberVoucher.voucher.voucherName!,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        color: global.normalText,
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 260,
                          child: Text(
                            '${widget.memberVoucher.voucher.voucherDescription}',
                            overflow: TextOverflow.clip,
                            style: GoogleFonts.openSans(
                              color: global.normalText,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Nhà cung cấp:\n${widget.memberVoucher.voucher.supplier?.name}',
                          overflow: TextOverflow.clip,
                          style: GoogleFonts.montserrat(
                            color: global.normalText,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ));
              });
        },
        child: Container(
            height: 110,
            decoration: BoxDecoration(
                color: global.background,
                border: Border.all(color: Colors.grey.withOpacity(0.5))),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 108,
                      height: 110,
                      child: widget.memberVoucher.voucher.imageUrl != null
                          ? Image.network(
                              widget.memberVoucher.voucher.imageUrl!,
                              width: 110,
                              height: 110,
                            )
                          : Image.asset('assets/images/couponIcon.png',
                              scale: 0.9)),
                  const SizedBox(
                    width: 18,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 240,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 240,
                              constraints: BoxConstraints(maxHeight: 50),
                              child: Text(
                                widget.memberVoucher.voucher.voucherName ?? '',
                                maxLines: 2,
                                overflow: TextOverflow.clip,
                                style: GoogleFonts.montserrat(
                                  color: global.normalText,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Text(
                              'Hạn dùng:',
                              style: GoogleFonts.montserrat(
                                color: global.normalText,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '${DateFormat('dd/MM/yyyy').format(widget.memberVoucher.createdAt)} - ${DateFormat('dd/MM/yyyy').format(widget.memberVoucher.expiredAt!)}',
                              style: GoogleFonts.montserrat(
                                color: global.normalText,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 220,
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Xem mã',
                              style: GoogleFonts.openSans(
                                color: global.primary2,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            FaIcon(FontAwesomeIcons.arrowRight,
                                size: 18, color: global.primary2),
                          ],
                        ),
                      ),
                    ],
                  )
                ]))).py4();
  }
}
