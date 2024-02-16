
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/themes/styles.dart';
import '../../../../../controller/reservation/reservation_track_controller.dart';
import '../../../../../core/constant/color.dart';

class AccompionDateInfo extends StatelessWidget {
  final String iconName,typeText,valueText;
 final  ReservationTrackController trackController;
  const AccompionDateInfo({
    super.key, required this.trackController, required this.iconName, required this.typeText, required this.valueText,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
          width: 164.06.w,
          height: 73.h,
          decoration: BoxDecoration(
              color: trackController.isLight
                  ? AppColor.lightShadeGreen
                  : AppColor.darkMapThemeContiner,
              borderRadius: BorderRadius.circular(10.r)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  iconName,
                  color: trackController.isLight
                      ? AppColor.black
                      : AppColor.darkMapThemeContent,
                ),
                SizedBox(
                  width: 9.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 7.h,),
                    Text(
                      typeText,
                      style: TextStyles.font22Black400Weight.copyWith(
                        color: trackController.isLight
                            ? AppColor.black
                            : AppColor.darkMapThemeContent,
                        height: 1,
                        fontSize: 12.sp,
                      ),
                    ),
                    Text(
                      valueText,
                      style: TextStyles.font22Black400Weight.copyWith(
                          color: trackController.isLight
                              ? AppColor.black
                              : AppColor.darkMapThemeContent,
                          height: 1.2,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
     
  }
}


