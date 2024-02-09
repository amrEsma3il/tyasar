import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../config/themes/styles.dart';
import '../../../../../controller/reservation/reservation_time_controller.dart';
import '../../../../../data/datasource/static/reservation/reservation_time_data_source.dart';
import 'reservation_time_component.dart';

class SuitableTime extends StatelessWidget {
  const SuitableTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "الوقت المناسب",
          style: TextStyles.font22Black400Weight.copyWith(
              height: 1.2,
              letterSpacing: -2,
              fontSize: 18.sp,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 15.h,
        ),
        Text(
          "من",
          style: TextStyles.font22Black400Weight.copyWith(
            height: 1.2,
            letterSpacing: -2,
            fontSize: 16.sp,
          ),
        ),
        SizedBox(
          height: 6.5.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(
                reservationTimeList.length ~/ 2,
                (index) => GetBuilder<ReservationTimeController>(
                        builder: (controller) {
                      return ReservationTimeComponent(
                        selectTime: controller.timeFromIndex == index,
                        onTap: () {
                          Get.find<ReservationTimeController>()
                              .selectTimeFrom(index);
                        },
                        index: index,
                        reservationTime: reservationTimeList[index],
                      );
                    })),
          ],
        ),
        SizedBox(
          height: 18.h,
        ),
        Text(
          "إلي",
          style: TextStyles.font22Black400Weight.copyWith(
            height: 1.2,
            letterSpacing: -2,
            fontSize: 16.sp,
          ),
        ),
        SizedBox(
          height: 7.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(
                reservationTimeList.length ~/ 2,
                (index) => GetBuilder<ReservationTimeController>(
                        builder: (controller) {
                      return ReservationTimeComponent(
                          selectTime: controller.timeToIndex == index,
                          onTap: () {
                            Get.find<ReservationTimeController>()
                                .selectTimeTo(index);
                          },
                          index: index,
                          reservationTime: reservationTimeList[
                              (reservationTimeList.length - 1) - index]);
                    }))
          ],
        ),
      ],
    );
  }
}
