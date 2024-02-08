import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../config/themes/styles.dart';
import '../../../controller/onboarding/onboarding_controller.dart';
import '../../../core/constant/color.dart';
import '../../../core/utilits/widgets/custom_submattied_button.dart';
import '../../widgets/onboarding/base_back_container.dart';
import '../../widgets/onboarding/dotcontroller.dart';
import '../../../core/utilits/widgets/skip_button.dart';
import '../../widgets/onboarding/slider/customslider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingController());
    return Scaffold(
        backgroundColor: AppColor.backgroundcolor,
        body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.only(top: 10.h),
            child:   Stack(
              children: [
           const  BaseBackgroundContainer(),
                Column(children: [
                   const Expanded(
                    flex: 4,
                    child: CustomSliderOnBoarding(),
                  ),
                  Expanded(
                      flex: 1,
                      child: 
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                            SizedBox(height: 15.h,),
                     const     OnboardingButton(),
                        
                           const CustomDotControllerOnBoarding(),
                        ]
                      ))
                ]),
                  SkipButton(
                    onPressed: () {
                       Get.find<OnBoardingController>().skipEvent();
                    },
                  )
              ],
            ),
          ),
        ));
  }
}





































//return shared widget in utilits folder with Expressive name
class OnboardingButton extends StatelessWidget {
  const OnboardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomSubmattiedButton(
      colorButtom: AppColor.primaryColor,
      width: 250.w,
      height: 53.h,
                      onPressed:(){
                        Get.find<OnBoardingController>().nextEvent();
                      } , 
                      
                      textWidget:GetBuilder<OnBoardingController>(
        builder: (onboardingController) {
          return Text(
           onboardingController.textButton,
            style: TextStyles.font16WhiteSemiBold,
          );
        }
      ), 
                      
    );
  }
}

