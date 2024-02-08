
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/themes/styles.dart';

class HeadlineAndInfoSection extends StatelessWidget {
  const HeadlineAndInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.w, top: 25.h),
      child: Column(
   
        children: [
         
            Text(
             textAlign: TextAlign.center,
             "إلي أين",
             style: TextStyles.font13blueSemiBold
                 .copyWith(decoration: TextDecoration.none),
           ),
          Text("ترغب بالوجهة",
              style: TextStyles.font22Black400Weight.copyWith(
                height: 0.9,
                  letterSpacing: -1.6, fontSize: 27.sp, fontWeight: FontWeight.w700),
              textAlign: TextAlign.center),
        
         
        
        ],
      ),
    );
  }
}
