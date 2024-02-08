import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tyasart/controller/auth/login_continue_controller.dart';
import 'package:tyasart/view/widgets/auth/login_continue/main_information/input_section_main_info.dart';
import 'package:tyasart/view/widgets/auth/login_continue/main_information/stipper_main_info.dart';
import '../../../core/utilits/widgets/screen_shadow_corner_effect.dart';
import '../../widgets/auth/headline.dart';
import '../../widgets/auth/login_continue/stipper_headline.dart';
import '../../widgets/auth/login_continue/sub_information/input_section_sub_info.dart';
import '../../widgets/auth/login_continue/sub_information/stipper_sub_info.dart';

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
            const ScreenCornersShadowEffect(),
            SingleChildScrollView(
              reverse: true,
              child: GetBuilder<LoginContinueController>(
                  builder: (loginContinueController) {
                //to improve readbility
                bool infoSelector =
                    loginContinueController.informationPageSelector;
                return Column(children: [
                  SizedBox(
                    height: 50.h
                  ),
                  ScreenHeadline(
                    headLine: "إكمال تسجيل الدخول",
                    paddingBottom:25.h,
                  ),
                  infoSelector
                      ? const LoginContinueStipperMainInfo()
                      : const LoginContinueStipperSubInfo(),
                   SizedBox(
                    height: 6.h,
                  ),
                  const LoginContinueStipperHeadline(),
                   SizedBox(
                    height: 24.h,
                  ),
                  loginContinueController.informationPageSelector
                      ? const LoginContinueMainInformation()
                      : const LoginContinueSubInformation()
                ]);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
