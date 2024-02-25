import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../controller/chat/home_chat_controller.dart';
import '../../../core/utilits/widgets/custom_text_field.dart';
import '../../widgets/chat/home_chat/all_chats_section.dart';
import '../../widgets/chat/home_chat/online_users_section.dart';
import '../../widgets/core_Screen/header_core.dart';

class ChatHome extends StatelessWidget {
  const ChatHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final chatController = Get.find<ChatHomeController>();
    return SizedBox(
      height: Get.height,
      child: Stack(
        children: [
          SingleChildScrollView(
            controller: Get.find<ChatHomeController>().homeChatScrollController,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeaderCore(title: "الرسائل"),
                  CustomTextField(
                    paddingBottom: 7.2,
                    controller: chatController.searchOnUsers!,
                    onTap: () {},
                    width: 343.w,
                    height: 46.h,
                    hintText: "ابحث عن اشخاص",
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
                          chatController.searchOnUsersEvent(
                              chatController.searchOnUsers!.text);
                      
                        },
                        icon: const Icon(
                          Icons.search,
                          size: 25.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.h),
                  const OnlineUsers(),
                  SizedBox(height: 18.h),
                  const AllChatsSection()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

