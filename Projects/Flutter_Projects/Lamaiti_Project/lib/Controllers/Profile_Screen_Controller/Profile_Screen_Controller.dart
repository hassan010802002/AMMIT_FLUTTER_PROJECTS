import 'package:get/get.dart';

class Profile_Screen_Controller extends GetxController{

  void Navigating_Back(){
    Get.back();
  }

  void Navigating(dynamic page){
    Get.toNamed(page);
  }
}