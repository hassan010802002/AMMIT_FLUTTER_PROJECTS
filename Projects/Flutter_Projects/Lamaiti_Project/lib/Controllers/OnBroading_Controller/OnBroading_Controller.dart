import 'package:get/get.dart';

class OnBroading_Controller extends GetxController{

  void Navigate_without_return (String pageRoute){
    Get.offAllNamed(pageRoute);
  }
}