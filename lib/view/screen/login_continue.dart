import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tyasart/controller/auth/login_continue_controller.dart';
import 'package:tyasart/view/widgets/auth/login_continue/main_information/input_section_main_info.dart';
import 'package:tyasart/view/widgets/auth/login_continue/main_information/stipper_main_info.dart';
import '../widgets/auth/headline.dart';
import '../widgets/auth/login_continue/stipper_headline.dart';
import '../widgets/auth/login_continue/sub_information/input_section_sub_info.dart';
import '../widgets/auth/login_continue/sub_information/stipper_sub_info.dart';
import '../widgets/auth/shadow_component.dart';

class LoginContinue extends StatelessWidget {
  const LoginContinue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
                top: 5.h,
                right: 5.w,
                child: const ShadowComponent(
                  x: 4,
                  y: 2,
                )),
            Positioned(
                bottom: 90.h,
                right: -10.w,
                child: const ShadowComponent(
                  y: 25,
                  x: 0,
                )),
            Positioned(
                bottom: 2.h,
                left: -8.w,
                child: const ShadowComponent(
                  x: 1,
                  y: 1,
                )),
            SingleChildScrollView(
              reverse: true,
              child: GetBuilder<LoginContinueController>(
                  builder: (loginContinueController) {
                //to improve readbility
                bool infoSelector =
                    loginContinueController.informationPageSelector;
                return Column(children: [
                  SizedBox(
                    height: infoSelector ? 57.h : 33.h,
                  ),
                  ScreenHeadline(
                    headLine: "إكمال تسجيل الدخول",
                    paddingBottom: infoSelector ? 15 : 10,
                  ),
                  infoSelector
                      ? const StipperMainInfo()
                      : const StipperSubInfo(),
                  const SizedBox(
                    height: 6,
                  ),
                  const StipperHeadline(),
                  const SizedBox(
                    height: 24,
                  ),
                  loginContinueController.informationPageSelector
                      ? const MainInformation()
                      : const SubInformation()
                ]);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
