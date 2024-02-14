import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tyasart/core/constant/color.dart';
import '../../../config/themes/styles.dart';
import '../../../controller/reservation/reservation_track_controller.dart';
import '../../../core/constant/imgaeasset.dart';
import '../../../core/utilits/models/map_custom_styles.dart';
import '../../../core/utilits/widgets/custom_submattied_button.dart';
import '../../../core/utilits/widgets/line_divider.dart';
import '../../../core/utilits/widgets/screen_header.dart';

class CompanionTrack extends StatelessWidget {
  const CompanionTrack({super.key});

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
                        ScreenHeader(
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
                        const AccompionInfo(),
                        SizedBox(height: 16.h),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AccompionDateInfo(),
                            AccompionDateInfo(),
                          ],
                        ),
                        SizedBox(height: 17.h),
                        trackController.showMap
                            ? const SizedBox()
                            : Column(
                                children: [
                                  const TrackStipperSection(),
                                  SizedBox(
                                    height: 17.h,
                                  ),
                                  CustomSubmattiedButton(
                                    colorButtom:               trackController.isLight
                              ?AppColor.darkCyan:AppColor.darkMapThemeButton,
                                    width: 343.w,
                                    height: 56.h,
                                    onPressed: () {
                                      Get.find<ReservationTrackController>()
                                          .mapVisibility();
                                    },
                                    textWidget: Text(
                                      "اظهار الخريطة",
                                      style: TextStyles.font16WhiteSemiBold.copyWith( color: trackController.isLight
                              ?AppColor.white:AppColor.darkMapThemeContent,),
                                    ),
                                  ),
                                ],
                              )
                      ],
                    ),
                  ),
                ),
                trackController.showMap
                    ? Stack(
                        children: [
                          Positioned(
                              bottom: 0,
                              child: Builder(builder: (context) {
                                return Visibility(
                                  visible: trackController.isLight,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(22.r),
                                      topRight: Radius.circular(22.r),
                                    ),
                                    child: Container(
                                      width: Get.width,
                                      height: 446.h,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(22.r),
                                              topRight: Radius.circular(22.r))),
                                      child: GoogleMap(
                                        zoomControlsEnabled: false,
                                        mapToolbarEnabled: false,
                                        markers: trackController.markers,
                                        onTap: (LatLng? position) {
                                          trackController
                                              .changeMarkerPosition(position);
                                        },
                                        initialCameraPosition: trackController
                                            .initialCameraPosition,
                                        onMapCreated:
                                            (GoogleMapController controller) {
                                          trackController.mapController =
                                              controller;
                                          controller
                                              .setMapStyle(MapStyle.lightGreen);
                                        },
                                      ),
                                    ),
                                  ),
                                );
                              })),
                          Positioned(
                              bottom: 0,
                              child: Visibility(
                                visible: !trackController.isLight,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(22.r),
                                    topRight: Radius.circular(22.r),
                                  ),
                                  child: Container(
                                    width: Get.width,
                                    height: 446.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(22.r),
                                            topRight: Radius.circular(22.r))),
                                    child: GoogleMap(
                                      zoomControlsEnabled: false,
                                      mapToolbarEnabled: false,
                                      markers: trackController.markers,
                                      onTap: (LatLng? position) {
                                        trackController
                                            .changeMarkerPosition(position);
                                      },
                                      initialCameraPosition:
                                          trackController.initialCameraPosition,
                                      onMapCreated:
                                          (GoogleMapController controller) {
                                        trackController.mapController =
                                            controller;
                                        controller
                                            .setMapStyle(MapStyle.greenDarkSpy);
                                      },
                                    ),
                                  ),
                                ),
                              )),
                          Positioned(
                              bottom: 40.h,
                              left: 12.w,
                              right: 12.w,
                              child: CustomSubmattiedButton(
                                colorButtom:
                                  trackController.isLight
                              ?AppColor.darkCyan:AppColor.darkMapThemeButton,
                                width: 343.w,
                                height: 56.h,
                                onPressed: () {
                                  Get.find<ReservationTrackController>()
                                      .mapVisibility();
                                },
                                textWidget: Text(
                                  "اخفاء الخريطة",
                                  style:
                                      TextStyles.font16WhiteSemiBold.copyWith(
                                    color: trackController.isLight
                              ?AppColor.white:AppColor.darkMapThemeContent,
                                  ),
                                ),
                              ))
                        ],
                      )
                    : const SizedBox(),
                Positioned(
                    top: 13,
                    left: 20,
                    child: IconButton(
                      onPressed: () {
                        Get.find<ReservationTrackController>().toggleMapTheme();
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

class AccompionDateInfo extends StatelessWidget {
  const AccompionDateInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReservationTrackController>(
     
      builder: (trackController) {
        return Container(
          width: 164.06.w, 
          height: 73.h,
          decoration: BoxDecoration(
              color: trackController.isLight
                              ?AppColor.lightShadeGreen:AppColor.darkMapThemeContiner,
              borderRadius: BorderRadius.circular(10.r)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImageAsset.clock,
                        color: trackController.isLight
                              ?AppColor.black:AppColor.darkMapThemeContent,
                ),
                SizedBox(
                  width: 8.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "الساعة",
                      style: TextStyles.font22Black400Weight.copyWith(
                        color: trackController.isLight
                              ?AppColor.black:AppColor.darkMapThemeContent,
                        height: 1,
                        fontSize: 12.sp,
                      ),
                    ),
                    Text(
                      "السابعة",
                      style: TextStyles.font22Black400Weight.copyWith(
                              color: trackController.isLight
                              ?AppColor.black:AppColor.darkMapThemeContent,
                          height: 1.2,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class TrackStipperSection extends StatelessWidget {
  const TrackStipperSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReservationTrackController>(
      builder: (trackController) {
        return Container(
            width: 343.w,
            height: 241.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17.r),
                border: Border.all(color:trackController.isLight
                                  ?AppColor.whiteSmoke:AppColor.gray,  width: 2.w)),
            child: Column(
              children: [
                ...List.generate(4, (int index) => const TrackStipperComponent()),
              ],
            ));
      }
    );
  }
}

class AccompionInfo extends StatelessWidget {
  const AccompionInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReservationTrackController>(builder: (trackController) {
      return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17.r),
            border: Border.all(
                color: trackController.isLight
                              ?AppColor.whiteSmoke:AppColor.gray, width: 2.w)),
        width: 343.w,
        height: 130.h,
        padding: EdgeInsets.only(top: 16.h, bottom: 13.h, right: 9.w),
        child: Row(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      AppImageAsset.accompion,
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
                        '4.8',
                        style: TextStyles.font22Black400Weight.copyWith(
                         color: trackController.isLight
                              ?AppColor.black:AppColor.darkMapThemeContent,
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
                  'إبراهيم المالكي',
                  style: TextStyles.font22Black400Weight.copyWith(
                      color: trackController.isLight
                              ?AppColor.black:AppColor.darkMapThemeContent,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.02),
                ),
                Text(
                  'معلم علم نفس متقاعد',
                  style: TextStyles.font12bluishGray500
                      .copyWith(letterSpacing: 0.02),
                ),
                SizedBox(
                  height: 11.h,
                ),
                Row(
                  children: [
                    Container(
                      width: 92.w,
                      height: 34.h,
                      decoration: BoxDecoration(
                          color: trackController.isLight
                              ?AppColor.whiteSmoke:AppColor.darkMapThemeContiner,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Image.asset(
                        AppImageAsset.message,
                          color: trackController.isLight
                              ?AppColor.softGreen:AppColor.darkMapThemeContent,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Container(
                      width: 92.w,
                      height: 34.h,
                      decoration: BoxDecoration(
                         color: trackController.isLight
                              ?AppColor.whiteSmoke:AppColor.darkMapThemeContiner,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Image.asset(
                        AppImageAsset.heart,
                      color: trackController.isLight
                              ?AppColor.softGreen:AppColor.darkMapThemeContent,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      );
    });
  }
}

class TrackStipperComponent extends StatelessWidget {
  const TrackStipperComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DividerLine(
          width: 280.w,
          color: AppColor.bluishGray,
        ),
        SizedBox(
          height: 58.h,
        ),
      ],
    );
  }
}
