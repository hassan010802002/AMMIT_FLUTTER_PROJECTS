import 'package:get/get.dart';

class Car_Details_Controller extends GetxController{

  void Closing(int times){
    Get.close(times);
  }

  void Navigating_and_Close(dynamic page){
    Get.offAndToNamed(page);
  }
  
  void Navigating_Back(){
    Get.back();
  }
}