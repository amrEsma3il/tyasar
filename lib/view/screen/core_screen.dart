import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/main_scren_controller.dart';
import '../../data/datasource/static/bottom_nav_bar_static_datasource.dart';
import '../widgets/core_Screen/bottom_nav_bar_component.dart';




class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: SafeArea(
          child: SizedBox(
            height: Get.height,
            child: Stack(
              children: [
                GetBuilder<MainScreenController>(
                  builder: (controller) {
                    return navBarItemsBody[controller.bottomNavBarItemSelected];
                  }
                ),
              const BottomNavBarComponent()
              ],

            )),
        ),
      );
   
  }
}

