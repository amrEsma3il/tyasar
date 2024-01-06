
import 'package:get/get.dart';
import 'package:tyasart/view/screen/auth/login_continue.dart';

import '../../view/screen/auth/login.dart';
import '../../view/screen/onboarding.dart';
import 'app_routes_name.dart';


List<GetPage<dynamic>>? routes = [

  GetPage(
      page: () => const OnBoarding(),
      name: AppRouteName.onBoarding,),
  GetPage(
      page: () => const Login(),
      name: AppRouteName.login,
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 350)),
  GetPage(
      page: () => const LoginContinue(),
      name: AppRouteName.loginContinue,
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 350)),
];

