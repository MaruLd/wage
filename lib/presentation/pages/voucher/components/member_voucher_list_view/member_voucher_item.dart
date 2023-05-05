import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/domain/Voucher/voucher_model.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../application/utils/formatter.dart';
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
                    Text(
                      'Mã QR Voucher',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        color: global.headerText,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                        width: 240,
                        height: 240,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
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
                        fontSize: 20,
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
                          'Loại voucher:',
                          overflow: TextOverflow.clip,
                          style: GoogleFonts.montserrat(
                            color: global.normalText,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: global.primary2, width: 1.0),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30)),
                          ),
                          height: 26,
                          child: Text(
                              '${voucherTypeTransform(widget.memberVoucher.voucher.voucherType)}',
                              style: GoogleFonts.montserrat(
                                color: global.primary2,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              )).p4(),
                        ).centered(),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Nhà cung cấp:',
                          overflow: TextOverflow.clip,
                          style: GoogleFonts.montserrat(
                            color: global.normalText,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: global.primary2, width: 1.0),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30)),
                          ),
                          height: 26,
                          child: Text(
                              '${widget.memberVoucher.voucher.supplier?.name}',
                              style: GoogleFonts.montserrat(
                                color: global.primary2,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              )).p4(),
                        ).centered(),
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
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              '${DateFormat('dd/MM/yyyy').format(widget.memberVoucher.createdAt)} - ${DateFormat('dd/MM/yyyy').format(widget.memberVoucher.expiredAt!)}',
                              style: GoogleFonts.montserrat(
                                color: global.normalText,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 220,
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
