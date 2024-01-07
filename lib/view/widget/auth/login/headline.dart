
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/themes/styles.dart';

class ScreenHeadline extends StatelessWidget {
  const ScreenHeadline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 30.h),
      child: Text("اهلا وسهلا بك معنا",style: TextStyles.font32greenBold.copyWith(fontSize: 27.sp,
       letterSpacing: -2,),),
    );
  }
}
