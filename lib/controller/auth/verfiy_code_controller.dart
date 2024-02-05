
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tyasart/core/constant/color.dart';

import '../../config/routing/app_routes_name.dart';



class VerifyController  extends  GetxController{

Color borderColor=AppColor.softGray;
double borderWidth=1;




static TextEditingController firstDigit=TextEditingController();
static TextEditingController secondtDigit=TextEditingController();
static TextEditingController thirdDigit=TextEditingController();
static TextEditingController fourthDigit=TextEditingController();


nextEvent(){

if(fourthDigit.text+thirdDigit.text+secondtDigit.text+firstDigit.text=="1234")

{
  borderColor=AppColor.primaryColor;
  borderWidth=3;
 Get.toNamed(AppRouteName.loginContinue);

}else{
  borderColor=AppColor.red;
  borderWidth=3;

}

update();
 
}


backEvent(){


  Get.back();
}


resendEvent(){
  print('=======================The button is clicked!');
}





@override
  void onInit() {


 
    super.onInit();
  }


  @override
  void dispose() {
 firstDigit.dispose();
 secondtDigit.dispose();
 thirdDigit.dispose();
 fourthDigit.dispose();
    super.dispose();
  }
  
}