



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tyasart/view/widgets/auth/verify_code/headline_and_info.dart';
import '../../../core/constant/imgaeasset.dart';
import '../../../core/utilits/widgets/skip_button.dart';
import '../../widgets/auth/shadow_component.dart';
import '../../widgets/auth/verify_code/arrow_back.dart';
import '../../widgets/auth/verify_code/input_section.dart';


class ReservationDestination extends StatelessWidget {
  const ReservationDestination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildBody(context));
  }

  Widget buildBody(BuildContext context) {
    return SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
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
                  )),
             SingleChildScrollView(
          reverse: true,
                child: Column(
        
                  children: [
                    const SizedBox(height: 40,),
                    Image.asset(
                      AppImageAsset.reservationLocation,
                      height: 214.h,
                      width: 214.w,
                    ),
                    const HeadlineAndInfoSection(),
                    SizedBox(
                      height: 18.h,
                    ),
                    const InputSection(),
                          

                  
                  ],
                ),
              ),

                    SkipButton(top: -3,left: 0,)
            ],
          ),
        ));
  }
}


