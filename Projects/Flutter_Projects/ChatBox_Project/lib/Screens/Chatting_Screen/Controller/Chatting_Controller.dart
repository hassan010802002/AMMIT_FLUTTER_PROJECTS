// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:chatbox_project/Helpers/Local_Cache_Helper/cache_helper.dart';
import 'package:chatbox_project/Models/User_Model/User_Model.dart';
import 'package:chatbox_project/Services/Repositories/FireStore_Repository/Users_Repository/Users_Service.dart';
import 'package:get/get.dart';

class Chatting_Controller extends GetxController {
  RxBool isEditing = false.obs;

  Chatting_Controller();

  @override
  void onInit() {
    super.onInit();
  }

  void editingStatus(bool status) {
    isEditing.value = status;
  }

  void BackNavigation(){
    Get.back();
  }
}
