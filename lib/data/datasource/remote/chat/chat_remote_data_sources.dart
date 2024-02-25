// fake simulate of real-time notfication from server

// implement in real push notification via firebase messaging or sms misr or others that  support this service

import 'package:tyasart/core/constant/imgaeasset.dart';

import '../../../model/chat/message_chat_model.dart';

class ChatRemoteDataSource {

static List<MessageChatModel>  getAllOutsideMessages = [
    MessageChatModel(userImageProfile: AppImageAsset.imgProfile,
    username: "amr esmail",
    messageContent: "بقولك اي انا مستنيك عند كافيه الميدان عالسريع بقي",
    messageReceiveTime: "2022/2/2",id: 1

    ),
    MessageChatModel(
      userImageProfile: AppImageAsset.imgProfile,
    username:"ahmed esmail",
    messageContent: "ماشي يبني خلاص ",
    messageReceiveTime: "2022/2/2",
    id:2
    
    ),
    
    MessageChatModel(
      userImageProfile: AppImageAsset.imgProfile,
    username: "علي الرباعي",
    messageContent:"ايوه حصل ...ساعات ببقي كدا ...فاهمك عموما",
    messageReceiveTime: "2022/2/2",
    id:3
    ),
  
    MessageChatModel(
      userImageProfile: AppImageAsset.imgProfile,
    username: "ابراهيم علي",
    messageContent: "نووووووووووووو وي يصاحبي ",
    messageReceiveTime: "2022/2/2",
    id:4
    ),
MessageChatModel(
      userImageProfile: AppImageAsset.imgProfile,
    username: "ابراهيم علي",
    messageContent: "نووووووووووووو وي يصاحبي ",
    messageReceiveTime: "2022/2/2",
    id:5
    ),

    MessageChatModel(
      userImageProfile: AppImageAsset.imgProfile,
    username: "ابراهيم علي",
    messageContent: "نووووووووووووو وي يصاحبي ",
    messageReceiveTime: "2022/2/2",
    id:6
    ),
    MessageChatModel(
      userImageProfile: AppImageAsset.imgProfile,
    username: "ابراهيم علي",
    messageContent: "نووووووووووووو وي يصاحبي ",
    messageReceiveTime: "2022/2/2",
    id:7
    ),
        MessageChatModel(
      userImageProfile: AppImageAsset.imgProfile,
    username: "ابراهيم علي",
    messageContent: "نووووووووووووو وي يصاحبي ",
    messageReceiveTime: "2022/2/2",
    id:8
    )
      ,
          MessageChatModel(
      userImageProfile: AppImageAsset.imgProfile,
    username: "ابراهيم علي",
    messageContent: "نووووووووووووو وي يصاحبي ",
    messageReceiveTime: "2022/2/2",
    id:9
    ),
        MessageChatModel(
      userImageProfile: AppImageAsset.imgProfile,
    username: "ابراهيم علي",
    messageContent: "نووووووووووووو وي يصاحبي ",
    messageReceiveTime: "2022/2/2",
    id:10
    ),
        MessageChatModel(userImageProfile: AppImageAsset.imgProfile,
    username: "amr esmail",
    messageContent: "بقولك اي انا مستنيك عند كافيه الميدان عالسريع بقي",
    messageReceiveTime: "2022/2/2",id: 11

    ),
    MessageChatModel(
      userImageProfile: AppImageAsset.imgProfile,
    username:"ahmed esmail",
    messageContent: "ماشي يبني خلاص ",
    messageReceiveTime: "2022/2/2",
    id:12
    
    ),
    
    MessageChatModel(
      userImageProfile: AppImageAsset.imgProfile,
    username: "علي الرباعي",
    messageContent:"ايوه حصل ...ساعات ببقي كدا ...فاهمك عموما",
    messageReceiveTime: "2022/2/2",
    id:13
    ),
  
    MessageChatModel(
      userImageProfile: AppImageAsset.imgProfile,
    username: "ابراهيم علي",
    messageContent: "نووووووووووووو وي يصاحبي ",
    messageReceiveTime: "2022/2/2",
    id:14
    ),
MessageChatModel(
      userImageProfile: AppImageAsset.imgProfile,
    username: "ابراهيم علي",
    messageContent: "نووووووووووووو وي يصاحبي ",
    messageReceiveTime: "2022/2/2",
    id:15
    ),

    MessageChatModel(
      userImageProfile: AppImageAsset.imgProfile,
    username: "ابراهيم علي",
    messageContent: "نووووووووووووو وي يصاحبي ",
    messageReceiveTime: "2022/2/2",
    id:16
    ),
    MessageChatModel(
      userImageProfile: AppImageAsset.imgProfile,
    username: "ابراهيم علي",
    messageContent: "نووووووووووووو وي يصاحبي ",
    messageReceiveTime: "2022/2/2",
    id:17
    ),
        MessageChatModel(
      userImageProfile: AppImageAsset.imgProfile,
    username: "ابراهيم علي",
    messageContent: "نووووووووووووو وي يصاحبي ",
    messageReceiveTime: "2022/2/2",
    id:18
    )
      ,
          MessageChatModel(
      userImageProfile: AppImageAsset.imgProfile,
    username: "amr esmail",
    messageContent: "نووووووووووووو وي يصاحبي ",
    messageReceiveTime: "2022/2/2",
    id:19
    ),
        MessageChatModel(
      userImageProfile: AppImageAsset.imgProfile,
    username: "ابراهيم علي",
    messageContent: "نووووووووووووو وي يصاحبي ",
    messageReceiveTime: "2022/2/2",
    id:20
    )
  ];




  
static List<MessageChatModel>  getAllMessagesOne2OneChat = [
    MessageChatModel(userImageProfile: AppImageAsset.imgProfile,
    id: 1,
    username: "عمرو اسماعيل",
    messageContent: "بقولك اي انا مستنيك عند كافيه الميدان عالسريع بقي",
    messageReceiveTime: "11:29"

    ),
 
    
    MessageChatModel(id: 2,
      userImageProfile: AppImageAsset.imgProfile,
    username: "علي الرباعي",
    messageContent:"ايوه حصل ...ساعات ببقي كدا ...فاهمك عموما",
    messageReceiveTime: "9:20"
    ),
        MessageChatModel(id: 3,
      userImageProfile: AppImageAsset.imgProfile,
    username: "علي الرباعي",
    messageContent:"ايوه حصل ...ساعات ببقي كدا ...فاهمك عموما",
    messageReceiveTime: "9:20"
    ),

        MessageChatModel(userImageProfile: AppImageAsset.imgProfile,
    username: "عمرو اسماعيل",
    id: 4,
    messageContent: "بقولك اي انا مستنيك عند كافيه الميدان عالسريع بقي",
    messageReceiveTime: "11:29"

    ),

            MessageChatModel(id: 5,
      userImageProfile: AppImageAsset.imgProfile,
    username: "علي الرباعي",
    messageContent:"ايوه حصل ...ساعات ببقي كدا ...فاهمك عموما",
    messageReceiveTime: "9:20"
    ),

        MessageChatModel(userImageProfile: AppImageAsset.imgProfile,
        id: 6,
    username: "عمرو اسماعيل",
    messageContent: "بقولك اي انا مستنيك عند كافيه الميدان عالسريع بقي",
    messageReceiveTime: "11:29"

    ),
  
              MessageChatModel(id: 7,
      userImageProfile: AppImageAsset.imgProfile,
    username: "علي الرباعي",
    messageContent:"ايوه حصل ...ساعات ببقي كدا ...فاهمك عموما",
    messageReceiveTime: "9:20"
    ),
  
        MessageChatModel(userImageProfile: AppImageAsset.imgProfile,
        id: 8,
    username: "عمرو اسماعيل",
    messageContent: "بقولك اي انا مستنيك عند كافيه الميدان عالسريع بقي",
    messageReceiveTime: "11:29"

    ),
  
        MessageChatModel(userImageProfile: AppImageAsset.imgProfile,
        id: 9,
    username: "عمرو اسماعيل",
    messageContent: "بقولك اي انا مستنيك عند كافيه الميدان عالسريع بقي",
    messageReceiveTime: "11:29"

    ),
  
        MessageChatModel(userImageProfile: AppImageAsset.imgProfile,
        id: 10,
    username: "عمرو اسماعيل",
    messageContent: "بقولك اي انا مستنيك عند كافيه الميدان عالسريع بقي",
    messageReceiveTime: "11:29"

    ),

    
  

  ];

}


