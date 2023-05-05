import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/application/utils/formatter.dart';
import 'package:wage/domain/Voucher/voucher_model.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../widgets/point_icon.dart';
import '../pin_confirm/pin_confirm_page.dart';

class VoucherItem extends ConsumerStatefulWidget {
  const VoucherItem({Key? key, required this.voucher}) : super(key: key);
  final Voucher voucher;

  @override
  ConsumerState<VoucherItem> createState() => _VoucherItemState();
}

class _VoucherItemState extends ConsumerState<VoucherItem> {
  confirmBuyVoucher() async {
    final havePin = ref.watch(checkPinProvider).whenOrNull(
          data: (data) => data,
        );
    double? userPoint = await ref.read(walletsFutureProvider).whenOrNull(
              data: (data) => data.totalPoint,
            ) ??
        0;
    if (havePin == false) {
      Alert(
        context: context,
        type: AlertType.warning,
        title: "Bạn chưa thêm mã PIN",
        desc: "Bạn cần phải thêm mã PIN vào tài khoản của bạn",
        useRootNavigator: false,
        buttons: [
          DialogButton(
            width: 150,
            color: global.primary2,
            child: Text(
              "Ok",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ).centered(),
            onPressed: () async {
              Navigator.pop(context);
            },
          )
        ],
      ).show();
    } else if (widget.voucher.voucherCost > userPoint) {
      Alert(
        context: context,
        type: AlertType.warning,
        title: "Số Point của bạn không đủ",
        desc:
            "Bạn còn thiếu ${pointFormat(widget.voucher.voucherCost - userPoint)} Point nữa",
        useRootNavigator: false,
        buttons: [
          DialogButton(
            width: 150,
            color: global.primary2,
            child: Text(
              "Ok",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ).centered(),
            onPressed: () async {
              Navigator.pop(context);
            },
          )
        ],
      ).show();
    } else {
      Alert(
        context: context,
        type: AlertType.warning,
        title: "Xác nhận đổi Voucher",
        desc:
            "Bạn chắc chắn muốn đổi ${widget.voucher.voucherName}\nvới ${pointFormat(widget.voucher.voucherCost)} Point?",
        useRootNavigator: false,
        buttons: [
          DialogButton(
            width: 150,
            color: global.primary2,
            child: Text(
              "Đổi Voucher",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ).centered(),
            onPressed: () async {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      PinConfirmPage(voucherId: widget.voucher.voucherId),
                ),
              );
            },
          )
        ],
      ).show();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipBehavior: Clip.none,
      clipper: MultipleRoundedCurveClipper(),
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
                child: widget.voucher.imageUrl != null
                    ? Image.network(
                        widget.voucher.imageUrl!,
                        width: 110,
                        height: 110,
                      )
                    : Image.asset('assets/images/couponIcon.png', scale: 0.9)),
            const SizedBox(
              width: 18,
            ),
            Container(
              width: 230,
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
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
                          '${widget.voucher.voucherName!}',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: GoogleFonts.montserrat(
                            color: global.normalText,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Còn lại: ',
                            style: GoogleFonts.montserrat(
                              color: global.normalText,
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '${numberFormat(widget.voucher.voucherAmount)}',
                            style: GoogleFonts.montserrat(
                              color: global.primary2,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: global.primary2, width: 1.0),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                        ),
                        height: 25,
                        child: Text(
                            '${voucherTypeTransform(widget.voucher.voucherType)}',
                            style: GoogleFonts.montserrat(
                              color: global.primary2,
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            )).p4(),
                      ),
                    ],
                  ),
                  Container(
                    width: 250,
                    height: 30,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 120,
                          child: Row(
                            children: [
                              const SizedBox(width: 4),
                              Text(
                                '${pointFormat(widget.voucher.voucherCost)}',
                                style: GoogleFonts.montserrat(
                                  color: global.yellow,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                              PointIcon(size: 16, color: global.yellow)
                            ],
                          ),
                        ),
                        GestureDetector(
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
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                spreadRadius: 5,
                                                blurRadius: 7,
                                                offset: Offset(0,
                                                    3), // changes position of shadow
                                              ),
                                            ],
                                          ),
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                              child: Image.network(
                                                widget.voucher.imageUrl!,
                                                width: 140,
                                                height: 140,
                                              ))),
                                      const SizedBox(height: 20),
                                      Text(
                                        widget.voucher.voucherName!,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.openSans(
                                          color: global.normalText,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 260,
                                            child: Text(
                                              '${widget.voucher.voucherDescription}',
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                              border: Border.all(
                                                  color: global.primary2,
                                                  width: 1.0),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(30)),
                                            ),
                                            height: 26,
                                            child: Text(
                                                '${voucherTypeTransform(widget.voucher.voucherType)}',
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                              border: Border.all(
                                                  color: global.primary2,
                                                  width: 1.0),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(30)),
                                            ),
                                            height: 26,
                                            child: Text(
                                                '${widget.voucher.supplier?.name}',
                                                style: GoogleFonts.montserrat(
                                                  color: global.primary2,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                )).p4(),
                                          ).centered(),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 18,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: global.primary2,
                                          border: Border.all(
                                              color: global.primary2,
                                              width: 1.0),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(12)),
                                        ),
                                        child: MaterialButton(
                                          minWidth: 0,
                                          height: 0,
                                          padding: EdgeInsets.zero,
                                          onPressed: () async {
                                            Navigator.pop(context);
                                            await confirmBuyVoucher();
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Đổi ngay',
                                                style: GoogleFonts.openSans(
                                                  color: global.background,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              FaIcon(
                                                  FontAwesomeIcons.arrowRight,
                                                  size: 18,
                                                  color: global.background),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ));
                                });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Xem thêm',
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
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ).py4(),
    );
  }
}
