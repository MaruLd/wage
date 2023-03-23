import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'loading_shimmer.dart';

class ShimmerList extends StatelessWidget {
  const ShimmerList(
      {Key? key, this.height, this.width, required this.color, this.baseColor})
      : super(key: key);
  final height;
  final width;
  final Color color;
  final Color? baseColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        LoadingShimmer(
          height: height,
          width: width,
          color: color,
          baseColor: baseColor,
        ),
        const SizedBox(height: 15),
        LoadingShimmer(
            height: height, width: width, color: color, baseColor: baseColor),
        const SizedBox(height: 15),
        LoadingShimmer(
            height: height, width: width, color: color, baseColor: baseColor),
        const SizedBox(height: 15),
        LoadingShimmer(
            height: height, width: width, color: color, baseColor: baseColor),
        const SizedBox(height: 15),
        LoadingShimmer(
            height: height, width: width, color: color, baseColor: baseColor),
      ],
    );
  }
}
