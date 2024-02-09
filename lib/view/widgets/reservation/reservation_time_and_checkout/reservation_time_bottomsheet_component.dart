import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../config/themes/styles.dart';
import '../../../../controller/reservation/reservation_time_controller.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/constant/imgaeasset.dart';
import '../../../../core/utilits/widgets/custom_submattied_button.dart';

class ReservationBottomSheetComponent extends StatelessWidget {
  const ReservationBottomSheetComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 342.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(48.r),
              topRight: Radius.circular(48.r))),
      child: Column(
        children: [
          SizedBox(
            height: 25.h,
          ),
          Image.asset(
            AppImageAsset.reservationCheck,
            width: 137.w,
            height: 140.h,
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            "تم الحجز بنجاح",
            style: TextStyles.font22Black400Weight,
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            "يتم البحث عم المرافق المناسب سيستغرق البحث ثواني معدودة",
            style: TextStyles.font22Black400Weight
                .copyWith(fontSize: 14.sp, color: AppColor.gray),
          ),
          SizedBox(
            height: 22.h,
          ),
          CustomSubmattiedButton(
            colorButtom: AppColor.primaryColor,
            width: 343.w,
            height: 56.h,
            onPressed: () {

         Get.find<ReservationTimeController>().reservationEvent();
            },
            textWidget: Text(
              "تتبع المرافق",
              style: TextStyles.font16WhiteSemiBold,
            ),
          )
        ],
      ),
    );
  }
}
