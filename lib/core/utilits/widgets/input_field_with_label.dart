


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/themes/styles.dart';
import 'custom_text_field.dart';

class InputFieldWithLabel extends StatelessWidget {
final int? maxLines;
 final String label,hint;
 final double height,width;
 final Widget ? suffix,prefix;
 final double? paddingBottom;
   const InputFieldWithLabel({
    this.maxLines=1,
    super.key, required this.label, required this.hint,  this.height=46,this.width=343, this.prefix ,this.suffix, this.paddingBottom=9
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
            paddingBottom: paddingBottom,
            maxLines: maxLines,
            controller: TextEditingController(),
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



