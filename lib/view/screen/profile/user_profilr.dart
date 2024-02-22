import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tyasart/core/constant/imgaeasset.dart';
import '../../../config/themes/styles.dart';
import '../../../core/constant/color.dart';
import '../../../data/datasource/static/profile/profile_list_tile_const_data_source.dart';
import '../../widgets/core_Screen/header_core.dart';
import '../../widgets/profile/list_tile_component.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
        ),
        child: Column(children: [
          const HeaderCore(title: "الملف الشخصي")
      ,
          Image.asset(
           AppImageAsset.imgProfile,
            width: 128.w,
            height: 128.h,
          ),
          SizedBox(
            height: 7.h,
          ),
          Text(
            'إبراهيم المالكي',
            style: TextStyles.font22Black400Weight.copyWith(fontSize: 16.sp),
          ),
          SizedBox(
            height: 40.h,
          ),
          Column(
            children: [
              ...List.generate(
                profileListTile.length,
                (index) => ProfileListTileComponent(
                    index: index, listTileEntity: profileListTile[index]),
              ),
              SizedBox(
                height: 85.h,
              ),
              Row(
                children: [
                  Container(
                    width: 37.w,
                    height: 37.h,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: AppColor.softGray),
                    child: Image.asset(
                      AppImageAsset.logOut,
                      width: 23.w,
                      height: 23.h,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'تسجيل خروج',
                    style: TextStyles.font22Black400Weight
                        .copyWith(fontSize: 16.sp),
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
