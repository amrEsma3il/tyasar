import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/themes/styles.dart';
import '../../../controller/reservation/reservation_track_controller.dart';
import '../../../data/model/reservation/accomoion_info_model.dart';
import '../../constant/color.dart';
import '../../constant/imgaeasset.dart';
import '../../../view/widgets/reservation/reservation_track/accompion_info_section/accompion_info_section_button.dart';

class AccompionInfo extends StatelessWidget {
  final ReservationTrackController trackController;
  final double width;
  final AccompionInfoModel accompionInfoEntity;
  const AccompionInfo({
    super.key,
    required this.trackController,
    required this.width,
    required this.accompionInfoEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17.r),
          border: Border.all(
              color:
                  trackController.isLight ? AppColor.whiteSmoke : AppColor.gray,
              width: 2.w)),
      width: width.w,
      height: 130.h,
      padding: EdgeInsets.only(top: 18.h, bottom: 13.h, right: 9.w),
      child: Row(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                   accompionInfoEntity.imgProfile,
                    width: 60.w,
                    height: 60.h,
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 3.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      accompionInfoEntity.rate,
                      style: TextStyles.font22Black400Weight.copyWith(
                        color: trackController.isLight
                            ? AppColor.black
                            : AppColor.darkMapThemeContent,
                        fontSize: 13.25.sp,
                        fontFamily: "regular",
                      ),
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Image.asset(AppImageAsset.star)
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            width: 22.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                accompionInfoEntity.name,
                style: TextStyles.font22Black400Weight.copyWith(
                    color: trackController.isLight
                        ? AppColor.black
                        : AppColor.darkMapThemeContent,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.02),
              ),
              Text(
                accompionInfoEntity.bio,
                style: TextStyles.font12bluishGray500
                    .copyWith(letterSpacing: 0.02),
              ),
              SizedBox(
                height: 11.h,
              ),
              Row(
                children: [
                  AccompionSectionButton(
                      trackController: trackController,
                      iconName: AppImageAsset.message),
                  SizedBox(
                    width: 5.w,
                  ),
                  AccompionSectionButton(
                      trackController: trackController,
                      iconName: AppImageAsset.heart),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
