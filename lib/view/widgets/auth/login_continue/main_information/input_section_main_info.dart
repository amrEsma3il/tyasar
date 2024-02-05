
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tyasart/controller/auth/login_continue_controller.dart';

import '../../../../../config/themes/styles.dart';
import '../../../../../core/constant/color.dart';
import '../../../../../core/utilits/widgets/customSubmattiedbutton.dart';
import '../../../../../core/utilits/widgets/input_field_with_label.dart';

class MainInformation extends StatelessWidget {
  const MainInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return      Form(
      child: Column(children: [
                   const InputFieldWithLabel(hint: "أكتب هنا الاسم كاملا",label: "الاسم كاملا",),
                  const InputFieldWithLabel(hint: "أكتب هنا البريد الالكتروني",label: "البريد الالكتروني",),
                  const InputFieldWithLabel(hint: "أكتب هنا الرمز السري",label: "الرمز السري",),
                  const InputFieldWithLabel(hint: "إعاده كتابة الرمز السري",label: "إعاده كتابة الرمز السري",),
                  const SizedBox(height: 6,),
                   
            
                
                  CustomSubmattiedButton(
                    colorButtom: AppColor.primaryColor,
                    width: 343.w,
                    height: 56.h,
                    onPressed: () {
                      Get.find<LoginContinueController>().nextEvent();
                    },
                    textWidget: Text(
                      "الخطوة التالية ",
                      style: TextStyles.font16WhiteSemiBold,
                    ),
                  ),
    
             ],),
    );
  }
}
