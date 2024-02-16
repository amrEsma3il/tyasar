


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../config/themes/styles.dart';
import '../../../../controller/reservation/reservation_track_controller.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/utilits/classes/map_custom_styles.dart';
import '../../../../core/utilits/widgets/custom_submattied_button.dart';

class TrackMapSection extends StatelessWidget {
   final  ReservationTrackController trackController;

  const TrackMapSection({
    super.key, required this.trackController,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
            children: [
              Positioned(
                  bottom: 0,
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
                                .setMapStyle(trackController.isLight? MapStyle.lightGreen:MapStyle.greenDarkSpy);
                          },
                        )),
                  )),
              Positioned(
                  bottom: 40.h,
                  left: 12.w,
                  right: 12.w,
                  child: CustomSubmattiedButton(
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
                      "اخفاء الخريطة",
                      style:
                          TextStyles.font16WhiteSemiBold.copyWith(
                        color: trackController.isLight
                            ? AppColor.white
                            : AppColor.darkMapThemeContent,
                      ),
                    ),
                  ))
            ],
          );

  }
}
