// ignore_for_file: camel_case_types

import 'dart:async';

import 'package:chatbox_project/Routes/MyPages/MyPages.dart';
import 'package:get/get.dart';

class Splash_Controller extends GetxController{
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 3), () {
      Get.toNamed(MyPages.onbroadingScreen);
    });
  }
}