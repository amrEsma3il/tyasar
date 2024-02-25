import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/datasource/remote/chat/chat_remote_data_sources.dart';
import '../../data/model/chat/message_chat_model.dart';

class ChatInboxContoller extends GetxController{

List<MessageChatModel> chatList=ChatRemoteDataSource.getAllMessagesOne2OneChat;
TextEditingController? sendMessageController;
FocusNode? focusNode ;







sendMessage(MessageChatModel messageEntity){

  chatList.add(messageEntity);
  sendMessageController!.clear();
focusNode!.unfocus();
    update();
}

@override
  void onInit() {
sendMessageController=TextEditingController();
focusNode=FocusNode();
    super.onInit();
  }

  @override
  void dispose() {
    focusNode!.dispose();
sendMessageController!.dispose() ;
   super.dispose();
  }

}