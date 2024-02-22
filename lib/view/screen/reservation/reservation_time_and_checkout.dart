import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:tyasart/core/constant/color.dart';
import '../../../controller/reservation/reservation_time_controller.dart';
import '../../../core/constant/imgaeasset.dart';
import '../../../core/utilits/widgets/custom_submattied_button.dart';

import '../../../config/themes/styles.dart';

import '../../../core/utilits/widgets/line_divider.dart';
import '../../../core/utilits/widgets/screen_shadow_corner_effect.dart';

import '../../widgets/reservation/reservation_time_and_checkout/reservation_checkout/reservasion_checkout_section.dart';
import '../../widgets/reservation/reservation_time_and_checkout/reservation_time/reservation_time_and_day_section.dart';
import '../../../core/utilits/widgets/screen_header_with_icon.dart';

class ReservationTime extends StatelessWidget {
  const ReservationTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            const ScreenCornersShadowEffect(),
            SingleChildScrollView(
              controller:
                  Get.find<ReservationTimeController>().reservationTimeScrollController,
              reverse: true,
              child: Padding(
                padding: EdgeInsets.only(right: 12.w, left: 12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ScreenHeaderWithIcon(
                        icon: AppImageAsset.backArrow, title: "الوقت المناسب"),
                    SizedBox(
                      height: 40.h,
                      width: Get.width,
                    ),
                    DividerLine(
                      width: Get.width,
                    ),
                    const ReservationTimeSection(),
                    const DividerLine(
                        color: AppColor.lightShadeGreen, verticalmargin: 22.5),
                    const ReservaionCheckoutSection(),
                    CustomSubmattiedButton(
                      colorButtom: AppColor.primaryColor,
                      width: 343.w,
                      height: 56.h,
                      onPressed: () {
                        Get.find<ReservationTimeController>().reservationEvent(context);
                      },
                      textWidget: Text(
                        "إحجز الان",
                        style: TextStyles.font16WhiteSemiBold,
                      ),
                    ),
                    SizedBox(height: 10.h)
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
