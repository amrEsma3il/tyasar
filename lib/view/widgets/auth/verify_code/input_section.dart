import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../config/themes/styles.dart';
import '../../../../controller/auth/verfiy_code_controller.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/utilits/widgets/custom_submattied_button.dart';
import 'verfiy_code_digit.dart';

class VerifyInputSection extends StatelessWidget {
  const VerifyInputSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VerifyCodeDigit(
                  first: true,
                  last: false,
                  controller: Get.find<VerifyController>().firstDigit),
              VerifyCodeDigit(
                  first: false,
                  last: false,
                  controller:  Get.find<VerifyController>().secondtDigit),
              VerifyCodeDigit(
                  first: false,
                  last: false,
                  controller:  Get.find<VerifyController>().thirdDigit),
              VerifyCodeDigit(
                  first: false,
                  last: true,
                  controller:  Get.find<VerifyController>().fourthDigit),
            ],
          ),
          SizedBox(
            height: 18.h,
          ),
          CustomSubmattiedButton(
            colorButtom: AppColor.primaryColor,
            width: 343.w,
            height: 56.h,
            onPressed: () {
    
              Get.find<VerifyController>().nextEvent();
            },
            textWidget: Text(
              "التالي",
              style: TextStyles.font16WhiteSemiBold,
            ),
          ),
          SizedBox(
            height: 33.h,
          ),
          SizedBox(
              width: 319.w,
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: TextStyles.font13blueSemiBold
                          .copyWith(decoration: TextDecoration.none),
                      children: [
                        const TextSpan(text: "سوف تصلك رسالة في "),
                        const TextSpan(
                            text: " 05 : 02  ",
                            style: TextStyle(color: AppColor.softGreen,  fontWeight: FontWeight.w700,)),
                        const TextSpan(text: "دقيقة \n"),
                        TextSpan(
                            text: " إعادة ارسال ",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.find<VerifyController>().resendEvent();
                              },
                            style: TextStyles.font16greenSoft.copyWith(  decoration: TextDecoration.underline)
                              ),
                        const TextSpan(text: " إن لم تصلك رسالة التأكيد بعد "),
                      ]))
       
    
              ),
        ],
      ),
    );
  }
}