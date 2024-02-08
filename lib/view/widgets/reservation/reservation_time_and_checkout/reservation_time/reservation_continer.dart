import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/color.dart';

class ReservationContiner extends StatelessWidget {
  final Widget? child;
  final double? width, height;
  final double? radius;
  final Color? background;
  const ReservationContiner({
    Key? key,
    required this.child,
    required this.width,
    required this.height,
    this.radius = 15,
    this.background = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('reservcontier');
      },
      child: Container(
        width: width!.w,
        height: height!.h,
        decoration: BoxDecoration(
            color: background,
            border: Border.all(width: 2, color: AppColor.softGray),
            borderRadius: BorderRadius.circular(radius!)),
        child: child,
      ),
    );
  }
}
