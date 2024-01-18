import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpaceInHeight extends StatelessWidget {
  final double height;
  const SpaceInHeight({
    super.key,
    required this.height
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
    );
  }
}
