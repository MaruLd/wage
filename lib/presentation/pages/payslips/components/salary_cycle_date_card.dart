import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

import '../../../widgets/card.dart';

class SalaryCycleCard extends ConsumerWidget {
  const SalaryCycleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final walletsData = ref.watch(walletsDataProvider);
    return MainCard(
        children: Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 27,
          ),
          Text(
            'Kỳ lương',
            style: GoogleFonts.montserrat(
              color: global.background,
              fontWeight: FontWeight.w400,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                '10/2022',
                style: GoogleFonts.montserrat(
                  color: global.background,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.calendar_month, color: global.background, size: 25),
            ],
          ),
        ],
      ),
    ));
  }
}
