// ignore_for_file: camel_case_types

import 'package:chatbox_project/Services/Repositories/Registeration_Repository/Custom_Registeration/Custom_Registeration.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Main_Registeration_Service{
  static  Future<UserCredential> customReg(String? email , String? password) async => await Custom_Registeration.custom_Registeration(email , password);

}