import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/auth/headline.dart';
import '../../widgets/auth/login/input_section.dart';
import '../../widgets/auth/login/titles_section.dart';
import '../../widgets/auth/shadow_component.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 110,),
                  const ScreenHeadline(headLine: "اهلا وسهلا بك معنا",paddingBottom: 30,),
                  SizedBox(
                    height: 70.h,
                  ),
                  const TitlesSection(),
                  SizedBox(
                    height: 35.h,
                  ),
                  const InputSection(),
                  // KeyboardPadding(paddingContext: context),
                ],
              ),
            ),
            //  const CountryItem(),
          ],
        ),
      ),
    ));
  }
}

// class CountryItem extends StatelessWidget {
//   const CountryItem({
//     super.key,
//   });

  // @override
  // Widget build(BuildContext context) {
  //   return Visibility(
  //    visible: false,
  //     child: Positioned(
  //       child: CompositedTransformFollower(
  //        offset: Offset(10, 60),
  //    link: LoginController.linkLayer,
  //         child: Container(width: 100,
    
          
  //         color: Color.fromARGB(255, 255, 255, 255),
  //                  height: 200,
  //                    child: 
  //                    ListView.builder(
  //                      itemCount: 10, itemBuilder: (context, index) =>  Container(
  //                  padding: EdgeInsets.only(right: 5),
                  
  //                  width: 107.w,
  //                  height: 59.h,
                
  //                  child: Row(
  //                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                      children: [
  //                        const SizedBox(width: 4,),
  //                        // const Icon(Icons.flag_outlined,size: 30,),
  //                        SvgPicture.asset(AppImageAsset.egypt),
  //                        Padding(
  //                          padding: const EdgeInsets.only(bottom: 5,right: 3),
  //                          child: Text(
  //                            '+20',
  //                            style: TextStyles.font13GrayRegular
  //                                .copyWith(fontSize: 22),
  //                          ),
  //                        ),
  //                        // const Icon(
  //                        //   Icons.arrow_drop_down_rounded,
  //                        //   size: 30,
  //                        // ),
  //                           const SizedBox(width: 8,),
  //                      ]),
  //                ),
  //                      dragStartBehavior: DragStartBehavior.start,
                      
  //                    ),
  //                  ),
  //       ),
  //     ),
  //   );
  // }
// }
