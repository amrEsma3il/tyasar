import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

Theme datePaker(BuildContext context,Widget? child)=>Theme(
        data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.light(
            primary:AppColor.primaryColor,
      
          ),
        
        ),
        child: child!,
      );