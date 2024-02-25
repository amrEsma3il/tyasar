// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tyasart/config/themes/styles.dart';
import '../../../../core/constant/color.dart';
import '../../../../data/model/home/home_banner_model.dart';



class CurosalComponent extends StatelessWidget {

  final HomeBannerModel homeBannerEntity;
  const CurosalComponent({
    Key? key,
    required this.homeBannerEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
          width: 343.w,
          height: 139.h,
          padding: EdgeInsets.fromLTRB(10.w, 17.h, 20.w, 20.h),
          margin:  EdgeInsets.symmetric(horizontal: 5.w),
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(10
            .r),
            color: AppColor.softPink
          ),
          child:   Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(child: SizedBox()),
              Text(homeBannerEntity.title!,style: TextStyles.font22Black400Weight.copyWith(fontSize: 26.sp,letterSpacing: -0.2),),
              SizedBox(height: 10.h,),
                        Text(homeBannerEntity.body!,style: TextStyles.font22Black400Weight.copyWith(fontSize: 14.sp,letterSpacing: -0.2,height: 0.9),),
                                        const Expanded(child: SizedBox()),

        
           
              ],
            ),

            Image.asset(homeBannerEntity.image!,width: 153.1.w,height: 93.h,)
      ],
    ) );
       
    
   
  }
}
