import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widget/auth/login/headline.dart';
import '../../widget/auth/login/input_section.dart';
import '../../widget/auth/login/titles_section.dart';
import '../../widget/auth/shadow_component.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
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
        Padding(
          padding: EdgeInsets.only(bottom: 70.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ScreenHeadline(),
              SizedBox(
                height: 70.h,
              ),
              const TitlesSection(),
              SizedBox(
                height: 35.h,
              ),
              const InputSection()
            ],
          ),
        )
      ],
    ));
  }
}
