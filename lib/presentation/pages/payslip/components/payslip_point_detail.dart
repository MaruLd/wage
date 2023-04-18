import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/application/utils/formatter.dart';
import 'package:wage/domain/Payslip/payslip_model.dart';
import 'package:wage/presentation/pages/payslip/components/payslip_item.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../widgets/loading_shimmer.dart';

class PayslipPointDetail extends ConsumerStatefulWidget {
  const PayslipPointDetail({
    Key? key,
    required this.pointTitle,
    required this.description,
    required this.salaryCycleId,
    required this.payslipItemType,
    required this.icon,
    required this.iconColor,
  }) : super(key: key);
  final String salaryCycleId;
  final PayslipItemTypeEnum payslipItemType;
  final String pointTitle;
  final String description;
  final Widget icon;
  final Color iconColor;

  @override
  ConsumerState<PayslipPointDetail> createState() => _PayslipOverviewState();
}

class _PayslipOverviewState extends ConsumerState<PayslipPointDetail> {
  bool _openDetail = false;

  @override
  Widget build(BuildContext context) {
    final payslip = ref.watch(payslipFutureProvider(widget.salaryCycleId));
    return Column(children: [
      GestureDetector(
        onTap: () {
          setState(() {
            _openDetail = !_openDetail;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color: global.background,
            border: Border.all(color: Colors.grey.withOpacity(0.3), width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          height: 75,
          width: 330,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                decoration: BoxDecoration(
                  color: widget.iconColor,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                height: 50,
                width: 50,
                child: widget.icon,
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.pointTitle,
                    style: GoogleFonts.montserrat(
                      color: global.normalText,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    widget.description,
                    style: GoogleFonts.montserrat(
                      color: Colors.grey.withOpacity(0.9),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ]),
            Container(
              child: payslip.when(
                data: (data) {
                  double? totalPoint = 0;
                  switch (widget.payslipItemType) {
                    case PayslipItemTypeEnum.p1:
                      totalPoint = data.totalP1;
                      break;
                    case PayslipItemTypeEnum.p2:
                      totalPoint = data.totalP2;
                      break;
                    case PayslipItemTypeEnum.p3:
                      totalPoint = data.totalP3;
                      break;
                    case PayslipItemTypeEnum.bonus:
                      totalPoint = data.totalBonus;
                      break;
                    default:
                      break;
                  }
                  return Text(
                    pointFormat(totalPoint!),
                    style: GoogleFonts.montserrat(
                      color: global.headerText,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  );
                },
                error: (error, stackTrace) {
                  print(error.toString());
                  return LoadingShimmer(
                    height: 20.0,
                    width: 70.0,
                    color: Color.fromARGB(146, 31, 255, 206),
                  );
                },
                loading: () => LoadingShimmer(
                    height: 20.0,
                    width: 70.0,
                    color: Color.fromARGB(146, 31, 255, 206)),
              ),
            ),
            AnimatedCrossFade(
              duration: const Duration(milliseconds: 100),
              firstChild: Icon(Icons.keyboard_arrow_down,
                  color: Colors.grey.withOpacity(0.5), size: 25),
              secondChild: Icon(Icons.keyboard_arrow_left,
                  color: Colors.grey.withOpacity(0.5), size: 25),
              crossFadeState: _openDetail
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
            ),
          ]).px12(),
        ),
      ),
      AnimatedCrossFade(
        duration: const Duration(milliseconds: 200),
        firstChild: Container(
          width: 310,
          child: payslip.when(
            data: (data) {
              final itemList = data.items!
                  .where((item) => item.type == widget.payslipItemType);
              return data.items!.isNotEmpty
                  ? Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Column(
                            children: itemList
                                .map((item) => PayslipItem(payslipItem: item))
                                .toList()),
                      ],
                    )
                  : Container();
            },
            error: (error, stackTrace) {
              print(error.toString());
              return Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  LoadingShimmer(
                    height: 50.0,
                    width: 300.0,
                    color: Color.fromARGB(146, 31, 255, 206),
                  ),
                ],
              );
            },
            loading: () => Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                LoadingShimmer(
                  height: 50.0,
                  width: 300.0,
                  color: Color.fromARGB(146, 31, 255, 206),
                ),
              ],
            ),
          ),
        ),
        secondChild: Container(),
        crossFadeState:
            _openDetail ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      ),
      const SizedBox(
        height: 15,
      ),
    ]);
  }
}
