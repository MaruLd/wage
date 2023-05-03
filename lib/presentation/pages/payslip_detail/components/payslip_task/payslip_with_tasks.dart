import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/application/providers/api_provider.dart';
import "package:collection/collection.dart";
import 'package:wage/presentation/pages/payslip_detail/components/payslip_task/task_item.dart';
import 'package:wage/presentation/theme/global_theme.dart' as global;

import '../../../../../domain/Task/task_model.dart';
import '../../../../widgets/loading_shimmer.dart';

class PayslipWithTask extends ConsumerStatefulWidget {
  const PayslipWithTask({
    Key? key,
    required this.salaryCycleId,
  }) : super(key: key);
  final String salaryCycleId;

  @override
  ConsumerState<PayslipWithTask> createState() => _PayslipOverviewState();
}

class _PayslipOverviewState extends ConsumerState<PayslipWithTask> {
  bool _openDetail = false;
  String title = 'Tổng số Task';
  String description = 'Chi tiết các Task';
  Widget icon = const FaIcon(FontAwesomeIcons.listCheck,
          color: global.background, size: 23)
      .centered();
  Color iconColor = global.medium;

  @override
  Widget build(BuildContext context) {
    final payslip = ref.watch(payslipFutureProvider(widget.salaryCycleId));
    final tasks = ref.watch(taskListFutureProvider(widget.salaryCycleId));
    return Column(children: [
      GestureDetector(
        onTap: () {
          setState(() {
            _openDetail = !_openDetail;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color: global.background,
            border: Border.all(color: Colors.grey.withOpacity(0.3), width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          height: 75,
          width: 370,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                decoration: BoxDecoration(
                  color: iconColor,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                height: 50,
                width: 50,
                child: icon,
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.montserrat(
                      color: global.normalText,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    description,
                    style: GoogleFonts.montserrat(
                      color: Colors.grey.withOpacity(0.9),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ]),
            Container(
              child: tasks.when(
                data: (data) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 80,
                        child: Text(
                          '${data.length}',
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.end,
                          style: GoogleFonts.montserrat(
                            color: global.medium,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      const FaIcon(FontAwesomeIcons.listCheck,
                          color: global.medium, size: 16),
                    ],
                  );
                },
                error: (error, stackTrace) {
                  debugPrint(error.toString());
                  return LoadingShimmer(
                    height: 20.0,
                    width: 70.0,
                    color: Color.fromARGB(146, 31, 255, 206),
                  );
                },
                loading: () => LoadingShimmer(
                    height: 20.0,
                    width: 70.0,
                    color: Color.fromARGB(146, 31, 255, 206)),
              ),
            ),
            AnimatedCrossFade(
              duration: const Duration(milliseconds: 100),
              firstChild: Icon(Icons.keyboard_arrow_down,
                  color: Colors.grey.withOpacity(0.5), size: 25),
              secondChild: Icon(Icons.keyboard_arrow_left,
                  color: Colors.grey.withOpacity(0.5), size: 25),
              crossFadeState: _openDetail
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
            ),
          ]).px12(),
        ),
      ),
      AnimatedCrossFade(
        duration: const Duration(milliseconds: 200),
        firstChild: Container(
          width: 380,
          child: tasks.when(
            data: (taskList) {
              final sortedList =
                  groupBy(taskList, (Task obj) => obj.project!.projectName);

              Widget taskSortedListWidget() {
                List<Widget> temp = [];
                sortedList.forEach((project, list) {
                  temp.add(TaskSortedByProject(
                      projectName: project, taskList: list));
                  temp.add(const SizedBox(
                    height: 14,
                  ));
                });
                return Column(
                  children: temp,
                );
              }

              return taskList.isNotEmpty
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        taskSortedListWidget(),
                      ],
                    )
                  : Column(children: [
                      const SizedBox(
                        height: 19,
                      ),
                      Container(
                        child: Text(
                          'Không có task nào',
                          style: GoogleFonts.montserrat(
                            color: global.smallText,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                    ]);
            },
            error: (error, stackTrace) {
              debugPrint(error.toString());
              return Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  LoadingShimmer(
                    height: 50.0,
                    width: 300.0,
                    color: Color.fromARGB(146, 31, 255, 206),
                  ),
                ],
              );
            },
            loading: () => Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                LoadingShimmer(
                  height: 50.0,
                  width: 300.0,
                  color: Color.fromARGB(146, 31, 255, 206),
                ),
              ],
            ),
          ),
        ),
        secondChild: Container(),
        crossFadeState:
            _openDetail ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      ),
      const SizedBox(
        height: 15,
      ),
    ]);
  }
}
