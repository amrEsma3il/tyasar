import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tyasart/core/constant/color.dart';
import '../../../config/themes/styles.dart';
import '../../../controller/reservation/reservation_track_controller.dart';
import '../../../core/constant/imgaeasset.dart';
import '../../../core/utilits/widgets/custom_submattied_button.dart';
import '../../../core/utilits/widgets/line_divider.dart';
import '../../../core/utilits/widgets/screen_header_with_icon.dart';
import '../../../data/model/reservation/accomoion_info_model.dart';
import '../../widgets/reservation/reservation_track/accompion_date_info_section/accompion_date_section.dart';
import '../../../core/utilits/widgets/accompion_info_component.dart';
import '../../widgets/reservation/reservation_track/map_section.dart';
import '../../widgets/reservation/reservation_track/track_stipper_section/track_stipper_section.dart';

class CompanionTrack extends StatelessWidget {
 final AccompionInfoModel accompionInfoEntity;
   const CompanionTrack({super.key,required this.accompionInfoEntity});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReservationTrackController>(builder: (trackController) {
      return Scaffold(
        backgroundColor: trackController.isLight
            ? AppColor.white
            : const Color.fromARGB(255, 29, 28, 28),
        body: SafeArea(
          child: SizedBox(
            height: Get.height,
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(right: 16.w, left: 16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ScreenHeaderWithIcon(
                            headerColor: trackController.isLight
                                ? AppColor.black
                                : const Color.fromARGB(255, 195, 205, 200),
                            icon: AppImageAsset.backArrow,
                            title: 'تتبع المرافق'),
                        SizedBox(
                          height: 40.h,
                          width: Get.width,
                        ),
                        DividerLine(
                          color: trackController.isLight
                              ? AppColor.softGray
                              : const Color.fromARGB(255, 157, 160, 159),
                          width: Get.width,
                        ),
                        SizedBox(
                          height: 17.h,
                        ),
                         AccompionInfo(trackController: trackController,accompionInfoEntity: accompionInfoEntity,width: 343),
                        SizedBox(height: 16.h),
                          AccompionDateSection(trackController: trackController,),
                        SizedBox(height: 17.h),
                        trackController.showMap
                            ? const SizedBox()
                            : Column(
                                children: [
                                   TrackStipperSection(trackController: trackController,),
                                  SizedBox(
                                    height: 17.h,
                                  ),
                                  CustomSubmattiedButton(
                                    colorButtom: trackController.isLight
                                        ? AppColor.darkCyan
                                        : AppColor.darkMapThemeButton,
                                    width: 343.w,
                                    height: 56.h,
                                    onPressed: () {
                                      Get.find<ReservationTrackController>()
                                          .mapVisibility();
                                    },
                                    textWidget: Text(
                                      "اظهار الخريطة",
                                      style: TextStyles.font16WhiteSemiBold
                                          .copyWith(
                                        color: trackController.isLight
                                            ? AppColor.white
                                            : AppColor.darkMapThemeContent,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                      ],
                    ),
                  ),
                ),
                trackController.showMap
                    ?  TrackMapSection(trackController: trackController,)
                    : const SizedBox(),
                Positioned(
                    top: 13,
                    left: 20,
                    child: IconButton(
                      onPressed: () {
                       trackController.toggleMapTheme();
                      },
                      icon: Icon(
                          trackController.isLight
                              ? Icons.light_mode
                              : Icons.dark_mode,
                          color: trackController.isLight
                              ? AppColor.black
                              : AppColor.darkMapThemeContent),
                    ))
              ],
            ),
          ),
        ),
      );
    });
  }
}

