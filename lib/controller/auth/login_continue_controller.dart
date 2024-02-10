import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/routing/app_routes_name.dart';

class LoginContinueController extends GetxController {
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
  static ScrollController continueLogincrollController = ScrollController();

  FocusNode textFieldFocus = FocusNode();

  bool informationPageSelector = true;

  nextEvent() {
    if (informationPageSelector) {
      informationPageSelector = false;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        continueLogincrollController.animateTo(
            continueLogincrollController.position.maxScrollExtent - 42,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn);
        update();
      });
      update();
    } else {
      Get.toNamed(AppRouteName.reservationDestination);
    }

    update();
  }

  @override
  void onInit() {
//
    super.onInit();
  }
}
