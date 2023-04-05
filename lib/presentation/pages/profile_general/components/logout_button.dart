import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import 'package:wage/application/providers/api_provider.dart';

class Logout extends ConsumerWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authProvider = ref.watch(googleProvider);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.6), width: 1.0),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      height: 50,
      width: 190,
      child: TextButton.icon(
          label: Text('Đăng Xuất',
              style: GoogleFonts.montserrat(
                color: global.headerText,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              )),
          icon: Icon(
            Icons.logout,
            color: global.primary,
            size: 30.0,
          ),
          onPressed: () {
            authProvider.signOutWithGoogle();
          }),
    );
  }
}
