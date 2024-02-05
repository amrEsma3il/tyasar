import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tyasart/core/constant/color.dart';

import '../../../config/themes/styles.dart';
import '../../../core/constant/imgaeasset.dart';
import '../../widgets/auth/shadow_component.dart';
import '../../widgets/auth/verify_code/arrow_back.dart';
import '../../widgets/auth/verify_code/headline_and_info.dart';
import '../../widgets/auth/verify_code/input_section.dart';

class ReservationTime extends StatelessWidget {
  const ReservationTime({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Positioned(
                  top: 5.h,
                  right: 5.w,
                  child: const ShadowComponent(
                    x: 4,
                    y: 2,
                  )),
              Positioned(
                  bottom: 90.h,
                  right: -10.w,
                  child: const ShadowComponent(
                    y: 25,
                    x: 0,
                  )),
              Positioned(
                  bottom: 2.h,
                  left: -8.w,
                  child: const ShadowComponent(
                    x: 1,
                    y: 1,
                  )),
             
             SingleChildScrollView(
          reverse: true,
                child: Column(
        
                  children: [
                     SizedBox(height: 85.h,width: Get.width,),
                     Container(width: Get.width,height: 1,color: AppColor.softGray,),
                    // Image.asset(
                    //   AppImageAsset.verifyCoed,
                    //   height: 214.h,
                    //   width: 214.w,
                    // ),
                 
                    SizedBox(
                      height: 18.h,
                    ),
                 
                    //  KeyboardPadding(paddingContext: context),
                  ],
                ),
              ),
                 Positioned(
        right: 23.h,
        top: 22.w,
        child: Row(
          children: [
            InkWell(
                onTap: () {
               
                },
                child: SvgPicture.asset(AppImageAsset.backArrow)),
                SizedBox(width: 80.w,),
                   Text("الوقت المناسب",
              style: TextStyles.font22Black400Weight.copyWith(
                height: 0.7,
                  letterSpacing: -2, fontSize: 26.sp, fontWeight: FontWeight.w700),
              textAlign: TextAlign.center)
          ],
        )),
            ],
          ),
        ))
  ,);
  }
}