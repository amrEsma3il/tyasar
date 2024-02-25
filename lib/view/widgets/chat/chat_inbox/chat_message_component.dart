import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/color.dart';
import '../../../../data/model/chat/message_chat_model.dart';

class MessageChatComponent extends StatelessWidget {
 final  MessageChatModel messageEntity; 
  const MessageChatComponent({
    super.key, required this.messageEntity
  });

  @override
  Widget build(BuildContext context) {
    bool isCurrentUser=messageEntity.username == "عمرو اسماعيل";
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.h),
      child: Row(
        mainAxisAlignment:isCurrentUser
            ? MainAxisAlignment.start
            : MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: isCurrentUser
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.center,
                width: 281.w,
                height: 51.h,
                decoration: BoxDecoration(
                    color: isCurrentUser
                        ? AppColor.moderateCyan
                        : AppColor.softGray,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.r),
                        topRight: Radius.circular(12.r),
                        bottomRight: Radius.circular(
                          isCurrentUser? 0 : 12.r),
                        bottomLeft: Radius.circular(
                           isCurrentUser ? 12.r : 0))),
                child: Text(
                messageEntity.messageContent!,
                  style:isCurrentUser
                      ? const TextStyle(color: AppColor.white)
                      : null,
                ),
              ),
               Text(messageEntity.messageReceiveTime!),
            ],
          ),
        ],
      ),
    );
  }
}


