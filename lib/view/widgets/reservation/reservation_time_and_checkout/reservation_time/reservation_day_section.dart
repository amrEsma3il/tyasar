import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tyasart/controller/reservation/reservation_time_controller.dart';

import '../../../../../config/themes/styles.dart';
import '../../../../../data/datasource/static/reservation/reservation_day_data_source.dart';
import 'reservation_day_component.dart';

class SuitableDay extends StatelessWidget {
  const SuitableDay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "اليوم المناسب",
              style: TextStyles.font22Black400Weight.copyWith(
                  height: 1.2,
                  letterSpacing: -2,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700),
            ),
            Row(
              children: [
                Text(
                  "ابريل ",
                  style: TextStyles.font12bluishGray500.copyWith(height: 0),
                ),
                Text(
                  "2023",
                  style: TextStyles.font12bluishGray500
                      .copyWith(fontFamily: 'regular', height: 0),
                ),
                const Icon(
                  Icons.keyboard_arrow_left_rounded,
                  size: 18,
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 18.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(
                rservationDayList.length,
                (index) => ReservationDayComponent(
                  
                  onTap: () {
                    Get.find<ReservationTimeController>().selectDay(index);
                  },
                  
                  index: index,
                      reservationDayEntity: rservationDayList[index],
                    )),
          ],
        ),
      ],
    );
  }
}
