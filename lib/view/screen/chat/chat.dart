import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/themes/styles.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/imgaeasset.dart';
import '../../../core/utilits/widgets/custom_text_field.dart';
import '../../widgets/core_Screen/header_core.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
      ),
      child:  Column(crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
       const  HeaderCore(title: "الرسائل"),
           CustomTextField(
                    paddingBottom: 7.2.h,
                
                    controller:TextEditingController(),
                    onTap: () {},
                    width: 343.w,
                    height: 46.h,
                    hintText: "ابحث عن اشخاص",
                    suffiWidget:Padding(
                      padding: EdgeInsets.only(left: 7.w),
                      child: const Icon(
                        Icons.mic_none_outlined,
                        size: 25,
                      ),
                    ) ,
                    prefixWidget: Padding(
                      padding: EdgeInsets.only(right: 7.w),
                      child: const Icon(
                        Icons.search,
                        size: 25,
                      ),
                    )),
                SizedBox(
                  height:15 .h,
                ),

                Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
      
        Text(" المتاحيين الان",
              style: TextStyles.textHeaderStyle.copyWith(fontSize: 17.sp),
              textAlign: TextAlign.center),
         SizedBox(
          height: 15.h,
                 ),
        Padding(
          padding:  EdgeInsets.only(bottom: 13.h),
          child: Expanded(
            child: SizedBox(
              height: 50.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder:(context,index)=> Container(
                  margin: EdgeInsets.symmetric(horizontal:6.w),
                  child: Stack(children: [ Image.asset(
                   AppImageAsset.imgProfile,
                    width: 48.w,
                    height: 48.h,
                  ),Positioned(top: 0.4.h,right: 1.w,
                    child: CircleAvatar(radius: 7.r,backgroundColor: AppColor.activeUser,))],),
                ),
              ),
            ),
          ),
        ),
      ],
    )
      ],),
    ));
  }
}
