import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/themes/styles.dart';
import '../../../data/model/home/catecories_model.dart';

class CategoryComponent extends StatelessWidget {
  final CategoryModel categoryEntity;
  const CategoryComponent({
    super.key, required this.categoryEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(alignment: Alignment.center,
      width: 
    105.88.w,
    height: 39.96.h,
    decoration: BoxDecoration(
      color: categoryEntity.color!,
      borderRadius: BorderRadius.circular(20.96.r)
    ),
    child: Text(categoryEntity.catName!,style: TextStyles.font16WhiteSemiBold,),
    );
  }
}
   