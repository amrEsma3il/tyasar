
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../config/themes/styles.dart';
import '../../../../controller/chat/home_chat_controller.dart';
import '../../../../core/constant/color.dart';
import '../../../../data/model/chat/message_chat_model.dart';

class ChatMessageoutSideComponent extends StatelessWidget {
  final MessageChatModel messageEntity;
  const ChatMessageoutSideComponent({
    super.key, required this.messageEntity,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.find<ChatHomeController>().goToOne2OneChatViewEvent(username: messageEntity.username!, imgProfile: messageEntity.userImageProfile!);
      },
      child: GetBuilder<ChatHomeController>(
        builder: (searchController) {
          return Container(
            margin:  EdgeInsets.only(bottom: 15.h),
            padding:  EdgeInsets.fromLTRB(18.w, 20.h, 14.w, 15.h),
            width: 348.w,
            height: 100.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color:   AppColor.black.withOpacity(0.05.r),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
          
                Image.asset(messageEntity.userImageProfile!,width: 63.w,height: 63.h,),
                SizedBox(width: 10.w,),
                Column(
                 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      messageEntity.username!,
                      style: TextStyles.font16greenSoft.copyWith(
                        color: AppColor.black,fontSize: 17.sp
                      ),
                    ),
                    SizedBox(height: 4.5.h,),
                    Expanded(
                      child: SizedBox(width: 185.w,
                        child: Text(
                         messageEntity.messageContent!,
                          
                          maxLines: 1,
                          style: TextStyles.font16greenSoft.copyWith(
                            
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            height: 1.7.h,
                            overflow: TextOverflow.ellipsis,
                            
                          ),
                        ),
                      ),
                    ),
                 
                  ],
                ),
                const Expanded(child: SizedBox()),
                Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     Text(messageEntity.messageReceiveTime!),
                    SizedBox(height: 15.h,),
                    CircleAvatar(
                      radius: 12.5.r,
                      backgroundColor: AppColor.softGreen,
                      child:  Text('2',style: TextStyles.font16WhiteSemiBold,)
                    ),
                  ],
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}