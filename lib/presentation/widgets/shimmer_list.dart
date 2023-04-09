import 'package:flutter/material.dart';

import 'loading_shimmer.dart';

class ShimmerList extends StatelessWidget {
  const ShimmerList(
      {Key? key,
      this.height,
      this.width,
      required this.color,
      this.baseColor,
      required this.row})
      : super(key: key);
  final height;
  final width;
  final int row;
  final Color color;
  final Color? baseColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        ListView.builder(
            itemCount: row,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Center(
                    child: LoadingShimmer(
                      height: height,
                      width: width,
                      color: color,
                      baseColor: baseColor,
                    ),
                  ),
                  const SizedBox(height: 15),
                ],
              );
            })
      ],
    );
  }
}
