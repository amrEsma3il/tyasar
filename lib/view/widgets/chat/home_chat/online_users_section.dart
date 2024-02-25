
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/themes/styles.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/constant/imgaeasset.dart';

class OnlineUsers extends StatelessWidget {
  const OnlineUsers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return 
       Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  " المتاحيين الان",
                  style: TextStyles.textHeaderStyle.copyWith(fontSize: 18.sp,),
                  textAlign: TextAlign.center,
                ),
                 SizedBox(height: 18.h),
                SizedBox(
                  height: 50.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                     
                      },
                      child: Container(
                        margin:  EdgeInsets.only(left: 25.w),
                        child: Stack(
                          children: [
                            Image.asset(
                              AppImageAsset.imgProfile,
                              width: 48.w,
                              height: 48.h,
                            ),
                            Positioned(
                              top: 0.4,
                              right: 1.0,
                              child: CircleAvatar(
                                radius: 7.r,
                                backgroundColor: AppColor.activeUser,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ); }
}
