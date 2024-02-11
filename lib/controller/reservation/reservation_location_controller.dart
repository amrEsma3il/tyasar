import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../config/routing/app_routes_name.dart';

class ReservationLoationController extends GetxController {
  late PageController pageController;
  TextEditingController sourceLocationController = TextEditingController();
  TextEditingController destinationLocationController = TextEditingController();

  nextEvent() {
    sourceLocationController.clear();
    destinationLocationController.clear();
    Get.toNamed(AppRouteName.reservationTime);
  }

  skipEvent() {
    Get.toNamed(AppRouteName.reservationTime);
    Get.delete<ReservationLoationController>();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  void dispose() {
    pageController.dispose();
    sourceLocationController.dispose();
    destinationLocationController.dispose();
    super.dispose();
  }
}
