import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/themes/styles.dart';
import '../../../../../core/constant/color.dart';

class ReservationTimeComponent extends StatelessWidget {
  final String? reservationTime;
  final int? index;
  final bool? selectTime;

  final void Function()? onTap;

  const ReservationTimeComponent({
    this.reservationTime,
    super.key,
    this.index,
    this.onTap,
    this.selectTime,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 77.w,
          height: 36.h,
          decoration: BoxDecoration(
              color: selectTime! ? AppColor.moderateCyan : AppColor.transparent,
              border: Border.all(
                  width: selectTime! ? 0 : 2.w, color: AppColor.softGray),
              borderRadius: BorderRadius.circular(10.r)),
          child: Center(
            child: Text(
              reservationTime!,
              style: TextStyles.font13GrayRegular.copyWith(
                  color: selectTime! ? AppColor.white : AppColor.gray),
            ),
          )),
    );
  }
}
