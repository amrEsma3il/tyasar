import 'package:flutter/material.dart';

class ScreenResponsive {
   
  static double height({BuildContext? context, double? refrenceScreenHeight=812,double? oldHeight} ) {
    double screenHeight = MediaQuery.of(context!).size.height;
    return (screenHeight * oldHeight!) / refrenceScreenHeight!;
  }

  static double width({BuildContext? context, double? refrenceScreenWidth=375,double? oldWidth }) {
    double screenWidth = MediaQuery.of(context!).size.width;
    return (screenWidth * oldWidth!) / refrenceScreenWidth!;
  }

}