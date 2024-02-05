import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../config/routing/app_routes_name.dart';

class ReservationLoationController extends GetxController {
  late PageController pageController;

  

  nextEvent() {
     Get.toNamed(AppRouteName.reservationTime);

  }



  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  skipEvent() {
    Get.toNamed(AppRouteName.reservationTime);
  }
}
