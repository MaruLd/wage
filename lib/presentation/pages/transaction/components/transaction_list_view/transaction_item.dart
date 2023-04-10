import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../application/utils/formatter.dart';
import '../../../../../domain/Transaction/transaction_model.dart';

class TransactionItem extends StatelessWidget {
  TransactionItem({
    Key? key,
    required this.transaction,
  }) : super(key: key);
  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    String buyVoucherTransaction =
        transaction.transactionType == TransactionTypeEnum.buyVoucher
            ? '-'
            : '+';
    return Container(
      decoration: BoxDecoration(
          color: global.background,
          border: BorderDirectional(
              bottom:
                  BorderSide(color: Colors.grey.withOpacity(0.5), width: 1))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${transactionTypeTransform(transaction.transactionType)}',
                style: GoogleFonts.montserrat(
                  color: global.headerText,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              Text(
                '$buyVoucherTransaction ${transaction.amount} ${wallletTokenTransform(transaction.token)}',
                style: GoogleFonts.montserrat(
                  color: transaction.transactionType ==
                          TransactionTypeEnum.buyVoucher
                      ? global.danger
                      : global.primary2,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                transaction.createdAt != null
                    ? DateFormat('dd/MM/yyyy -')
                        .add_Hm()
                        .format(transaction.createdAt)
                    : '',
                style: GoogleFonts.montserrat(
                  color: global.smallText,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Ghi chú: ${transaction.note ?? ''}',
            style: GoogleFonts.montserrat(
              color: global.normalText,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
