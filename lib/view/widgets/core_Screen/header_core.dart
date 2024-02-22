import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/utilits/widgets/line_divider.dart';
import '../../../core/utilits/widgets/screen_header.dart';

class HeaderCore extends StatelessWidget {
  final String title;
  const HeaderCore({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return     Column(
            children: [
              SizedBox(
                height: 25.h,
              ),
               ScreenHeader(title:title),
                      
                      
              SizedBox(
                height: 40.h,
              ),
              DividerLine(width: Get.width,height: 1,),
              SizedBox(height: 17.h,),
            ],
          );
  }
}