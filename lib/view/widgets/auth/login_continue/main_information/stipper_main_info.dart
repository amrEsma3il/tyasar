

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/color.dart';

class StipperMainInfo extends StatelessWidget {
  const StipperMainInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CircleAvatar(
            backgroundColor: AppColor.primaryColor,
            radius: 8,
            child: CircleAvatar(
              radius: 4,
              backgroundColor: Colors.white,
            )),
        Container(
         
          width: 247.w,
          height: 2.h,
          decoration: const BoxDecoration(
            color: AppColor.softGray,
          ),
        ),
        const CircleAvatar(
            backgroundColor: AppColor.softGray,
            radius: 8,
            child: CircleAvatar(
              radius: 4,
              backgroundColor: Colors.white,
            ))
      ],
    );
  }
}
