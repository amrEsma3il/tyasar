import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tyasart/config/themes/styles.dart';
import '../../../controller/notification/notification_controller.dart';
import '../../../core/constant/color.dart';
import '../../widgets/core_Screen/header_core.dart';
import '../../widgets/notification/notification_component.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
            padding: EdgeInsets.symmetric(
      horizontal: 12.h,
            ),
            child: SizedBox(
      height: Get.height,
      child: Column(
        children: [
          const HeaderCore(
            title: 'الإشعارات',
          ),
          Expanded(
              child: GetBuilder<NotificationContoller>(builder: (controller) {
            return ListView.builder(
              itemCount: controller.notificationList.length + 1,
              itemBuilder: (context, index) => index ==
                      controller.notificationList.length
                  ? (controller.notificationList.isEmpty
                      ? const SizedBox()
                      : GestureDetector(
                          onTap: () {
                            Get.find<NotificationContoller>()
                                .deleteAllNotifications();
                          },
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.delete_forever_outlined,
                                  color: AppColor.red,
                                  size: 17,
                                ),
                                Text(
                                  "مسح جميع الإشعارات",
                                  style: TextStyles.font12bluishGray500
                                      .copyWith(color: AppColor.red),
                                )
                              ]),
                        ))
                  : NotificationComponent(
                      notificationEntity: controller.notificationList[index]),
            );
          })),
          SizedBox(
            height: 110.h,
          )
        ],
      ),
            ),
          ),
    );
  }
}
