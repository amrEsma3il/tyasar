import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tyasart/core/constant/color.dart';

import '../../config/routing/app_routes_name.dart';

class VerifyController extends GetxController {
  Color borderColor = AppColor.softGray;
  double borderWidth = 1;

  late TextEditingController firstDigit;
  late TextEditingController secondtDigit;
  late TextEditingController thirdDigit;
  late TextEditingController fourthDigit;

  nextEvent() {
    if (fourthDigit.text +
            thirdDigit.text +
            secondtDigit.text +
            firstDigit.text ==
        "1234") {
      borderColor = AppColor.primaryColor;
      borderWidth = 1.3;
      firstDigit.clear();
    secondtDigit.clear();
    thirdDigit.clear();
    fourthDigit.clear();
      Get.toNamed(AppRouteName.loginContinue);
    } else {
      borderColor = AppColor.red;
      borderWidth = 1.3;
    }

    update();
  }

  backEvent() {
    Get.back();
  }

  resendEvent() {
    //TODO : resend code implement
  }

  @override
  void onInit() {
    firstDigit = TextEditingController();
    secondtDigit = TextEditingController();
    thirdDigit = TextEditingController();
    fourthDigit = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    firstDigit.dispose();
    secondtDigit.dispose();
    thirdDigit.dispose();
    fourthDigit.dispose();
   
    super.dispose();
  }
}
