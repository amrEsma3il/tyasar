
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/themes/styles.dart';
import '../../../../../core/constant/color.dart';
import '../../../../../core/utilits/widgets/custom_text_field.dart';
import 'checkout_detail_section.dart';
import 'payment_method_section.dart';

class ReservaionCheckoutSection extends StatelessWidget {
  const ReservaionCheckoutSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
            paddingBottom: 12,
            controller: TextEditingController(),
            onTap: () {},
            width: 343.w,
            height: 56.h,
            hintText: "كود الخصم",
            suffiWidget: Padding(
                padding: const EdgeInsets.only(left: 4.5, top: 5),
                child: InkWell(
                  onTap: () {
 

                  },
                  child: Container(
                    width: 100.01.w,
                    height: 44.13.h,
                    decoration: BoxDecoration(
                        color: AppColor.softGreen,
                        borderRadius: BorderRadius.circular(28.5)),
                    child: Center(
                        child: Text(
                      "تطبيق",
                      style: TextStyles.font16WhiteSemiBold
                          .copyWith(fontWeight: FontWeight.w600),
                    )),
                  ),
                ))),
        SizedBox(
          height: 14.h,
        ),
        const CheckoutDetailsSection(),
        SizedBox(
          height: 17.h,
        ),
         const PaymentMethodSection(),
      ],
    );
  }
}
