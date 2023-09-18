import 'package:application_3/Controllers/Main_App_Controller.dart';
import 'package:application_3/Routes/App_Pages.dart';
import 'package:application_3/Screens/Splash_Screen/Splash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialRoute: App_Pages.splashScreen,
      getPages: Main_Contoller().routes,
      debugShowCheckedModeBanner: false,
      home: const MySplash(),
    ),
  );
}
