

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/routing/app_routes_name.dart';

class LoginController  extends  GetxController{

TextEditingController? phoneNumber;

nextEvent(){


  Get.toNamed(AppRouteName.loginContinue);
}

@override
  void onInit() {
    phoneNumber=TextEditingController();
    super.onInit();
  }
  
}