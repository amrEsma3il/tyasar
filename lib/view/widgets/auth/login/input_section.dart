import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tyasart/controller/auth/login_controller.dart';
import '../../../../config/themes/styles.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/constant/imgaeasset.dart';
import '../../../../core/utilits/widgets/custom_submattied_button.dart';
import '../../../../core/utilits/widgets/custom_text_field.dart';

class LoginInputSection extends StatelessWidget {
  const LoginInputSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12.w),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Text(
                "أكتب رقم جوالك",
                style: TextStyles.font16WhiteSemiBold
                    .copyWith(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                CustomTextField(
                    paddingBottom: 16.h,
                    controller: LoginController.phoneNumber,
                    onTap: () {},
                    width: 230.w,
                    height: 56.h,
                    hintText: "01006539084",
                    prefixWidget: Padding(
                      padding: EdgeInsets.only(right: 7.w),
                      child: const Icon(
                        Icons.phone_android_rounded,
                        size: 25,
                      ),
                    )),
                SizedBox(
                  width: 7.w,
                ),
                CustomTextField(
                  controller: TextEditingController(),
                  paddingBottom: 30.h,
                  height: 56.h,
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
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            CustomSubmattiedButton(
              colorButtom: AppColor.primaryColor,
              width: 343.w,
              height: 56.h,
              onPressed: () {
                Get.find<LoginController>().nextEvent();
              },
              textWidget: Text(
                "التالي",
                style: TextStyles.font16WhiteSemiBold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
