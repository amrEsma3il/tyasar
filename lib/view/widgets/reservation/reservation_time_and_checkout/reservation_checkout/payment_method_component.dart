
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constant/color.dart';


class PaymentMethodComponent extends StatelessWidget {
   final String? paymentMethodIcon;

  const PaymentMethodComponent({
    super.key, this.paymentMethodIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("paymentmethod");
      },
      child: Container(
        width: 100.w,
        height: 50.h,
        decoration: BoxDecoration(
            color: AppColor.lightShadeGrayishBlue,
            borderRadius: BorderRadius.circular(10)),
        child: Image.asset(
          paymentMethodIcon!,
          width: 16.w,
          height: 16.h,
        ),
      ),
    );
  }
}



