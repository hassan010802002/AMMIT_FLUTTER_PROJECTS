// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:chatbox_project/Models/Contacts_Model/Contacts_Model.dart';
import 'package:chatbox_project/Services/Repositories/Contacts_Repository/Contacts_Service.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:get/get.dart';

class Home_Controller extends GetxController{
  RxList<Contact>? myContacts = <Contact>[].obs;
  RxInt listLength = 0.obs;

  @override
  void onInit() async{
    ReterivingContacts();
    super.onInit();
  }

  void ReterivingContacts()async{
    final Contacts_Model localContacts = await Contacts_Service.FetchingContacts();
    myContacts!.value = localContacts.gettingContactsDetails;
    listLength.value = localContacts.gettingContactsDetails.length;
  }

  void RemovingContact(int index){
    myContacts!.value.removeAt(index);
    print(myContacts!.value.length);
  }

  void Navigation(String page){
    Get.toNamed(page);
  }
}