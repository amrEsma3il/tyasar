import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controller/main_scren_controller.dart';
import '../../core/constant/color.dart';
import '../../data/datasource/static/bottom_nav_bar_static_datasource.dart';

class BottomNavBarComponent extends StatelessWidget {
  const BottomNavBarComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0.h,
      right: 0.w,
      left: 0.w,
      child: Container(
        width: Get.width,
        height: 93.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: AppColor.black,
                offset: Offset(0, 7.h),
                blurRadius: 5.6.h,
                spreadRadius: 1.6.h),
          ],
          color: AppColor.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...List.generate(
                navBarIconDataSource.length,
                (index) => index == 2
                    ? Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 68.05.w,
                            height: 68.05.h,
                            decoration:  BoxDecoration(
                                boxShadow: [
            BoxShadow(
                color: AppColor.darkCyan.withOpacity(0.5),
                offset: Offset(0, 8.h),
                blurRadius: 32.r,
              ),
               BoxShadow(
                color: AppColor.moderateCyan.withOpacity(0.5),
                offset: Offset(0, 8.h),
                blurRadius: 32.h,
              ),
          ],
                                color: AppColor.darkCyan,
                                shape: BoxShape.circle),
                          ),
                          CircleAvatar(
                            backgroundColor: AppColor.white,
                            radius: 12.5.r,
                              child: Icon(
                                Icons.add,
                                color: AppColor.darkCyan,
                                size: 18.h,
                              ))
                        ],
                      )
                    : GestureDetector(
                      onTap: () {
                        Get.find<MainScreenController>().changeBottomNavBarItemEvent(index==4||index==3?index-1:index);
                      },
                      child: Image.asset(
                          navBarIconDataSource[index],
                          width: 24.w,
                          height: 24.h,
                        ),
                    ))
          ],
        ),
      ),
    );
  }
}
