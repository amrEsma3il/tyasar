import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tyasart/config/routing/app_routes_name.dart';
import 'package:tyasart/controller/auth/login_controller.dart';
import '../../../../config/themes/styles.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/constant/imgaeasset.dart';
import '../../../../core/utilits/widgets/customSubmattiedbutton.dart';
import '../custom_text_field.dart';

class InputSection extends StatelessWidget {
  const InputSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "أكتب رقم جوالك",
            style: TextStyles.font16WhiteSemiBold.copyWith(color: Colors.black),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              CustomTextField(
                width: 230.w,
                height: 65.h,
                prefixWidget: Padding(
                  padding:  EdgeInsets.only(right: 7.w),
                  child: Row(children: [   const Icon(Icons.phone_android_rounded,size: 25,),
                  SizedBox(width: 7.w,),
                      Text('0122001851',style: TextStyles.font13GrayRegular.copyWith(fontSize: 22),)],),
                )
              ),
              SizedBox(
                width: 7.w,
              ),
              CustomTextField(
                width: 105.w,
                height: 65.h,
               
                prefixWidget:  Padding(
                  padding: EdgeInsets.only(right: 5.w),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                    // const Icon(Icons.flag_outlined,size: 30,),
                    SvgPicture.asset(AppImageAsset.egypt),
                    Text('+20',style: TextStyles.font13GrayRegular.copyWith(fontSize: 22),),const Icon(Icons.arrow_drop_down_rounded,size: 30,)]),
                ),
               
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
              Get.toNamed(AppRouteName.loginContinue);

              // Get.find<LoginController>().nextEvent();
            },
            textWidget: Text(
              "التالي",
              style: TextStyles.font16WhiteSemiBold,
            ),
          )
        ],
      ),
    );
  }
}
