
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/routing/app_routes_name.dart';


class LoginController  extends  GetxController{



 LayerLink?  linkLayer;
OverlayEntry? entry;

static TextEditingController phoneNumber=TextEditingController();

FocusNode textFieldFocus=FocusNode();

nextEvent(){


  Get.toNamed(AppRouteName.loginContinue);
}







@override
  void onInit() {



  linkLayer=LayerLink();
    linkLayer=LayerLink();
    super.onInit();
  }
  
}