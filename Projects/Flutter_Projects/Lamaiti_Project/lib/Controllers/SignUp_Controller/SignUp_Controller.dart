import 'package:get/get.dart';

class SignUp_Controller extends GetxController{

  void Navigate(dynamic page){
    Get.toNamed(page);
  }

  void Navigating_Back(){
    Get.back();
  }
}