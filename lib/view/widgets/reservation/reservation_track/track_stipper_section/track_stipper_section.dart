import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../../controller/reservation/reservation_track_controller.dart';
import '../../../../../core/constant/color.dart';
import '../../../../../data/datasource/static/reservation/reservation_track_stipper_constant_datasource.dart';


class TrackStipperSection extends StatelessWidget {
   final  ReservationTrackController trackController;

  const TrackStipperSection({
    super.key, required this.trackController,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
          width: 343.w,
          height: 241.h,
          padding: EdgeInsets.fromLTRB(15.w, 27.h, 20.w, 13.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17.r),
              border: Border.all(
                  color: trackController.isLight
                      ? AppColor.whiteSmoke
                      : AppColor.gray,
                  width: 2.w)),
          child: Column(
            children: [
              ...List.generate(stipperContentList(trackController).length, (int index) =>  stipperContentList(trackController)[index]),
            ],
          ));

  }
}