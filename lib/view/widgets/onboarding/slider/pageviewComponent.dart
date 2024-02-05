// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/themes/styles.dart';
import '../../../../data/model/onboarding/onboardingmodel.dart';



class PageViewComponent extends StatelessWidget {

  final OnBoardingModel onboardingComponent;
  const PageViewComponent({
    Key? key,
    required this.onboardingComponent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              onboardingComponent.image!,
              width:375.w ,
              height: 475.h,
              fit: BoxFit.fill,
            ),
             Expanded(child: SizedBox(height: 34.h)),
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
              width: 295.w,
              height: 36.h,
              child: Text(onboardingComponent.title!,
              style:TextStyles.font22Black400Weight
              ),
            ),
             SizedBox(height: 10.h),
      
             Container(
                alignment: Alignment.center,
              width: 295.w,
              height: 50.h,
              child: Text(
                onboardingComponent.body!,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14,fontWeight:FontWeight.w400,color:Color(0xFF535353) ),
              ),
            ),
          ],)
          ],
        );
  }
}
