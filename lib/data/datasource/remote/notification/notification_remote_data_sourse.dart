// fake simulate of real-time notfication from server

// implement in real push notification via firebase messaging or sms misr or others that  support this service

import '../../../model/notification/notification_model.dart';

class NotificatioDataSource {

  // stupid to use static here ....i know cause the object is mutable in real but we just simulate ....relax bro !!

static List<NotificationModel>  notificationsFetch = [
    NotificationModel(
        title: "تم قبول طلبك بواسطه المرافق بنجاح",
        body: 'هذا نص بواسطه المصمم لجعله نص حقيقي' ,
        date: "2022/2/2"),
    NotificationModel(
        title: 'هذا نص بواسطه المصمم لجعله نص حقيقي',
        body:"المرافق علي وشك الوصول" ,
        date: "2024/2/2"),
    NotificationModel(
        title: "هذا نص بواسطه المصمم لجعله نص حقيقي",
        body:"تم قبول طلبك بواسطه المرافق بنجاح" ,
        date: "2022/12/2"),
    NotificationModel(
        title: "هذا نص بواسطه المصمم لجعله نص حقيقي",
        body:"تم قبول طلبك بواسطه المرافق بنجاح" ,
        date: "2023/8/4"),
  ];

}