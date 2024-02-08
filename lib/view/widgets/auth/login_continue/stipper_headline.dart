
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/themes/styles.dart';

class LoginContinueStipperHeadline extends StatelessWidget {
  const LoginContinueStipperHeadline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "المعلومات الاساسية",
          style: TextStyles.font13GrayRegular,
        ),
        Container(
          width: 172.w,
          height: 1.h,
          decoration: const BoxDecoration(
            color: Colors.transparent,
          ),
        ),
        Text(
          "المعلومات الفرعية",
          style: TextStyles.font13GrayRegular,
        ),
      ],
    );
  }
}
