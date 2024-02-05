



import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/themes/styles.dart';
import '../../../core/constant/imgaeasset.dart';

class PageViewComponent extends StatelessWidget {


  const PageViewComponent({
    Key? key,
 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
                  padding: EdgeInsets.only(right: 5.w),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 5,),
                        // const Icon(Icons.flag_outlined,size: 30,),
                        SvgPicture.asset(AppImageAsset.egypt),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            '+20',
                            style: TextStyles.font13GrayRegular
                                .copyWith(fontSize: 22),
                          ),
                        ),
                     
                           const SizedBox(width: 4,),
                      ])
                );
     }
}
