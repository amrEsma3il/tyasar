import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../config/routing/app_routes_name.dart';
import '../../data/datasource/remote/chat/chat_remote_data_sources.dart';
import '../../data/model/chat/message_chat_model.dart';

class ChatHomeController extends GetxController {
  List<MessageChatModel> searchedUsers = [];
  TextEditingController? searchOnUsers;
  ScrollController? homeChatScrollController;
  bool showOverlayScrollSearchContainer = false;
  int messageIndex = 0;

  goToOne2OneChatViewEvent(
      {required String username, required String imgProfile}) {
    searchOnUsers!.clear();
    Get.toNamed(AppRouteName.chat,
        arguments: {"imgProfile": imgProfile, "username": username});
  }

  searchOnUsersEvent(String pattern) {
    if (searchedUsers.isNotEmpty) {
      searchedUsers.clear();
    } else {
      searchedUsers = ChatRemoteDataSource.getAllOutsideMessages
          .where((element) => element.username!.contains(pattern))
          .toList();
    }
    showOverlayScrollSearchContainer = true;
    homeChatScrollController!.animateTo(150.h,
        duration: const Duration(milliseconds: 800), curve: Curves.easeInOut);
    update();
  }

  searchWithRecordEvent() {
    //implement voice recognition here with any ai tool then =>convert to clear text
  }

 


  @override
  void onInit() {
    searchOnUsers = TextEditingController();
    homeChatScrollController = ScrollController();

    super.onInit();
  }

  @override
  void dispose() {
    searchOnUsers!.dispose();
    homeChatScrollController!.dispose();

    super.dispose();
  }
}
