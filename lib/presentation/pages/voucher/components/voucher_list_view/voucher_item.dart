import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/application/utils/formatter.dart';
import 'package:wage/domain/Voucher/voucher_model.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../infrastructure/api_services/voucher_service.dart';
import '../../../../widgets/loading_shimmer.dart';

class VoucherItem extends ConsumerStatefulWidget {
  VoucherItem({Key? key, required this.voucher}) : super(key: key);
  final Voucher voucher;

  @override
  ConsumerState<VoucherItem> createState() => _VoucherItemState();
}

class _VoucherItemState extends ConsumerState<VoucherItem> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128,
      width: 325,
      decoration: BoxDecoration(
        color: Color.fromARGB(35, 246, 181, 69),
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
                height: 8,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                widget.voucher.voucherName!,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.montserrat(
                  color: global.headerText,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 290,
                constraints: new BoxConstraints(
                  maxHeight: 32,
                ),
                child: Text(
                  'Mô tả: ${widget.voucher.voucherDescription}',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                    color: global.normalText,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              const SizedBox(
                width: 20,
              ),
              Row(
                children: [
                  Text(
                    'Còn lại: ',
                    style: GoogleFonts.montserrat(
                      color: global.normalText,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '${pointFormat(widget.voucher.voucherAmount)} Voucher',
                    style: GoogleFonts.montserrat(
                      color: global.primary3,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120,
                    child: Text(
                      '${pointFormat(widget.voucher.voucherCost)} Points',
                      style: GoogleFonts.montserrat(
                        color: global.primary2,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: global.primary2,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: MaterialButton(
                      onPressed: () async {
                        VoucherService voucherService = VoucherService();
                        var buySuccess = await voucherService
                            .buyVoucher(widget.voucher.voucherId);

                        ref
                            .read(buyVoucherFutureProvider(
                                widget.voucher.voucherId))
                            .whenOrNull(
                          data: (statusCode) {
                            if (statusCode == 200) {
                              ref.refresh(voucherFutureProvider);
                              Alert(
                                context: context,
                                type: AlertType.success,
                                title: "Đổi Voucher thành công",
                                desc:
                                    "Bạn đã đổi Voucher ${widget.voucher.voucherName} thành công!",
                                useRootNavigator: false,
                                buttons: [
                                  DialogButton(
                                    child: Text(
                                      "Ok",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    onPressed: () => Navigator.pop(context),
                                    width: 120,
                                  )
                                ],
                              ).show();
                            } else if (statusCode == 400) {
                              Alert(
                                context: context,
                                type: AlertType.error,
                                title: "Đổi Voucher không thành công",
                                desc: "Số Point của bạn không đủ để đổi",
                                useRootNavigator: false,
                                buttons: [
                                  DialogButton(
                                    child: Text(
                                      "Ok",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    onPressed: () => Navigator.pop(context),
                                    width: 120,
                                  )
                                ],
                              ).show();
                            } else {
                              Alert(
                                context: context,
                                type: AlertType.error,
                                title: "Đổi Voucher không thành công",
                                desc: "Kiểm tra lại kết nối mạng của bạn",
                                useRootNavigator: false,
                                buttons: [
                                  DialogButton(
                                    child: Text(
                                      "Ok",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    onPressed: () => Navigator.pop(context),
                                    width: 120,
                                  )
                                ],
                              ).show();
                            }
                          },
                        );
                      },
                      child: Text(
                        'Đổi ngay',
                        style: GoogleFonts.openSans(
                          color: global.background,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ).offset(offset: Offset(0, -10)),
                ],
              ),
            ],
          ),
        ],
      ),
    ).py8();
  }
}