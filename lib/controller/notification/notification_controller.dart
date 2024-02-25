import 'package:get/get.dart';

import '../../data/datasource/remote/notification/notification_remote_data_sourse.dart';
import '../../data/model/notification/notification_model.dart';

class NotificationContoller extends GetxController{

List<NotificationModel> notificationList=NotificatioDataSource.notificationsFetch;
deleteAllNotifications(){

  notificationList.clear();
  update();
}







deleteNotification(NotificationModel notificationEntity){

  notificationList.remove(notificationEntity);
  update();
}

@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

}