import 'package:get/get.dart';

class SignUp_Controller extends GetxController{
  RxString? genderValue = "".obs;
  RxString? policyValue = "".obs;

  void OnGenderChange (String? gender){
    genderValue!.value=gender!;
  }

  void OnPolicyChange (String? value){
    policyValue!.value=value!;
  }

  void Navigate(dynamic page){
    Get.toNamed(page);
  }

  void Navigating_Back(){
    Get.back();
  }
}