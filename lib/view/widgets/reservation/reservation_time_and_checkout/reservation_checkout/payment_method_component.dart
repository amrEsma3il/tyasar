import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../controller/reservation/reservation_time_controller.dart';
import '../../../../../core/constant/color.dart';

class PaymentMethodComponent extends StatelessWidget {
  final String? paymentMethodIcon;
  final int? index;
  final void Function()? onTap;

  const PaymentMethodComponent({
    super.key,
    this.paymentMethodIcon,
    this.index,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: GetBuilder<ReservationTimeController>(
        builder: (controller) {
          bool selectPaymantMethod = controller.paymentMethod == index;
          return Container(
            width: 100.w,
            height: 50.h,
            decoration: BoxDecoration(
                //color here (border and background)
                border: Border.all(
                    width: selectPaymantMethod ? 1.w : 0,
                    color: selectPaymantMethod
                        ? AppColor.darkCyan
                        : AppColor.lightShadeGrayishBlue),
                color: selectPaymantMethod
                    ? AppColor.lightGrayishCyan
                    : AppColor.lightShadeGrayishBlue,
                borderRadius: BorderRadius.circular(10.r)),
            child: Image.asset(
              paymentMethodIcon!,
              width: 16.w,
              height: 16.h,
            ),
          );
        },
      ),
    );
  }
}
