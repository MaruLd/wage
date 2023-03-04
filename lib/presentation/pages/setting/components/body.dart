import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_settings_screens/flutter_settings_screens.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;
import 'package:wage/presentation/providers/api_provider.dart';

class Logout extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authProvider = ref.watch(googleProvider);
    return SimpleSettingsTile(
        title: 'Logout',
        leading: Icon(
          Icons.logout,
          color: Colors.green,
          size: 30.0,
        ),
        onTap: () => authProvider.signOutWithGoogle());
  }
}
