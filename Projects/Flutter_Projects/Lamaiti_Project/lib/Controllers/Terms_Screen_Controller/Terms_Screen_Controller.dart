import 'package:get/get.dart';

class Terms_Screen_Controller extends GetxController{
  RxBool? acceptTerms = true.obs;

  void AcceptTermsOnChange (bool? value) {
    acceptTerms!.value = value!;
  }

  void Navigating_Back(){
    Get.back();
  }
}