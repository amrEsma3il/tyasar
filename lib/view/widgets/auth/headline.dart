
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/themes/styles.dart';

class ScreenHeadline extends StatelessWidget {

 final String headLine;
 final double paddingBottom ;
  const ScreenHeadline({
    super.key, required this.headLine, required this.paddingBottom,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: paddingBottom.h),
      child: Text(headLine,style: TextStyles.font32greenBold.copyWith(fontSize: 27.sp,
       letterSpacing: -2,),),
    );
  }
}
