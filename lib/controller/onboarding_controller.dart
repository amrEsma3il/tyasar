import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../config/routing/app_routes_name.dart';
import '../data/datasource/static/static.dart';

class OnBoardingController extends GetxController {
  late PageController pageController;

  int currentPage = 0;
  String textButton = 'التالي';

  nextEvent() {
    currentPage++;

    if (currentPage > onBoardingList.length - 1) {

      Get.toNamed(AppRouteName.login);
    } else {
      textButton = (currentPage == onBoardingList.length - 1 )? "ابدا الان" :"التالي";
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 150), curve: Curves.easeInOut);
    }
    update();
  }

  onPageChangedEvent(int index) {
    currentPage = index;

    if (currentPage == onBoardingList.length - 1) {
      textButton = "ابدا الان";
    } else {
      textButton = "التالي";
    }
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  skipEvent() {
    Get.toNamed(AppRouteName.login);
  }
}
