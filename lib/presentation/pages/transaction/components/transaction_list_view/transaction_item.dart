import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../application/utils/formatter.dart';
import '../../../../../domain/Transaction/transaction_model.dart';
import '../../../../widgets/note_parser.dart';

class TransactionItem extends StatelessWidget {
  TransactionItem({
    Key? key,
    required this.transaction,
  }) : super(key: key);
  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    String isReceived = transaction.isReceived ? '+' : '-';
    return Container(
      width: 330,
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
                '$isReceived ${pointFormat(transaction.amount)} ${wallletTokenTransform(transaction.token)}',
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
          ParseNote(note: transaction.note ?? ''),
        ],
      ),
    );
  }
}
