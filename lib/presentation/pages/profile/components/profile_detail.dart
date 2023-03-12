import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:wage/domain/Project/project_model.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

class ProjectDetail extends StatelessWidget {
  ProjectDetail({Key? key, required this.project, this.onTap})
      : super(key: key);
  Project project;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      color: global.background,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(1, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    width: double.maxFinite,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            project.projectName.toString(),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: global.normalText,
                                fontSize: 25,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              // SizedBox(
                              //   width: 20,
                              // ),
                              Icon(
                                Icons.schedule_rounded,
                                color: global.primary,
                                size: 16,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                project.startedAt != null
                                    ? DateFormat("MM/dd/yyyy hh:mm a")
                                        .format(project.startedAt as DateTime)
                                        .toString()
                                    : 'Not started yet',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: global.primary,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 20),
                        //   child: Column(
                        //     children: [
                        //       Row(
                        //         children: [
                        //           // SizedBox(
                        //           //   width: 20,
                        //           // ),
                        //           Icon(
                        //             Icons.location_on_outlined,
                        //             color: red,
                        //             size: 16,
                        //           ),
                        //           SizedBox(
                        //             width: 2,
                        //           ),
                        //           Flexible(
                        //             child: Text(
                        //               data.location.toString(),
                        //               maxLines: 1,
                        //               overflow: TextOverflow.ellipsis,
                        //               style: TextStyle(
                        //                   fontSize: 16, color: labelColor),
                        //             ),
                        //           )
                        //         ],
                        //       ),
                        //       SizedBox(height: 5),
                        //       Text(""),
                        //       SizedBox(height: 5),
                        //       (data.state == "publish")
                        //           ? ButtonTheme(
                        //               height: 350,
                        //               minWidth: 200,
                        //               child: Padding(
                        //                 padding: const EdgeInsets.only(
                        //                     left: 235, bottom: 5),
                        //                 child: ElevatedButton(
                        //                   style: ElevatedButton.styleFrom(
                        //                     primary:
                        //                         kPrimaryColor, // background
                        //                     onPrimary: Colors.white, // for
                        //                     shape: new RoundedRectangleBorder(
                        //                       borderRadius:
                        //                           new BorderRadius.circular(
                        //                               12.0),
                        //                     ), // eground
                        //                   ),
                        //                   child: Text(
                        //                     'Buy Ticket',
                        //                     style: TextStyle(fontSize: 22),
                        //                   ),
                        //                   onPressed: () => Navigator.push(
                        //                       context,
                        //                       MaterialPageRoute(
                        //                           builder: (context) =>
                        //                               TicketType(
                        //                                 eventId: data.id ?? "",
                        //                                 eventState:
                        //                                     data.state ?? "",
                        //                               ))),
                        //                 ),
                        //               ),
                        //             )
                        //           : Text(""),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
