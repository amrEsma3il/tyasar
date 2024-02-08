import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tyasart/core/constant/color.dart';
import 'config/routing/app_router_configuration.dart';
import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const Tyasart());
}

class Tyasart extends StatelessWidget {
  const Tyasart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(375, 812),
      builder: (context, child) {
        
        
        return GetMaterialApp(
          
          initialBinding: AppBindings(),
          locale: const Locale('ar'),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          getPages: routes,
            theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(suffixIconColor:AppColor.iconsColor
            ),
            primarySwatch: Colors.green,
            fontFamily: 'ibmPlexSens',
          ),
        
        );},
      // child:
    );
  }
}
