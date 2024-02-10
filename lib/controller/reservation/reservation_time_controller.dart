import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../config/routing/app_routes_name.dart';
import '../../view/widgets/reservation/reservation_time_and_checkout/reservation_time_bottomsheet_component.dart';

class ReservationTimeController extends GetxController  with GetSingleTickerProviderStateMixin{
  int dayIndex = -1, timeFromIndex = -1, timeToIndex = -1, paymentMethod = -1;
  static ScrollController reservationTimeScrollController = ScrollController();
   late AnimationController animationController;
  late Animation<double> animation;

  selectDay(int index) {
    dayIndex = index;

    update();
  }

  selectTimeFrom(int index) {
    timeFromIndex = index;
    update();
  }

  selectTimeTo(int index) {
    timeToIndex = index;
    update();
  }

  selecPaymentMethod(int index) {
    paymentMethod = index;
    update();
  }

  reservationEvent(BuildContext context) {

         animationController.forward();

     showModalBottomSheet(
      
                          context: context,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(48.r),
                                  topLeft: Radius.circular(48.r))),
                          builder: (context) =>
                              const ReservationBottomSheetComponent(),
                        );
                     
                          update();


  }


   followEvent() {
    Get.offNamed(AppRouteName.companionTrack);
  }

  backEvent() {
    Get.back();
  }

  @override
  void onInit() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      reservationTimeScrollController
          .jumpTo(reservationTimeScrollController.position.maxScrollExtent);
      reservationTimeScrollController.animateTo(
          reservationTimeScrollController.position.minScrollExtent,
          curve: Curves.easeIn,
          duration: const Duration(milliseconds: 550));
          //
        

    animationController = AnimationController(
      duration: const Duration(milliseconds: 900), 
      vsync: this,
    );

    final curvedAnimation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut, 
    );

    animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);
      update();
    });

    super.onInit();
  }

  @override
  void dispose() {
    animationController.dispose();
    reservationTimeScrollController.dispose();
    super.dispose();
  }
}
