import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../../config/themes/styles.dart';
import '../../../../../config/themes/themes/data_paker.dart';
import '../../../../../controller/auth/login_continue_controller.dart';
import '../../../../../core/constant/color.dart';
import '../../../../../core/constant/imgaeasset.dart';
import '../../../../../core/utilits/widgets/custom_submattied_button.dart';
import '../../../../../core/utilits/widgets/custom_text_field.dart';
import '../../../../../core/utilits/widgets/input_field_with_label.dart';

class LoginContinueSubInformation extends StatelessWidget {
  const LoginContinueSubInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            InputFieldWithLabel(
                suffix: Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: InkWell(
                      onTap: () {},
                      child:
                          const Icon(Icons.arrow_drop_down_outlined, size: 30)),
                ),
                hint: "ذكر",
                label: "الجنس",
                width: 163),
            InputFieldWithLabel(
              hint: "23-4-1994",
              label: "تاريخ الميلاد",
              width: 163,
              suffix: Padding(
                padding: const EdgeInsets.only(left: 35, bottom: 3),
                child: InkWell(
                    onTap: () async {
                      await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2010),
                        lastDate: DateTime(2025),
                        builder: (context, child) {
                          return datePaker(context, child);
                        },
                      );
                    },
                    child: const Icon(Icons.calendar_today_outlined)),
              ),
            ),
          ]),
          InputFieldWithLabel(
            suffix: Padding(
              padding: const EdgeInsets.only(left: 35),
              child: InkWell(
                  onTap: () {},
                  child: const Icon(Icons.location_on_outlined, size: 30)),
            ),
            hint: "ادخل هنا الموقع الجغرافي",
            label: "الموقع الجغرافي",
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            InputFieldWithLabel(
              hint: "70",
              label: "وزن الجسم",
              width: 163,
              suffix: Padding(
                padding: const EdgeInsets.only(left: 35),
                child: InkWell(
                    onTap: () {},
                    child:
                        const Icon(Icons.arrow_drop_down_outlined, size: 30)),
              ),
            ),
            InputFieldWithLabel(
              paddingBottom: 7.6,
              hint: "سمعية",
              label: "نوع الاعاقة",
              width: 163,
              suffix: Padding(
                padding: const EdgeInsets.only(left: 35),
                child: InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.arrow_drop_down_outlined,
                      size: 30,
                    )),
              ),
            ),
          ]),
          InputFieldWithLabel(
            paddingBottom: 6,
            suffix: Padding(
              padding: const EdgeInsets.only(left: 35),
              child: InkWell(
                  onTap: () {},
                  child: const Icon(Icons.arrow_drop_down_outlined, size: 30)),
            ),
            hint: "صحي",
            label: "نوع المرافقة",
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            const InputFieldWithLabel(
                paddingBottom: 0,
                hint: "* * * * * * * *012",
                label: "رقم جوال أحد الاقارب",
                width: 230),
            Padding(
              padding: EdgeInsets.only(top: 18.h),
              child: CustomTextField(
                controller: TextEditingController(),
                paddingBottom: 30.h,
                height: 46.h,
                width: 105.w,
                onTap: () {},
                hintText: '20+',
                prefixWidget: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 11.w,
                      ),
                      SvgPicture.asset(AppImageAsset.egypt),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.w, right: 3.w),
                        child: Text(
                          '+20',
                          style: TextStyles.font13GrayRegular
                              .copyWith(fontSize: 19),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_drop_down_rounded,
                        size: 25,
                        color: AppColor.iconsColor,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                    ]),
              ),
            )
          ]),
          InputFieldWithLabel(
              height: 81.h,
              hint: "ماذا تحتاج من المرافق",
              label: "ماذا تحتاج من المرافق"),
          CustomSubmattiedButton(
            colorButtom: AppColor.primaryColor,
            width: 343.w,
            height: 56.h,
            onPressed: () {
              Get.find<LoginContinueController>().nextEvent();
            },
            textWidget: Text(
              "بدء في تحديد الوجهة ",
              style: TextStyles.font16WhiteSemiBold,
            ),
          ),
          SizedBox(
            height: 10.h,
          )
        ],
      ),
    );
  }
}
