import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../domain/Project/project_model.dart';
import 'project_detail/project_progress_circle.dart';

class ProjectBody extends ConsumerWidget {
  const ProjectBody(this.project, {super.key});
  final Project project;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LevelCircleProgress(project),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
