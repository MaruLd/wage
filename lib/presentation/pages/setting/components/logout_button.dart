import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wage/application/providers/api_provider.dart';

import '../../../../application/utils/navigation.dart';

class Logout extends ConsumerWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authProvider = ref.read(googleProvider);
    return Container(
      decoration: BoxDecoration(
        border:
            Border.all(color: Color.fromARGB(255, 246, 103, 103), width: 1.0),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      height: 50,
      width: 320,
      child: TextButton.icon(
          label: Text('Đăng Xuất',
              style: GoogleFonts.openSans(
                color: Color.fromARGB(255, 246, 103, 103),
                fontWeight: FontWeight.w600,
                fontSize: 18,
              )),
          icon: FaIcon(FontAwesomeIcons.arrowRightFromBracket,
              color: Color.fromARGB(255, 246, 103, 103), size: 23),
          onPressed: () {
            homePageNavigation(context);
            authProvider.signOutWithGoogle();
          }),
    );
  }
}
