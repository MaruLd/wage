import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/domain/Project/project_model.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;
import 'package:wage/presentation/widgets/refresher.dart';
import 'package:wage/presentation/widgets/sub_header.dart';

import 'components/body.dart';
import 'components/project_detail/project_details.dart';

class ProjectDetailPage extends StatefulWidget {
  const ProjectDetailPage({
    super.key,
    required this.project,
  });
  final Project project;
  static String get routeName => 'projectDetail';
  static String get routeLocation => '/projectDetail';

  @override
  State<ProjectDetailPage> createState() => _ProjectDetailPageState();
}

class _ProjectDetailPageState extends State<ProjectDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Refresher(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SubHeader(headerText: widget.project.projectShortName),
          const SizedBox(
            height: 120,
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: global.background,
              ),
              child: Column(children: [
                ProjectBody(widget.project),
                ProjectDetail(widget.project),
              ]).offset(offset: Offset(0, -125)))
        ],
      ),
    );
  }
}
