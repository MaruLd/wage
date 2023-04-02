// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:wage/presentation/settings/global_settings.dart' as global;

class SubHeader extends StatelessWidget {
  SubHeader(this.headerText);
  final String headerText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          TextButton.icon(
                              onPressed: () => Navigator.pop(context),
                              icon: Icon(
                                Icons.arrow_back,
                                color: global.background,
                                size: 25,
                              ),
                              label: Text('')),
                          Expanded(
                            child: Center(
                              child: Text(
                                headerText,
                                style: global.boldTextStyle,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 75,
                          )
                        ]),
                  ],
                ),
              ],
            ),
          ).flexible(),
        ],
      ),
    );
  }
}
