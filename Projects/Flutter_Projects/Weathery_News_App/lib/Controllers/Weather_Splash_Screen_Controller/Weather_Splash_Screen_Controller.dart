import 'package:get/get.dart';

class Weather_Splash_Screen_Controller extends GetxController{

  void Navigation(String? pageRouteName){
    Get.offAllNamed(pageRouteName!);
  }
}