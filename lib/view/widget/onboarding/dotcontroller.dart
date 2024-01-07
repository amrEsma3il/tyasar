import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/onboarding_controller.dart';
import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(
        builder: (controller) => Padding(
          padding:  EdgeInsets.only(top: 15.h),
          child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                      onBoardingList.length,
                      (index) => AnimatedContainer(
                            margin: const EdgeInsets.only(right: 5),
                            duration: const Duration(milliseconds: 900),
                            width: controller.currentPage == index ? 17 : 5,
                            height: 6.h,
                            decoration: BoxDecoration(
                                color:controller.currentPage == index ? AppColor.primaryColor:AppColor.grey,
                                borderRadius: BorderRadius.circular(10)),
                          ))
                ],
              ),
        ));
  }
}
