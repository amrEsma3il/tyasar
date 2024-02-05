import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tyasart/config/routing/app_routes_name.dart';
import 'package:tyasart/controller/auth/login_controller.dart';
import '../../../../config/themes/styles.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/constant/imgaeasset.dart';
import '../../../../core/utilits/widgets/customSubmattiedbutton.dart';
import '../../../../core/utilits/widgets/custom_text_field.dart';

class InputSection extends StatelessWidget {
  const InputSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12.w),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                "أكتب رقم جوالك",
                style: TextStyles.font16WhiteSemiBold.copyWith(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                CustomTextField(
                  paddingBottom: 16,
      
                  controller: LoginController.phoneNumber,
                   onTap: (){
                    
                   },
                    width: 230.w,
                    height: 57.h,
                    hintText: "01006539084",
                    
                    prefixWidget: Padding(
                      padding: EdgeInsets.only(right: 7.w),
                      child: const Icon(
                        Icons.phone_android_rounded,
                        size: 25,
                      ),
                    )
                    ),
                SizedBox(
                  width: 7.w,
                ),
      
                InkWell(
                  onTap: (){
      
                    // Get.find<LoginController>().showOverlay(context);
                  },
                  child: CompositedTransformTarget(
                    link: Get.find<LoginController>().linkLayer!,
      
                    child: Container(
                      padding: EdgeInsets.only(right: 5),
                      
                      width: 107.w,
                      height: 56.h,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                      border: Border.all(width: 1.7,color:AppColor.softGray)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(width: 4,),
                            // const Icon(Icons.flag_outlined,size: 30,),
                            SvgPicture.asset(AppImageAsset.egypt),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5,right: 3),
                              child: Text(
                                '+20',
                                style: TextStyles.font13GrayRegular
                                    .copyWith(fontSize: 19),
                              ),
                            ),
                           const Icon(
                                Icons.arrow_drop_down_rounded,
                                size: 25,color: AppColor.iconsColor,
                              ),
                               const SizedBox(width: 8,),
                          ]),
                    ),
                  ),
                ),
                ],
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomSubmattiedButton(
              colorButtom: AppColor.primaryColor,
              width: 343.w,
              height: 56.h,
              onPressed: () {
                Get.toNamed(AppRouteName.verifyCode);
      
                // Get.find<LoginController>().nextEvent();
              },
              textWidget: Text(
                "التالي",
                style: TextStyles.font16WhiteSemiBold,
              ),
            )
          ],
        ),
      ),
    );
  }
}


