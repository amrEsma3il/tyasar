import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../controller/home/home_controller.dart';
import '../../../../data/datasource/static/home/home_banner_data_sources.dart';
import 'pageviewComponent.dart';

class CustomSliderCurosal extends StatelessWidget {
  const CustomSliderCurosal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 152.h,
      child: PageView.builder(
        
        physics: const NeverScrollableScrollPhysics(),
          controller:    Get.find<HomeController>().pageController,
          onPageChanged: (val) {
               Get.find<HomeController>().onPageChangedEvent(val);
          },
          itemBuilder: (context, i) => CurosalComponent( homeBannerEntity:HomeStaticDataSources. homeBannerList[i],)),
    );
  }
}

