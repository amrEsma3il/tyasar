
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/themes/styles.dart';

class TitlesSection extends StatelessWidget {
  const TitlesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 14.w),
      child: Column(
        
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
      Text(
      "تسجيل الدخول",style:TextStyles.font24Black700Weight.copyWith(letterSpacing: -2,
        fontSize: 30,fontWeight: FontWeight.w700),textAlign:TextAlign.center),
      SizedBox(height: 10.h,),
                     SizedBox(width: 319.w,
      child:  Text(
        "ادخل رقم هاتفك المحمول لإنشاء حساب , سوف نرسل لك رمز \n مرة واحدة",
        style: TextStyles.font13blueSemiBold.copyWith(decoration:TextDecoration.none ),
        
        textAlign: TextAlign.right,)),],),
    );
  }
}
