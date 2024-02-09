
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../config/themes/styles.dart';


class ScreenHeader extends StatelessWidget {
  final String? title;
  final String? icon;
  const ScreenHeader({
    this.icon,
    this.title,
    super.key,
  });
//
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 20.h,right: 12.w),
      child: Row(
        children: [
          InkWell(
              onTap: () {Get.back();},
              child: SvgPicture.asset(icon!)),
          SizedBox(
            width: 84.w,
          ),
          Text(title!,
              style: TextStyles.font22Black400Weight.copyWith(
                  height: 0.7,
                  letterSpacing: -2,
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center)
        ],
      ),
    );
  }
}
