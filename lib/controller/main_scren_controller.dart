import 'package:get/get.dart';

class MainScreenController extends GetxController{


  int bottomNavBarItemSelected=0;

  changeBottomNavBarItemEvent(int index){
    bottomNavBarItemSelected=index;
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