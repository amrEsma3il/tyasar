import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tyasart/config/routing/app_routes_name.dart';

import '../../data/datasource/static/home/home_banner_data_sources.dart';
import '../../data/model/home/home_banner_model.dart';
import '../../data/model/reservation/accomoion_info_model.dart';

class HomeController extends GetxController {
  late PageController pageController;
  TextEditingController? searchAccompion;
  Timer? changePageTimer;

  int currentPage = 0;
  List<HomeBannerModel>  scrollBannerList=HomeStaticDataSources.homeBannerList;

 

  onPageChangedEvent(int index) {
    currentPage = index;
    update();
  }


goToReservationAccompionTrackEvent(AccompionInfoModel accompionInfobtity){


  Get.toNamed(AppRouteName.companionTrack,arguments:accompionInfobtity );
}
  @override
  void onInit() {
    pageController = PageController();
    searchAccompion=TextEditingController();
    super.onInit();


//   changePageTimer=  Timer.periodic(const Duration(seconds: 5), (Timer timer) {
//     if (currentPage < HomeStaticDataSources.homeBannerList.length-1) {
//       currentPage++;
    
//     } else {
//       currentPage = 0;

      
//     }
// update();

//       pageController.animateToPage(
        
//           currentPage,
          
//           duration: const Duration(seconds: 4),
//     curve: Curves.easeInOut,
//       );
//   });
  }

 @override
  void dispose() {
searchAccompion!.dispose();
// pageController.dispose();
    super.dispose();
  }
}
