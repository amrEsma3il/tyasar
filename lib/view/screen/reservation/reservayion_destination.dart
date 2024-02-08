import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tyasart/controller/reservation/reservation_location_controller.dart';
import '../../../core/constant/imgaeasset.dart';
import '../../../core/utilits/widgets/screen_shadow_corner_effect.dart';
import '../../../core/utilits/widgets/skip_button.dart';
import '../../widgets/reservation/reservation_location/headline_and_info.dart';
import '../../widgets/reservation/reservation_location/input_section.dart';



class ReservationDestination extends StatelessWidget {
  const ReservationDestination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildBody(context));
  }

  Widget buildBody(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
         const ScreenCornersShadowEffect(),
          SingleChildScrollView(
            reverse: true,
            child: Column(
              children: [
                SizedBox(
                  height: 42.h,
                  width: MediaQuery.of(context).size.width,
                ),
                Image.asset(
                  AppImageAsset.reservationLocation,
                  height: 214.h,
                  width: 214.w,
                ),
                const HeadlineAndInfoSection(),
                SizedBox(
                  height: 35.h,
                ),
                const InputSection()
              ],
            ),
          ),
          SkipButton(
            onPressed: () {
               Get.find<ReservationLoationController>().skipEvent();
            },
            top: -2,
          
          )
        ],
      ),
    ));
  }
}
