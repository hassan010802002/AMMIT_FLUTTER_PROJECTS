import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weathery_news_app/Controllers/Weather_Main_Controller.dart';
import 'package:weathery_news_app/Routes/MyPages/MyPages.dart';
import 'package:weathery_news_app/Screens/Weather_Home_Screen/Weather_Home_Screen.dart';
import 'package:weathery_news_app/Screens/Weather_Splash_Screen/Weather_Splash_Screen.dart';

void main() {
  runApp( ScreenUtilInit(
    ensureScreenSize: true,
    designSize: Size(480, 620),
    splitScreenMode: true,
    minTextAdapt: true,
    useInheritedMediaQuery: true,
    child: GetMaterialApp(
      initialRoute: MyPages.splashScreen,
      getPages: Weather_Main_Controller().screensRoutes,
      debugShowCheckedModeBanner: false,
      home: MyWeather_Splash(),
    ),
  ));
}
