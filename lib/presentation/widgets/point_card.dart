import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/application/utils/formatter.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import 'package:wage/presentation/widgets/search_card.dart';

import 'card.dart';
import 'loading_shimmer.dart';

class PointCard extends ConsumerWidget {
  const PointCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final walletsData = ref.watch(walletsFutureProvider);
    return SearchCard(
      children: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(25, 35, 2, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Số point khả dụng',
                  style: GoogleFonts.montserrat(
                    color: global.background,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(25, 10, 20, 0),
            child: walletsData.when(
              data: (wallet) {
                return Text(pointFormatForCard(wallet.totalPoint),
                    style: GoogleFonts.montserrat(
                      color: global.background,
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ));
              },
              error: (error, stackTrace) {
                print(error.toString());
                return LoadingShimmer(
                  height: 25.0,
                  width: 70.0,
                  color: Color.fromARGB(146, 31, 255, 206),
                );
              },
              loading: () => LoadingShimmer(
                  height: 25.0,
                  width: 70.0,
                  color: Color.fromARGB(146, 31, 255, 206)),
            ),
          ),
        ],
      ),
    );
  }
}
