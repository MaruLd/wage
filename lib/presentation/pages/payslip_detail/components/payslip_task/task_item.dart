import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../application/utils/formatter.dart';
import '../../../../../domain/Task/task_model.dart';
import '../../../../widgets/point_icon.dart';

class TaskSortedByProject extends StatelessWidget {
  const TaskSortedByProject(
      {Key? key, required this.taskList, required this.projectName})
      : super(key: key);
  final String projectName;
  final List<Task> taskList;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          width: 380,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Dự án: $projectName',
                  style: GoogleFonts.montserrat(
                    color: global.headerText,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  )),
            ],
          )),
      const SizedBox(
        height: 4,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
            width: 380,
            child: Column(
              children: [
                Table(
                    border: TableBorder.all(),
                    columnWidths: const <int, TableColumnWidth>{
                      0: IntrinsicColumnWidth(),
                      1: FlexColumnWidth(),
                      2: FixedColumnWidth(120),
                    },
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: <TableRow>[
                      TableRow(children: <Widget>[
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                              height: 40,
                              width: 180,
                              child: Text('Task',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    color: global.normalText,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  )).centered()),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                              height: 40,
                              width: 30,
                              child: Text('Giờ Làm Thực Tế',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    color: global.normalText,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  )).centered()),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.top,
                          child: Container(
                              height: 40,
                              width: 32,
                              child: Text('Point từ Task',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.montserrat(
                                    color: global.normalText,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  )).centered()),
                        ),
                      ]),
                    ]),
                Table(
                  border: TableBorder.all(),
                  columnWidths: const <int, TableColumnWidth>{
                    0: IntrinsicColumnWidth(),
                    1: FlexColumnWidth(),
                    2: FixedColumnWidth(120),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: taskList
                      .map(
                        (task) => TableRow(children: [
                          TableCell(
                              verticalAlignment: TableCellVerticalAlignment.top,
                              child: Container(
                                  width: 180,
                                  child: Text(task.taskDescription ?? '',
                                      style: GoogleFonts.montserrat(
                                        color: global.normalText,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      )).centered().py4())),
                          TableCell(
                              verticalAlignment: TableCellVerticalAlignment.top,
                              child: Container(
                                  width: 50,
                                  child: Text(pointFormat(task.taskRealHour),
                                      style: GoogleFonts.montserrat(
                                        color: global.normalText,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      )).centered().py4())),
                          TableCell(
                            verticalAlignment: TableCellVerticalAlignment.top,
                            child: Container(
                              width: 70,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 70,
                                    child: Text(
                                      pointFormat(task.taskPoint +
                                          task.taskRealHour +
                                          task.taskBonus),
                                      overflow: TextOverflow.clip,
                                      textAlign: TextAlign.end,
                                      style: GoogleFonts.montserrat(
                                        color: global.yellow,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  PointIcon(size: 16, color: global.yellow),
                                ],
                              ).centered().py4(),
                            ),
                          ),
                        ]),
                      )
                      .toList(),
                ),
              ],
            )),
      ),
    ]);
  }
}
