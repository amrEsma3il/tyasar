import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utilits/widgets/screen_shadow_corner_effect.dart';
import '../../widgets/auth/headline.dart';
import '../../widgets/auth/login/input_section.dart';
import '../../widgets/auth/login/titles_section.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            const ScreenCornersShadowEffect(),
            SingleChildScrollView(
              reverse: true,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 110.h,
                  ),
                  ScreenHeadline(
                    headLine: "اهلا وسهلا بك معنا",
                    paddingBottom: 30.h,
                  ),
                  SizedBox(
                    height: 70.h,
                  ),
                  const LoginTitlesSection(),
                  SizedBox(
                    height: 35.h,
                  ),
                  const LoginInputSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
