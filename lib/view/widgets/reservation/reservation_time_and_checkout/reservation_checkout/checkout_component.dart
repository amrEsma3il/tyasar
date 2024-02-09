
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/themes/styles.dart';
import '../../../../../core/constant/color.dart';
import '../../../../../core/utilits/widgets/line_divider.dart';
import '../../../../../data/datasource/static/reservation/reservation_checkout_detail_data_source.dart';

class CeckoutComponent extends StatelessWidget {
  final Map<String, String>? reservationCheckoutEntity;
 
  const CeckoutComponent({
    super.key,  this.reservationCheckoutEntity,
  });


  @override
  Widget build(BuildContext context) {
    bool paddingHeight=(rservationCeckoutDetailsList[2]['title']== reservationCheckoutEntity!['title']!);
    return Padding(
      padding:  EdgeInsets.only(bottom:paddingHeight?0:12.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
               reservationCheckoutEntity!['title']!,
                style: TextStyles.font22Black400Weight.copyWith(
                    height: 1.2, fontSize: 15.sp, fontWeight: FontWeight.w400),
              ),
              Row(
                children: [
                  Text(
                   reservationCheckoutEntity!['cost']!,
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
            height:paddingHeight?32:8.h,
          ),
          DividerLine(color: paddingHeight?AppColor.lightShadeGreen:AppColor.softGray,)
        ],
      ),
    );
  }
}

