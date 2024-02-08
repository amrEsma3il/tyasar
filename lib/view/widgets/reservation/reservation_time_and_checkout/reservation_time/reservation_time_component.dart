import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'reservation_continer.dart';

class ReservationTimeComponent extends StatelessWidget {
 final String? reservationTime;
  const ReservationTimeComponent({
    this.reservationTime,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ReservationContiner(
      width: 77.w,
      height: 36.h,
      radius: 10,
      child:  Center(child: Text(reservationTime!)),
    );
  }
}