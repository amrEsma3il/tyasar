
import 'package:get/get.dart';


import '../../view/screen/main_screen.dart';
import '../../view/screen/reservation/companion_track.dart';
import '../../view/screen/reservation/reservation_time_and_checkout.dart';
import '../../view/screen/reservation/reservayion_destination.dart';
import '../../view/screen/auth/login.dart';
import '../../view/screen/auth/verify_code.dart';
import '../../view/screen/auth/login_continue.dart';
import '../../view/screen/onboarding/onboarding.dart';
import 'app_routes_name.dart';


List<GetPage<dynamic>>? routes = [
          GetPage(
      page: () => const MainScreen(),
      name: AppRouteName.mainScreen,
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 350)),

  GetPage(
      page: () => const OnBoarding(),
      name: AppRouteName.onBoarding,),
  GetPage(
      page: () => const Login(),
      name: AppRouteName.login,
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 350)),
        GetPage(
      page: () => const MainScreen(),
      name: AppRouteName.mainScreen,
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 350)),
  GetPage(
      page: () => const VerifyCode(),
      name: AppRouteName.verifyCode,
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 350)),
        GetPage(
      page: () => const LoginContinue(),
      name: AppRouteName.loginContinue,
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 350)),
          GetPage(
      page: () => const ReservationDestination(),
      name: AppRouteName.reservationDestination,
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 350)),
          GetPage(
      page: () => const ReservationTime(),
      name: AppRouteName.reservationTime,
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 350)),
               GetPage(
      page: () => const CompanionTrack(),
      name: AppRouteName.companionTrack,
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 450)),
];

//LoginContinue