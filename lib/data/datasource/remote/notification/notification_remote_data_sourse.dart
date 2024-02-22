// fake simulate of real-time notfication from server

// implement in real push notification via firebase messaging or sms misr or others that  support this service

import '../../../model/notification/notification_model.dart';

class NotificatioDataSource {}

List<NotificationModel>  notificationsFetch = [
    NotificationModel(
        body: "تم قبول طلبك بواسطه المرافق بنجاح",
        title: 'هذا نص بواسطه المصمم لجعله نص حقيقي' ,
        date: "2022/2/2"),
    NotificationModel(
        body: 'هذا نص بواسطه المصمم لجعله نص حقيقي',
        title:"المرافق علي وشك الوصول" ,
        date: "2024/2/2"),
    NotificationModel(
        body: "هذا نص بواسطه المصمم لجعله نص حقيقي",
        title:"تم قبول طلبك بواسطه المرافق بنجاح" ,
        date: "2022/12/2"),
    NotificationModel(
        body: "هذا نص بواسطه المصمم لجعله نص حقيقي",
        title:"تم قبول طلبك بواسطه المرافق بنجاح" ,
        date: "2023/8/4"),
  ];

