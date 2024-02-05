import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../config/themes/styles.dart';
import '../../../controller/onboarding/onboarding_controller.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: -1.w, top: -13.h,
      child: TextButton(onPressed: (){
       Get.find<OnBoardingController>().skipEvent();
      }, child: Text("تخطي",style:TextStyles.font13blueSemiBold)),
    );
  }
}