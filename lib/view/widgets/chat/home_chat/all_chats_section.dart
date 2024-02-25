import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/themes/styles.dart';
import '../../../../data/datasource/remote/chat/chat_remote_data_sources.dart';
import 'chat_message_outside_coponent.dart';

class AllChatsSection extends StatelessWidget {
  const AllChatsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "جميع الرسائل",
          style: TextStyles.textHeaderStyle.copyWith(fontSize: 18.sp),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 18.h),
        Column(children: [...List.generate(ChatRemoteDataSource.getAllOutsideMessages.length+1, (index) => index == ChatRemoteDataSource.getAllOutsideMessages.length
                ? SizedBox(
                    height: 90.h,
                  )
                :  ChatMessageoutSideComponent(messageEntity: ChatRemoteDataSource.getAllOutsideMessages[index]),)],),
   
      ],
    );
  }
}
