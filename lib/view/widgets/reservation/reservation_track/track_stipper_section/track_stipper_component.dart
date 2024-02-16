import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../config/themes/styles.dart';
import '../../../../../controller/reservation/reservation_track_controller.dart';
import '../../../../../core/constant/color.dart';
import '../../../../../core/constant/imgaeasset.dart';
import '../../../../../core/utilits/widgets/line_divider.dart';

class TrackStipperComponent extends StatelessWidget {
  final ReservationTrackController trackController;
  final String text, iconName;

  const TrackStipperComponent(
      {super.key,
      required this.trackController,
      required this.text,
      required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 7.4.r,
              backgroundColor: trackController.isLight
                  ? (iconName == AppImageAsset.accompionArrive
                      ? AppColor.gray
                      : AppColor.darkCyan)
                  : (iconName == AppImageAsset.accompionArrive
                      ? AppColor.darkMapThemeContent
                      : AppColor.darkMapThemeContiner),
            ),
            iconName == AppImageAsset.accompionArrive
                ? const SizedBox()
                : DividerLine(
                    width: 1.w,
                    height: 32.h,
                    color: trackController.isLight
                        ? (iconName == AppImageAsset.trackOnWay
                            ? AppColor.gray
                            : AppColor.darkCyan)
                        : (iconName == AppImageAsset.trackOnWay
                            ? AppColor.darkMapThemeContent
                            : AppColor.darkMapThemeContiner),
                  )
          ],
        ),
        SizedBox(
          width: 15.w,
        ),
        SizedBox(
          width: Get.width - 102.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyles.font16greenSoft.copyWith(
                    color: trackController.isLight
                        ? AppColor.darkCyan
                        : AppColor.darkMapThemeContent,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    height: -1.h),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: iconName == AppImageAsset.trackOnWay ? 3.w : 0,
                    bottom: 8.h),
                child: Image.asset(
                  iconName,
                  color: trackController.isLight
                      ? AppColor.darkCyan
                      : AppColor.darkMapThemeContiner,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
