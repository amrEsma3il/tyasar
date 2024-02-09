import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../config/themes/styles.dart';
import '../../../../../controller/reservation/reservation_time_controller.dart';
import '../../../../../core/constant/color.dart';

class ReservationDayComponent extends StatelessWidget {
  final Map<String, String>? reservationDayEntity;
  final int? index;
  final void Function()? onTap;

  const ReservationDayComponent({
    this.reservationDayEntity,
    super.key,
    this.index,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: GetBuilder<ReservationTimeController>(
        builder: (controller) {
          bool selectDay = controller.dayIndex == index;
          return Container(
            width: 54.6.w,
            height: 62.h,
            decoration: BoxDecoration(
                color: selectDay ? AppColor.moderateCyan : AppColor.transparent,
                border: Border.all(
                    width: selectDay ? 0 : 2.w, color: AppColor.softGray),
                borderRadius: BorderRadius.circular(15.r)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  reservationDayEntity!['dayInMonth']!,
                  style: TextStyles.font16greenSoft.copyWith(
                      fontFamily: 'regular',
                      letterSpacing: 2,
                      color: selectDay ? AppColor.white : AppColor.black),
                ),
                Text(
                  reservationDayEntity!['dayInWeek']!,
                  style: TextStyles.font13GrayRegular.copyWith(
                      color: selectDay ? AppColor.white : AppColor.gray),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
