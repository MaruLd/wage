import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import 'package:wage/application/providers/api_provider.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(44, 38, 167, 132),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      height: 40,
      width: 170,
      child: TextButton(
          child: Text('Chỉnh sửa hồ sơ',
              style: GoogleFonts.montserrat(
                color: global.primary3,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              )),
          onPressed: () {}),
    );
  }
}
