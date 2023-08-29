import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lamaiti/Controllers/Main_Controller.dart';
import 'package:lamaiti/Routes/My_Routes.dart';
import 'package:lamaiti/Screens/Splash/Splash.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialRoute: MyRoutes.logoSplashScreen,
      getPages: MainController().routes,
      debugShowCheckedModeBanner: false,
      home: My_Splash(),
    ),
  );
}
