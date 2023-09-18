import 'dart:async';

import 'package:application_3/Routes/App_Pages.dart';
import 'package:get/get.dart';

class Splash_Screen_Controller extends GetxController{
  void Navigating(dynamic page){
    Get.toNamed(page);
  }

  @override
  void onInit() {
    super.onInit();
    Timer.periodic(const Duration(seconds: 5), (timer) {
      Navigating(App_Pages.homeScreen);
    });
  }
}