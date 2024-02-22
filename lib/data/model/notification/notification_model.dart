class NotificationModel {
  final String title, body, date;

  NotificationModel(
      {required this.title, required this.body, required this.date});
  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      NotificationModel(
          title: json['title'], body: json['body'], date: json['date']);

  toJson(NotificationModel notificationEntity) => {
        'title': notificationEntity.title,
        'body': notificationEntity.body,
        'date': notificationEntity.date
      };
}
