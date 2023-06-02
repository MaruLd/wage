import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/pages/payslip_detail/components/payslip_task/task_item.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../application/utils/formatter.dart';
import '../../../../../domain/Task/task_model.dart';
import '../../../../widgets/point_icon.dart';

class TaskSortedByProject extends StatefulWidget {
  const TaskSortedByProject(
      {Key? key, required this.taskList, required this.projectName})
      : super(key: key);
  final String projectName;
  final List<Task> taskList;
  @override
  State<TaskSortedByProject> createState() => _TaskSortedByProjectState();
}

class _TaskSortedByProjectState extends State<TaskSortedByProject> {
  bool _openDetail = false;

  @override
  Widget build(BuildContext context) {
    double totalTaskPoint = 0;
    for (var task in widget.taskList) {
      totalTaskPoint += (task.taskPoint * (task.taskEffort / 100));
    }
    return GestureDetector(
      onTap: () {
        setState(() {
          _openDetail = !_openDetail;
        });
      },
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 240,
              child: Text('${widget.projectName}',
                  overflow: TextOverflow.clip,
                  style: GoogleFonts.montserrat(
                    color: global.headerText,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  )),
            ),
            Row(
              children: [
                Container(
                  width: 80,
                  child: Text(
                    '${pointFormat(totalTaskPoint)}',
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.end,
                    style: GoogleFonts.montserrat(
                      color: global.yellow,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
                PointIcon(
                  size: 14,
                  color: global.yellow,
                ),
              ],
            ),
            AnimatedCrossFade(
              duration: const Duration(milliseconds: 100),
              firstChild: Icon(Icons.keyboard_arrow_down,
                  color: Colors.grey.withOpacity(0.5), size: 20),
              secondChild: Icon(Icons.keyboard_arrow_left,
                  color: Colors.grey.withOpacity(0.5), size: 20),
              crossFadeState: _openDetail
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
            ),
          ],
        ),
        AnimatedCrossFade(
          duration: const Duration(milliseconds: 200),
          firstChild: Container(
            width: 350,
            child: widget.taskList.length > 0
                ? ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: widget.taskList.length,
                    itemBuilder: (context, int index) {
                      return TaskItem(
                        task: widget.taskList[index],
                      );
                    },
                  )
                : Text(
                    'Bạn không có task nào',
                    style: GoogleFonts.openSans(
                      color: const Color.fromARGB(255, 47, 47, 47),
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ).centered(),
          ),
          secondChild: Container(),
          crossFadeState: _openDetail
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
        ),
        const SizedBox(
          height: 5,
        ),
      ]),
    );
  }
}
