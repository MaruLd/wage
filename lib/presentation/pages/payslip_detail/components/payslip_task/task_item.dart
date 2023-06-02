import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../application/utils/formatter.dart';
import '../../../../../domain/Task/task_model.dart';
import '../../../../widgets/point_icon.dart';

class TaskItem extends StatelessWidget {
  TaskItem({
    Key? key,
    required this.task,
  }) : super(key: key);
  final Task task;

  @override
  Widget build(BuildContext context) {
    String taskEvaluation(int evaluation) {
      switch (evaluation) {
        case 100:
          return 'A';
        case 75:
          return 'B';
        case 50:
          return 'C';
        case 25:
          return 'D';
        default:
          return 'N/A';
      }
    }

    Color taskColorEvaluation(int evaluation) {
      switch (evaluation) {
        case 100:
          return global.primary2;
        case 75:
          return global.yellow;
        case 50:
          return Color.fromARGB(255, 178, 107, 1);
        case 25:
          return Color.fromARGB(255, 223, 4, 4);
        default:
          return global.background;
      }
    }

    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                  content: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${task.taskName}',
                    overflow: TextOverflow.clip,
                    style: GoogleFonts.montserrat(
                      color: global.primary2,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Điểm công việc:',
                        overflow: TextOverflow.clip,
                        style: GoogleFonts.montserrat(
                          color: global.normalText,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '${pointFormat(task.taskPoint)}',
                        overflow: TextOverflow.clip,
                        style: GoogleFonts.montserrat(
                          color: global.yellow,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      PointIcon(
                        size: 18,
                        color: global.yellow,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Điểm thưởng:',
                        overflow: TextOverflow.clip,
                        style: GoogleFonts.montserrat(
                          color: global.normalText,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '${pointFormat(task.taskBonus)}',
                        overflow: TextOverflow.clip,
                        style: GoogleFonts.montserrat(
                          color: global.yellow,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      PointIcon(
                        size: 18,
                        color: global.yellow,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Giờ làm dự kiến:',
                        overflow: TextOverflow.clip,
                        style: GoogleFonts.montserrat(
                          color: global.normalText,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '${pointFormat(task.taskHour)} giờ',
                        overflow: TextOverflow.clip,
                        style: GoogleFonts.montserrat(
                          color: global.normalText,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Giờ làm thực tế:',
                        overflow: TextOverflow.clip,
                        style: GoogleFonts.montserrat(
                          color: global.normalText,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '${pointFormat(task.taskRealHour)} giờ',
                        overflow: TextOverflow.clip,
                        style: GoogleFonts.montserrat(
                          color: global.normalText,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Đánh giá:',
                        overflow: TextOverflow.clip,
                        style: GoogleFonts.montserrat(
                          color: global.normalText,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        taskEvaluation(task.taskEffort!.toInt()),
                        overflow: TextOverflow.clip,
                        style: GoogleFonts.montserrat(
                          color: taskColorEvaluation(task.taskEffort!.toInt()),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ));
            });
      },
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FaIcon(FontAwesomeIcons.check, size: 14, color: global.primary),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 200,
                    child: Text(
                      '${task.taskName}',
                      style: GoogleFonts.montserrat(
                        color: global.normalText,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 110,
                    child: Text(
                      '${pointFormat(task.taskPoint * (task.taskEffort / 100))}',
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
