
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../config/themes/styles.dart';
import '../../../controller/notification/notification_controller.dart';
import '../../../core/constant/color.dart';
import '../../../data/model/notification/notification_model.dart';

class NotificationComponent extends StatelessWidget {
  final NotificationModel notificationEntity;
  const NotificationComponent({
    super.key,required this.notificationEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      padding: EdgeInsets.fromLTRB(18.w, 20.h, 14.w, 15.h),
      width: 343.w,
      height: 111.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColor.black.withOpacity(0.05)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(notificationEntity.title,style: TextStyles.font16greenSoft.copyWith(color: AppColor.black,height: 1.3),),
               Text(notificationEntity.body,style: TextStyles.font16greenSoft.copyWith(fontWeight: FontWeight.w500,fontSize: 14.sp)),
               Row(
                children: [
                  const Icon(Icons.calendar_month),
                  const Text(' تاريخ الطلب : '),
                  Text(notificationEntity.date)
                ],
              )
            ],
          ),
          CircleAvatar(
              radius: 17.r,
              backgroundColor: AppColor.white,
              child: IconButton(
                  onPressed: () {

                    Get.find<NotificationContoller>().deleteNotification(notificationEntity);
                  },
                  icon: const Icon(
                    Icons.delete_forever_outlined,
                    color: AppColor.black,
                    size: 22,
                  )))
        ],
      ),
    );
  }
}
