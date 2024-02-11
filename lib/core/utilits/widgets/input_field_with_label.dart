


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/themes/styles.dart';
import 'custom_text_field.dart';

class InputFieldWithLabel extends StatelessWidget {
final int? maxLines;
final TextEditingController controller;
 final String label,hint;
 final double height,width;
 final Widget ? suffix,prefix;
 final double? paddingBottom,paddingTop;
   const InputFieldWithLabel({
    this.maxLines=1,
    super.key, required this.label, required this.hint,  this.height=46,this.width=343, this.prefix ,this.suffix, this.paddingBottom=9, this.paddingTop=0, required this.controller
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
         label,
          style: TextStyles.font16WhiteSemiBold.copyWith(color: Colors.black),
        ),
         SizedBox(
          height: 4.h,
                 ),
        Padding(
          padding:  EdgeInsets.only(bottom: 13.h),
          child: CustomTextField(

            
            prefixWidget: prefix,
            paddingBottom: paddingBottom!.h,
            paddingTop: paddingTop!.h,
            maxLines: maxLines,
            controller:controller,
            onTap: () {},
            suffiWidget: suffix,
            width: width.w,
            height: height.h,
            hintText:hint,
          ),
        ),
      ],
    );
  }
}



