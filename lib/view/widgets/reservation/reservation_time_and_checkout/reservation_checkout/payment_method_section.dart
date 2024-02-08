import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/themes/styles.dart';
import '../../../../../data/datasource/static/reservation/reservation_payment_method_data_source.dart';
import 'payment_method_component.dart';

class PaymentMethodSection extends StatelessWidget {
  const PaymentMethodSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "إختيار طريقة الدفع",
          style: TextStyles.font22Black400Weight.copyWith(
              height: 1.2,
              letterSpacing: -2,
              fontSize: 18.sp,
              fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 8.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(
                paymentMethodList.length,
                (index) => PaymentMethodComponent(
                      paymentMethodIcon: paymentMethodList[index],
                    ))
          ],
        ),
        SizedBox(
          height: 18.h,
        ),
      ],
    );
  }
}
