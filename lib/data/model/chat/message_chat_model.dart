class MessageChatModel {
  final String? userImageProfile, username, messageContent, messageReceiveTime;
  final int? id;

  MessageChatModel({
    this.id, 
    this.userImageProfile,
    this.username,
    this.messageContent,
    this.messageReceiveTime,
  });
  factory MessageChatModel.fromJson(Map<String, dynamic> json) =>
      MessageChatModel(
          userImageProfile: json['userimageprofile'],
          username: json['username'],
          messageContent: json['messagecontent'],
          messageReceiveTime: json['messagereceivetime']);

  toJson(MessageChatModel messageEntity) => {
        'userimageprofile': messageEntity.userImageProfile,
        'username': messageEntity.username,
        'messagecontent': messageEntity.messageContent,
        'messagereceivetime': messageEntity.messageReceiveTime
      };
}
