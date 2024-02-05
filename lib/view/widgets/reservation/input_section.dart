
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../config/routing/app_routes_name.dart';
import '../../../config/themes/styles.dart';
import '../../../controller/reservation/reservation_location_controller.dart';
import '../../../core/constant/color.dart';
import '../../../core/utilits/widgets/customSubmattiedbutton.dart';
import '../../../core/utilits/widgets/input_field_with_label.dart';

class InputSection extends StatelessWidget {
  const InputSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InputFieldWithLabel(
          paddingBottom: 13.h,
          suffix: Padding(
            padding: const EdgeInsets.only(left: 35),
            child: InkWell(
                onTap: () {},
                child: const Icon(Icons.location_on_outlined, size: 30)),
          ),
          hint: "ادخل هنا الموقع الجغرافي",
          label: "من",
        ),
        InputFieldWithLabel(
          paddingBottom: 13.h,
          suffix: Padding(
            padding: const EdgeInsets.only(left: 35),
            child: InkWell(
                onTap: () {
                  //  IntentUtils.launchGoogleMaps;
                },
                child: const Icon(Icons.location_on_outlined, size: 30)),
          ),
          hint: "ادخل هنا الموقع الجغرافي",
          label: "الي",
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            width: Get.width,
            height: 10,
          ),
          Text("+إضافة واجهة اخري",
              style: TextStyles.font16greenSoft.copyWith(height: 0.7)),
          Container(
            width: 145,
            height: 1.5,
            color: AppColor.softGreen,
          )
        ]),
        const SizedBox(
          height: 37,
        ),
        CustomSubmattiedButton(
          colorButtom: AppColor.primaryColor,
          width: 343.w,
          height: 56.h,
          onPressed: () {
            Get.toNamed(AppRouteName.reservationTime);

            Get.find<ReservationLoationController>().nextEvent();
          },
          textWidget: Text(
            "ذهاب إلي الوجهة المحددة",
            style: TextStyles.font16WhiteSemiBold,
          ),
        ),
      ],
    );
  }
}
