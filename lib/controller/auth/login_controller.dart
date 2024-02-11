import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/routing/app_routes_name.dart';

class LoginController extends GetxController {
 late TextEditingController phoneNumber ;
 late TextEditingController countryCode ;

  FocusNode textFieldFocus = FocusNode();

  void nextEvent() {
    phoneNumber.clear();
    countryCode.clear();
    Get.toNamed(AppRouteName.verifyCode);
  }

  @override
  void onInit() {
phoneNumber=TextEditingController();
countryCode=TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    phoneNumber.dispose();
    countryCode.dispose();
    super.dispose();
  }
}