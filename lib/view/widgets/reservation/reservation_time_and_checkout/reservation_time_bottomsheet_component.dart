import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tyasart/config/routing/app_routes_name.dart';
import 'package:tyasart/core/utilits/widgets/line_divider.dart';

import '../../../../config/themes/styles.dart';
import '../../../../controller/reservation/reservation_time_controller.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/constant/imgaeasset.dart';
import '../../../../core/utilits/widgets/custom_submattied_button.dart';

class ReservationBottomSheetComponent extends StatelessWidget {
  const ReservationBottomSheetComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReservationTimeController>(
      builder: (controller) {
        return AnimatedBuilder(
          animation: controller.animationController,
          builder: (BuildContext context, Widget? child) {
            return PopScope(
              onPopInvoked: (didPop) {
                controller.animationController.reverse();
              
              },
              child: SingleChildScrollView(
                child: Container(
                  
                 padding: EdgeInsets.symmetric(horizontal: 5.w),
                  width: Get.width,
                  height:342.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(48.r),
                          topRight: Radius.circular(48.r))),
                  child: Column(
                    children: [
                      SizedBox(
                        height:controller.animation.value* 25.h,
                      ),
                      Image.asset(
                        AppImageAsset.reservationCheck,
                        width: 137.w,
                        height:controller.animation.value* 140.h,
                      ),
                      SizedBox(
                        height:controller.animation.value* 15.h,
                      ),
                      SizedBox(height: controller.animation.value*34.h,
                        child: Text(
                          "تم الحجز بنجاح",
                          style: TextStyles.font22Black400Weight,
                        ),
                      ),
                      SizedBox(
                        height:controller.animation.value* 5.h,
                      ),
                      SizedBox(height: controller.animation.value*25.h,
                        child: Text(
                          "يتم البحث عم المرافق المناسب سيستغرق البحث ثواني معدودة",
                          style: TextStyles.font22Black400Weight
                              .copyWith(fontSize: 14.sp, color: AppColor.gray),
                        ),
                      ),
                      SizedBox(
                        height:controller.animation.value* 22.h,
                      ),
                      CustomSubmattiedButton(
                        colorButtom: AppColor.primaryColor,
                        width: 343.w,
                        height:controller.animation.value* 56.h,
                     
                        textWidget: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 10.w),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                            onTap: () {
                              Get.offNamed(AppRouteName.mainScreen)     ;                     },
                            child: Text(  "الي الصفحة الرئيسية",
                              style: TextStyles.font16WhiteSemiBold,),
                            )
                            ,Padding(
                              padding:  EdgeInsets.only(left: 30.w),
                              child: DividerLine(width: 1.5.h,height: 30.h,color: AppColor.white,),
                            ),
                           InkWell(onTap: (){
                            Get.find<ReservationTimeController>().followEvent();
                           }, child:   Text(
                              "إحجز الان",
                              style: TextStyles.font16WhiteSemiBold,
                            )),
                          ],
                                                ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }
        );
      }
    );
  }
}
