import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/domain/Project/project_model.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../application/providers/api_provider.dart';
import '../../../../../application/utils/formatter.dart';

class ProjectXPItem extends ConsumerWidget {
  ProjectXPItem({Key? key, required this.project, this.onTap})
      : super(key: key);
  Project project;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double projectXP =
        ref.watch(payslipItemFutureProvider(project.projectId)).whenOrNull(
                  data: (data) => data,
                ) ??
            0;
    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 12,
                ),
                Text(
                  project.projectName,
                  style: TextStyle(
                    color: global.headerText,
                    fontFamily: global.headerFont,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Text(
                      '${projectStatusTransform(project.projectStatus)} - ',
                      style: TextStyle(
                        color: projectStatusColor(
                            projectDateToPercent(project.createdAt)),
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      project.endedAt != null
                          ? DateFormat('dd/MM/yyyy').format(project.updatedAt!)
                          : '',
                      style: TextStyle(
                        color: global.headerText,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text(
            '+ ${pointFormat(projectXP)} XP',
            style: TextStyle(
              color: global.medium,
              fontFamily: global.numberFont,
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
