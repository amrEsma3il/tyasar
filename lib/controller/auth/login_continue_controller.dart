import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/routing/app_routes_name.dart';

class LoginContinueController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController rePassword = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController birthDate = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController weight = TextEditingController();
  TextEditingController typeOfDisability = TextEditingController();
  TextEditingController accompanying = TextEditingController();
  TextEditingController relative = TextEditingController();
  TextEditingController whatNeed = TextEditingController();
  TextEditingController countryCode = TextEditingController();
  ScrollController continueLogincrollController = ScrollController();

  FocusNode textFieldFocus = FocusNode();

  bool informationPageSelector = true;

  nextEvent() {
    if (informationPageSelector) {
      informationPageSelector = false;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        continueLogincrollController.jumpTo(
            continueLogincrollController.position.maxScrollExtent - 48,
           );
        update();
      });
      update();
    } else {
      email.clear();
      password.clear();
      rePassword.clear();
      gender.clear();
      birthDate.clear();
      location.clear();
      weight.clear();
      typeOfDisability.clear();
      accompanying.clear();
      relative.clear();
      whatNeed.clear();
      countryCode.clear();

      Get.toNamed(AppRouteName.reservationDestination);
    }

    update();
  }

  @override
  void onInit() {
//
    super.onInit();
  }

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    password.dispose();
    rePassword.dispose();
    gender.dispose();
    birthDate.dispose();
    location.dispose();
    weight.dispose();
    typeOfDisability.dispose();
    accompanying.dispose();
    relative.dispose();
    whatNeed.dispose();
    countryCode.dispose();
    continueLogincrollController.dispose();

    super.dispose();
  }
}
