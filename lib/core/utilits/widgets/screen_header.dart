
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tyasart/core/constant/color.dart';

import '../../../config/themes/styles.dart';


class ScreenHeader extends StatelessWidget {
  final String? title;
  final String? icon;
  final Color? headerColor;
  const ScreenHeader({
    this.headerColor,
    this.icon,
    this.title,
    super.key,
  });
//
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 20.h),
      child: Row(
        
        mainAxisAlignment:MainAxisAlignment.start ,
        children: [
          InkWell(
              onTap: () {Get.back();},
              child: SvgPicture.asset(icon!, color: headerColor,)),
    
     Expanded(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: Container(
              alignment: Alignment.center,
            ),
          ),
          Container(
            child:   Text(title!,
                  style: TextStyles.font22Black400Weight.copyWith(
                    color:headerColor,
                      height: 0.7,
                      letterSpacing: -2,
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center),
          ),
        ],
      ),
    ),
          // Expanded(
          //   child: Align(
          //     alignment: Alignment.center,
          //     child: 
              
            
          //   ),
          // )
        ],
      ),
    );
  }
}
