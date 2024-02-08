
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/themes/styles.dart';
import '../../../../../core/utilits/widgets/line_divider.dart';
import '../../../../../data/datasource/static/reservation/reservation_checkout_detail_data_source.dart';

class CeckoutComponent extends StatelessWidget {
  final Map<String, String>? reservationPaymentMethodEntity;
 
  const CeckoutComponent({
    super.key,  this.reservationPaymentMethodEntity,
  });


  @override
  Widget build(BuildContext context) {
    int paddingHeight=(rservationCeckoutDetailsList[2]['title']== reservationPaymentMethodEntity!['title']!)?22:12;
    return Padding(
      padding:  EdgeInsets.only(bottom:paddingHeight.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
               reservationPaymentMethodEntity!['title']!,
                style: TextStyles.font22Black400Weight.copyWith(
                    height: 1.2, fontSize: 15.sp, fontWeight: FontWeight.w400),
              ),
              Row(
                children: [
                  Text(
                   reservationPaymentMethodEntity!['cost']!,
                    style:
                        TextStyles.font22Black400Weight.copyWith(fontSize: 14.sp),
                  ),
                  Text(
                    "  ر.س",
                    style:
                        TextStyles.font22Black400Weight.copyWith(fontSize: 14.sp),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height:8.h,
          ),
         const DividerLine()
        ],
      ),
    );
  }
}

