// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:contacts_service/contacts_service.dart';

import '../../../Models/Contacts_Model/Contacts_Model.dart';

class Contacts_Service{
  static List<Contact> localContacts = [];

  static  Future<Contacts_Model> FetchingContacts()async{
    localContacts = await ContactsService.getContacts();
    Contacts_Model contactsModel = Contacts_Model.toModel(contactsList: localContacts);
    return contactsModel;
  }
}