import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tyasart/view/widgets/auth/verify_code/headline_and_info.dart';
import '../../../core/constant/imgaeasset.dart';
import '../../../core/utilits/widgets/screen_shadow_corner_effect.dart';
import '../../widgets/auth/verify_code/arrow_back.dart';
import '../../widgets/auth/verify_code/input_section.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildBody(context));
  }

  Widget buildBody(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          const ScreenCornersShadowEffect(),
          SingleChildScrollView(
            reverse: true,
            child: Column(
              children: [
                SizedBox(
                  height: 75.h,
                ),
                Image.asset(
                  AppImageAsset.verifyCoed,
                  height: 214.h,
                  width: 214.w,
                ),
                const HeadlineAndInfoSection(),
                SizedBox(
                  height: 18.h,
                ),
                const VerifyInputSection(),
              ],
            ),
          ),
          const VerifyArrowBack(),
        ],
      ),
    ));
  }
}
