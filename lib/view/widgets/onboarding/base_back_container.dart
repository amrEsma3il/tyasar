import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BaseBackgroundContainer extends StatelessWidget {
  const BaseBackgroundContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0.h,
      left: 0.w,
      child: Container(
        width: 375.w,
        height: 300.h,
        decoration: const BoxDecoration(
            color: Color(0xFFE9FDF5),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(48),
                topRight: Radius.circular(48))),
      ),
    );
  }
}
