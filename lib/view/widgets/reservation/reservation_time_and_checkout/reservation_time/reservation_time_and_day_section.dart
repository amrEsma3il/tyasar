import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'reservation_day_section.dart';
import 'reservation_time_section.dart';

class ReservationTimeSection extends StatelessWidget {
  const ReservationTimeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        SizedBox(
            height: 12.h),
        const SuitableDay(),
        SizedBox(
          height: 18.h,
        ),
      
        const SuitableTime(),
      ],
    );
  }
}
