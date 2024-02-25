import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tyasart/config/routing/app_routes_name.dart';
import '../../../config/themes/styles.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/imgaeasset.dart';
import '../../../core/utilits/widgets/custom_text_field.dart';
import '../../widgets/core_Screen/header_core.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderCore(title: "الرسائل"),
            CustomTextField(
              paddingBottom: 7.2,
              controller: TextEditingController(),
              onTap: () {},
              width: 343.w,
              height: 46.h,
              hintText: "ابحث عن اشخاص",
              suffiWidget:  Padding(
                padding: EdgeInsets.only(left: 7.w),
                child: const Icon(
                  Icons.mic_none_outlined,
                  size: 25.0,
                ),
              ),
              prefixWidget:  Padding(
                padding: EdgeInsets.only(right: 7.w),
                child: const Icon(
                  Icons.search,
                  size: 25.0,
                ),
              ),
            ),
             SizedBox(height: 15.h),
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
                    print("fuck");
                  },
                  child: Container(
                    margin:  EdgeInsets.only(left: 36.w),
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
             SizedBox(height: 18.h),
            Text(
              "جميع الرسائل",
              style: TextStyles.textHeaderStyle.copyWith(fontSize: 18.sp),
              textAlign: TextAlign.center,
            ),
             SizedBox(height: 18.h),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) => index==5?SizedBox(height: 90.h,):GestureDetector(
                  onTap: () {
                   Get.toNamed(AppRouteName.login);
                  },
                  child: Container(
                    margin:  EdgeInsets.only(bottom: 15.h),
                    padding:  EdgeInsets.fromLTRB(18.w, 20.h, 14.w, 15.h),
                    width: 343.h,
                    height: 111.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: AppColor.black.withOpacity(0.05.r),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                  
                        Image.asset(AppImageAsset.imgProfile,width: 63.w,height: 63.h,),
                        SizedBox(width: 10.w,),
                        Column(
                         
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'عمرو اسماعيل',
                              style: TextStyles.font16greenSoft.copyWith(
                                color: AppColor.black,
                              ),
                            ),
                            SizedBox(height: 4.5.h,),
                            Expanded(
                              child: SizedBox(width: 185.w,
                                child: Text(
                                  'نص بواسطه المصمم لجعله نص حقيقي',
                                  
                                  maxLines: 1,
                                  style: TextStyles.font16greenSoft.copyWith(
                                    
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    height: 1.7.h,
                                    overflow: TextOverflow.ellipsis,
                                    
                                  ),
                                ),
                              ),
                            ),
                         
                          ],
                        ),
                        const Expanded(child: SizedBox()),
                        Column(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text("12.50"),
                            SizedBox(height: 15.h,),
                            CircleAvatar(
                              radius: 12.5.r,
                              backgroundColor: AppColor.softGreen,
                              child:  Text('2',style: TextStyles.font16WhiteSemiBold,)
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}