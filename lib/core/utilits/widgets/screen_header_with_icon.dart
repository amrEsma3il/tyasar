import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../config/themes/styles.dart';

class ScreenHeaderWithIcon extends StatelessWidget {
  final String? title;
  final String? icon;
  final Color? headerColor;
  const ScreenHeaderWithIcon({
    this.headerColor,
    this.icon,
    this.title,
    super.key,
  });
//
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                Get.back();
              },
              child: SvgPicture.asset(
                icon!,
                color: headerColor,
              )),
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                  child: Container(
                    alignment: Alignment.center,
                  ),
                ),
                Text(title!,
                    style: TextStyles.textHeaderStyle,
                    textAlign: TextAlign.center),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
