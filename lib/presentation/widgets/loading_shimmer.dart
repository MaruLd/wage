import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:wage/presentation/pages/error/error_page.dart';

class LoadingShimmer extends StatelessWidget {
  const LoadingShimmer(
      {Key? key, this.height, this.width, required this.color, this.baseColor})
      : super(key: key);
  final height;
  final width;
  final Color color;
  final Color? baseColor;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? Color.fromARGB(67, 2, 179, 117),
      highlightColor: Color.fromARGB(108, 107, 255, 216),
      child: Container(
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        height: this.height,
        width: this.width,
      ),
    );
  }
}
