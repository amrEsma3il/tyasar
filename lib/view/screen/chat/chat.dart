import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tyasart/core/constant/imgaeasset.dart';
import 'package:tyasart/core/utilits/widgets/line_divider.dart';
import '../../../config/themes/styles.dart';
import '../../../controller/chat/chat_inbox_controller.dart';
import '../../../core/constant/color.dart';
import '../../../core/utilits/widgets/custom_text_field.dart';
import '../../../data/model/chat/message_chat_model.dart';
import '../../widgets/chat/chat_inbox/chat_message_component.dart';
import '../../widgets/core_Screen/header_core.dart';

class Chat extends StatelessWidget {
  final String username, imgProfile;
  const Chat({super.key, required this.username, required this.imgProfile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderCore(title: "الرسائل"),
            Row(
              children: [
                Image.asset(
                  imgProfile,
                  width: 63.w,
                  height: 63.h,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  username,
                  style: TextStyles.font16greenSoft
                      .copyWith(color: AppColor.black, fontSize: 18.sp),
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            DividerLine(
              width: Get.width,
              height: 1.h,
            ),
            SizedBox(
              height: 30.h,
            ),
            Expanded(
              child: GetBuilder<ChatInboxContoller>(builder: (controller) {
                return ListView.builder(
                  itemCount: controller.chatList.length,
                  itemBuilder: (context, index) {
                    return MessageChatComponent(
                      messageEntity: controller.chatList[index],
                    );
                  },
                );
              }),
            ),
            CustomTextField(
              focusNode: Get.find<ChatInboxContoller>().focusNode,
              paddingBottom: 7.2,
              controller: Get.find<ChatInboxContoller>().sendMessageController!,
              onTap: () {},
              width: 343.w,
              height: 46.h,
              hintText: "اكتب رسالة",
              suffiWidget: Padding(
                padding: EdgeInsets.only(left: 7.w),
                child: IconButton(
                    onPressed: () {
                      Get.find<ChatInboxContoller>().sendMessage(MessageChatModel(
                          username: username,
                          id: Random().nextInt(100),
                          messageContent: Get.find<ChatInboxContoller>()
                              .sendMessageController!
                              .text,
                          userImageProfile: AppImageAsset.imgProfile,
                          messageReceiveTime:
                              "${DateTime.now().minute}:${DateTime.now().second}"));
                    },
                    icon: const Icon(
                      Icons.send,
                      size: 25.0,
                      color: AppColor.moderateCyan,
                    )),
              ),
            ),
            SizedBox(
              height: 40.h,
            )
          ],
        ),
      )),
    );
  }
}
