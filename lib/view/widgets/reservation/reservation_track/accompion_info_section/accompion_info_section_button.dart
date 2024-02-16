
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../controller/reservation/reservation_track_controller.dart';
import '../../../../../core/constant/color.dart';

class AccompionSectionButton extends StatelessWidget {
  final String iconName;
  const AccompionSectionButton({
    super.key,
    required this.trackController, required this.iconName,
  });

  final ReservationTrackController trackController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 92.w,
      height: 34.h,
      decoration: BoxDecoration(
          color: trackController.isLight
              ? AppColor.whiteSmoke
              : AppColor.darkMapThemeContiner,
          borderRadius: BorderRadius.circular(10.r)),
      child: Image.asset(
        iconName,
        color: trackController.isLight
            ? AppColor.softGreen
            : AppColor.darkMapThemeContent,
      ),
    );
  }
}



