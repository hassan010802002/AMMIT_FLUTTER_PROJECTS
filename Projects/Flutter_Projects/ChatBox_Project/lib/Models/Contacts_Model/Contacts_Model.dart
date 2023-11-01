// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:contacts_service/contacts_service.dart';

class Contacts_Model {
  List<Contact> _contactsDetails = [];

  List<Contact> get gettingContactsDetails => _contactsDetails;

  set settingContactsDetails(List<Contact> value) => _contactsDetails = value;

  String? displayName, givenName, middleName, prefix, suffix, familyName;

  // Company
  String? company, jobTitle;

  // Email addresses
  List<Item>? emails = [];

  // Phone numbers
  List<Item>? phones = [];

  // Post addresses
  List<PostalAddress>? postalAddresses = [];

  // Contact avatar/thumbnail
  Uint8List? avatar;

  Contacts_Model();

  Contacts_Model.toModel({required List<Contact> contactsList}) {
    settingContactsDetails = contactsList;
  }

  Contact? fromModel(int index) {
    final userContact = gettingContactsDetails[index];
    return userContact;
  }
}
