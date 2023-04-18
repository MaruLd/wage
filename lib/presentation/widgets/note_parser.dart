// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wage/application/providers/api_provider.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

class ParseNote extends ConsumerWidget {
  const ParseNote({Key? key, required this.note}) : super(key: key);
  final String note;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String regex = r"(<@([A-Za-z]+):([a-z0-9\-]+)>)";
    RegExp exp = RegExp(regex);
    String getNoteTargetId(String str) {
      final result = str.replaceAllMapped(exp, (Match m) {
        String? target = m[2];
        String? id = m[3];
        if (target == 'Project') {
          final project = ref
              .watch(projectFutureProvider(id ?? ''))
              .whenOrNull(data: (data) => data);
          if (project != null) {
            return 'Dự án ${project.projectName}';
          }
        } else if (target == 'Sponsor') {
          // final project = ref
          //     .watch(projectFutureProvider(target ?? ''))
          //     .whenOrNull(data: (data) => data);
          // if (project != null) {
          //   return project.projectShortName;
          // }
          return 'Sponsor';
        }
        return note;
      });
      return result;
    }

    ;
    return Text(getNoteTargetId(note),
        style: GoogleFonts.montserrat(
          color: global.normalText,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ));
  }
}
