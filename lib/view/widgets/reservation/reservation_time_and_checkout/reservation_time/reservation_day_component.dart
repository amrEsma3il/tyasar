import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/themes/styles.dart';
import '../../../../../core/constant/color.dart';
import 'reservation_continer.dart';

class ReservationDayComponent extends StatelessWidget {
  final Map<String, String>? reservationDayEntity;

  const ReservationDayComponent({
    this.reservationDayEntity,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ReservationContiner(
      width: 54.6.w,
      height: 62.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            reservationDayEntity!['dayInMonth']!,
            style: TextStyles.font16greenSoft.copyWith(
                fontFamily: 'regular', letterSpacing: 2, color: AppColor.black),
          ),
           Text(reservationDayEntity!['dayInWeek']!,style: TextStyles.font13GrayRegular,)
        ],
      ),
    );
  }
}