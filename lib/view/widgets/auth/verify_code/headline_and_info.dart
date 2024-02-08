
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/themes/styles.dart';
import '../../../../core/constant/color.dart';

class HeadlineAndInfoSection extends StatelessWidget {
  const HeadlineAndInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.w, top: 4.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("رمز التفعيل",
              style: TextStyles.font22Black400Weight.copyWith(
                  letterSpacing: -2, fontSize: 30, fontWeight: FontWeight.w700),
              textAlign: TextAlign.center),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
              width: 319.w,
              child: Text(
                textAlign: TextAlign.center,
                "ادخل رمز التحقق المرسل إلى جوالك",
                style: TextStyles.font13blueSemiBold
                    .copyWith(decoration: TextDecoration.none),
              )),
          SizedBox(
              width: 319.w,
              child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      style: TextStyles.font13blueSemiBold
                          .copyWith(decoration: TextDecoration.none),
                      children: const [
                        TextSpan(text: "لقد أرسلنا رمز  إلى "),
                        TextSpan(
                            text: "201120016461+",
                            style: TextStyle(color: AppColor.primaryColor)),
                        TextSpan(
                            text:
                                "  سيتم التعبئة التلقائية  \n للحقول التالية  "),
                      ]))),
        ],
      ),
    );
  }
}
