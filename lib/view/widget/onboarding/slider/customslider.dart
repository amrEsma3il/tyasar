import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/onboarding_controller.dart';
import '../../../../data/datasource/static/static.dart';
import 'pageviewComponent.dart';

class CustomSliderOnBoarding extends StatelessWidget {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller:    Get.find<OnBoardingController>().pageController,
        onPageChanged: (val) {
             Get.find<OnBoardingController>().onPageChangedEvent(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => PageViewComponent( onboardingComponent: onBoardingList[i],));
  }
}

