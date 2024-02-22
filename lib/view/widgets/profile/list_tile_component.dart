import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../config/themes/styles.dart';
import '../../../core/constant/color.dart';
import '../../../core/utilits/widgets/line_divider.dart';

class ProfileListTileComponent extends StatelessWidget {
final Map<String,String>  listTileEntity;
final int index;
  const ProfileListTileComponent({
    super.key, required this.listTileEntity, required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 7.h),
      child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 37.w,
                      height: 37.h,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColor.softGray),
                      child: Image.asset(
                       listTileEntity['imageName']!,
                        width: 23.w,
                        height: 23.h,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                     Text(listTileEntity['title']!,style: TextStyles.font22Black400Weight.copyWith(fontSize: 16.sp),),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.keyboard_arrow_left_sharp,
                      size: 30.h,
                    )),
              ]),
          SizedBox(height: 7.h,),DividerLine(height: 1,width:  index==2? 0:Get.width,)
        ],
      ),
    );
  }
}
