import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../config/themes/styles.dart';
import '../../../controller/onboarding/onboarding_controller.dart';

// ignore: must_be_immutable
class SkipButton extends StatelessWidget {
  double? left,top;

  
   SkipButton({
    Key? key,
    this.left=-1
    ,this.top=-13,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left!.w, top:top!.h,
      child: TextButton(onPressed: (){
       Get.find<OnBoardingController>().skipEvent();
      }, child: Text("تخطي",style:TextStyles.font13blueSemiBold)),
    );
  }
}
