import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../config/themes/styles.dart';


// ignore: must_be_immutable
class SkipButton extends StatelessWidget {
  double? left,top;
   void Function()? onPressed;

  
   SkipButton({
    required this.onPressed,
    Key? key,
    this.left=-1
    ,this.top=-13,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left!.w, top:top!.h,
      child: TextButton(onPressed: onPressed
      // (){
      //  Get.find<OnBoardingController>().skipEvent();

      // }
      ,
       child: Text("تخطي",style:TextStyles.font13blueSemiBold)),
    );
  }
}
