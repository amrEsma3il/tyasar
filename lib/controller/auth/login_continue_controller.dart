import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/routing/app_routes_name.dart';

class LoginContinueController extends GetxController {
  LayerLink? linkLayer;
  OverlayEntry? entry;

  static TextEditingController name = TextEditingController();
  static TextEditingController email = TextEditingController();
  static TextEditingController password = TextEditingController();
  static TextEditingController rePassword = TextEditingController();
  static TextEditingController gender = TextEditingController();
  static TextEditingController birthDate = TextEditingController();
  static TextEditingController location = TextEditingController();
  static TextEditingController weight = TextEditingController();
  static TextEditingController typeOfDisability = TextEditingController();
  static TextEditingController accompanying = TextEditingController();
  static TextEditingController relative = TextEditingController();
  static TextEditingController whatNeed = TextEditingController();

  FocusNode textFieldFocus = FocusNode();

  bool informationPageSelector = true;

  nextEvent() {
   

    if (informationPageSelector) {
      informationPageSelector=false;
    
    }
    else{  Get.toNamed(AppRouteName.reservationDestination);}

    update();
  }

  @override
  void onInit() {
    linkLayer = LayerLink();
    linkLayer = LayerLink();
    super.onInit();
  }
}
