import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'shadow_component.dart';

class ShadowCollection extends StatelessWidget {
  const ShadowCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
              ))
      ],
    );
  }
}