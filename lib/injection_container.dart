import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'controller/onboarding_controller.dart';




class AppBindings extends Bindings{
  @override
  Future<void> dependencies() async {

//conreollers
    Get.lazyPut(() => OnBoardingController(),fenix:true );
    Get.lazyPut(() => OnBoardingController(),fenix:true );



    //resources
    final sharedPreferences = await SharedPreferences.getInstance();

    Get.lazyPut<SharedPreferences>(() => sharedPreferences,fenix: true);
  
    
  }
  
}