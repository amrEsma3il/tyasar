
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/verfiy_code_controller.dart';
import '../../../../core/constant/imgaeasset.dart';

class VerifyArrowBack extends StatelessWidget {
  const VerifyArrowBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: 23.h,
        top: 22.w,
        child: InkWell(
            onTap: () {
              Get.find<VerifyController>().backEvent();
            },
            child: SvgPicture.asset(AppImageAsset.backArrow)));
  }
}
