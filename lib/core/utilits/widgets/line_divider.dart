
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constant/color.dart';

class DividerLine extends StatelessWidget {
  final double? width, verticalmargin;
  final Color color;
  const DividerLine({
    this.verticalmargin = 0,
    this.color = AppColor.softGray,
    this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: verticalmargin!.h),
      width: width ?? 342.w,
      height: 1,
      color: color,
    );
  }
}

