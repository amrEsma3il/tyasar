import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../config/routing/app_routes_name.dart';

class ReservationTimeController extends GetxController {
  late PageController pageController;

  int dayIndex=-1,timeFromIndex=-1,timeToIndex=-1,paymentMethod=-1;

  
  selectDay(int index){
    dayIndex=index;

update();
  }
  selectTimeFrom(int index){
    timeFromIndex=index;
update();


  }
  selectTimeTo(int index){
    timeToIndex=index;
update();


  }

   selecPaymentMethod(int index){
    paymentMethod=index;
update();


  }

  reservationEvent() {
     Get.toNamed(AppRouteName.companionTrack);

  }

  

  
  backEvent() {
    Get.back();
  }



  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }


  @override
  void dispose() {
   pageController.dispose();
    super.dispose();
  }
}
