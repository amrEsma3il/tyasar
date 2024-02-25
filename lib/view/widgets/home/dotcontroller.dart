import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/home/home_controller.dart';
import '../../../core/constant/color.dart';
import '../../../data/datasource/static/home/home_banner_data_sources.dart';

class CustomDotControllerCurosal extends StatelessWidget {
  const CustomDotControllerCurosal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) => Padding(
          padding:  EdgeInsets.only(top: 15.h),
          child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                     HomeStaticDataSources.homeBannerList.length,
                      (index) => AnimatedContainer(
                            margin: const EdgeInsets.only(right: 5),
                            duration: const Duration(seconds: 4),
                            width: controller.currentPage == index ? 12.w : 5.w,
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
