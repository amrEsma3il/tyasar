import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tyasart/core/constant/color.dart';
import '../../../config/themes/styles.dart';
import '../../../controller/home/home_controller.dart';
import '../../../controller/reservation/reservation_track_controller.dart';
import '../../../core/constant/imgaeasset.dart';
import '../../../core/utilits/widgets/accompion_info_component.dart';
import '../../../core/utilits/widgets/custom_text_field.dart';
import '../../../data/datasource/remote/reservation/reservation_data_sources.dart';
import '../../../data/datasource/static/home/home_banner_data_sources.dart';
import '../../widgets/home/category_componet.dart';
import '../../widgets/home/dotcontroller.dart';
import '../../widgets/home/slider/customslider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h),
            Row(
              children: [
                Image.asset(
                  AppImageAsset.imgProfile,
                  width: 63.w,
                  height: 63.h,
                ),
                SizedBox(
                  width: 7.w,
                ),
                Text(
                  "إبراهيم المالكي",
                  style: TextStyles.font22Black400Weight
                      .copyWith(letterSpacing: -0.2, fontSize: 16.sp),
                ),
                const Expanded(child: SizedBox()),
                Text(
                  "أهلا وسهلا بك معنا",
                  style: TextStyles.font22Black400Weight
                      .copyWith(letterSpacing: -0.2, fontSize: 16.sp),
                ),
              ],
            ),
            SizedBox(height: 25.h),
            CustomTextField(
              paddingBottom: 7.2,
              controller: TextEditingController(),
              onTap: () {},
              width: 343.w,
              height: 46.h,
              hintText: "ابحث عن مرافق",
              suffiWidget: Padding(
                padding: EdgeInsets.only(left: 7.w),
                child: const Icon(
                  Icons.mic_none_outlined,
                  size: 25.0,
                ),
              ),
              prefixWidget: Padding(
                padding: EdgeInsets.only(right: 7.w),
                child: IconButton(
                  onPressed: () {
                    //
                  },
                  icon: const Icon(
                    Icons.search,
                    size: 25.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 18.h),
            const CustomSliderCurosal(),
            SizedBox(
              height: 5.h,
            ),
            const CustomDotControllerCurosal(),
            SizedBox(
              height: 17.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "الاقسام",
                  style:
                      TextStyles.font16greenSoft.copyWith(color: AppColor.black),
                ),
                Text(
                  "رؤية الكل",
                  style: TextStyles.font13blueSemiBold
                      .copyWith(color: AppColor.black),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(
                    HomeStaticDataSources.categoriesList.length,
                    (index) => CategoryComponent(
                          categoryEntity:
                              HomeStaticDataSources.categoriesList[index],
                        ))
              ],
            ),
            SizedBox(
              height: 33.h,
            ),
            Text(
              "المرافقين المتاحيين الان",
              style: TextStyles.font16greenSoft.copyWith(color: AppColor.black),
            ),
            SizedBox(
              height: 14.h,
            ),
            SizedBox(
              height: 130.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Get.find<HomeController>()
                          .goToReservationAccompionTrackEvent(
                              ReservationDataSources
                                  .allAvailabileAcompions[index]);
                    },
                    child: AccompionInfo(
                      width: 299,
                      trackController: ReservationTrackController(),
                      accompionInfoEntity:
                          ReservationDataSources.allAvailabileAcompions[index],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
