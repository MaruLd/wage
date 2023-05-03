import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../application/utils/formatter.dart';
import '../../../../../domain/Transaction/transaction_model.dart';
import '../../../../../domain/Wallets/wallets_model.dart';
import '../../../../widgets/note_parser.dart';
import '../../../../widgets/point_icon.dart';
import '../../../../widgets/xp_icon.dart';

class TransactionItem extends StatelessWidget {
  TransactionItem({
    Key? key,
    required this.transaction,
  }) : super(key: key);
  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    String isReceived = transaction.isReceived ? '+' : '-';
    Widget wallletTokenTransform(WalletTokenEnum status) {
      switch (status) {
        case WalletTokenEnum.point:
          return PointIcon(
            size: 18,
            color: transaction.isReceived
                ? global.primary2
                : Color.fromARGB(255, 255, 93, 93),
          );
        case WalletTokenEnum.xp:
          return XpIcon(
            size: 18,
            color: transaction.isReceived
                ? global.primary2
                : Color.fromARGB(255, 255, 93, 93),
          );
        default:
          return Container();
      }
    }

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
                  fontSize: 16,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 80,
                    child: Text(
                      '$isReceived ${pointFormat(transaction.amount)}',
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.end,
                      style: GoogleFonts.montserrat(
                        color: transaction.isReceived
                            ? global.primary2
                            : Color.fromARGB(255, 255, 93, 93),
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  wallletTokenTransform(transaction.token),
                ],
              )
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
