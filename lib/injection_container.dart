import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tyasart/controller/auth/verfiy_code_controller.dart';

import 'controller/auth/login_continue_controller.dart';
import 'controller/auth/login_controller.dart';
import 'controller/onboarding/onboarding_controller.dart';
import 'controller/reservation/reservation_location_controller.dart';
import 'controller/reservation/reservation_time_controller.dart';





class AppBindings extends Bindings{
  @override
  Future<void> dependencies() async {

//conreollers
    Get.lazyPut(() => OnBoardingController(),fenix:true );
    Get.lazyPut(() => LoginController(),fenix:true );
     Get.lazyPut(() => VerifyController(),fenix:true );
     Get.lazyPut(() => LoginContinueController(),fenix:true );
      Get.lazyPut(() => ReservationLoationController(),fenix:true ); 
        Get.lazyPut(() => ReservationTimeController(),fenix:true ); 


    //resources
    final sharedPreferences = await SharedPreferences.getInstance();

    Get.lazyPut<SharedPreferences>(() => sharedPreferences,fenix: true);
  
    
  }
  
}