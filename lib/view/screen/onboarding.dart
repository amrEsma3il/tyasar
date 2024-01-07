import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../config/themes/styles.dart';
import '../../controller/onboarding_controller.dart';
import '../../core/constant/color.dart';
import '../widget/onboarding/base_back_container.dart';
import '../../core/utilits/widgets/customSubmattiedbutton.dart';
import '../widget/onboarding/dotcontroller.dart';
import '../widget/onboarding/skip_button.dart';
import '../widget/onboarding/slider/customslider.dart';

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
            child:  const Stack(
              children: [
                 BaseBackgroundContainer(),
                Column(children: [
                   Expanded(
                    flex: 4,
                    child: CustomSliderOnBoarding(),
                  ),
                  Expanded(
                      flex: 1,
                      child: 
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OnboardingButton(),
                           CustomDotControllerOnBoarding(),
                        ]
                      ))
                ]),
                 SkipButton()
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

