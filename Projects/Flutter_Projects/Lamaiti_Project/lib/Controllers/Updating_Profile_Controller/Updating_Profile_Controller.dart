import 'package:get/get.dart';

class Updating_Profile_Controller extends GetxController{
  void Navigate(dynamic page){
    Get.toNamed(page);
  }
  void Navigate_and_Close_Current(dynamic page){
    Get.offAndToNamed(page);
  }
}