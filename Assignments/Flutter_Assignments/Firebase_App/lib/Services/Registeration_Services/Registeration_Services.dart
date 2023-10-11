// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_app/Models/User_Token_Model/user_token.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class Registeration_Services {
  static final _auth = FirebaseAuth.instance;
  static final _store=FirebaseFirestore.instance;
  static final _realDb=FirebaseDatabase.instance;

  static void addUserAuth(String? myEmail , String? myPassword) async{
    final UserCredential currentUser = await _auth.createUserWithEmailAndPassword(email: myEmail!, password: myPassword!);
    print("User: ${currentUser.user!.email} and with ID: ${currentUser.user!.uid} SignedUp");
  }

  static void addToFireStore({ required UserModel model})async{
    try{
      await _store.collection('Users').
      doc(_auth.currentUser!.uid).
      set(model.toJson());
    }catch(e){
      print(e);
    }
  }

  static void addToRealTime({ required UserModel model})async{
    await _realDb.ref()
        .child('Users')
        .child(_auth.currentUser!.uid)
        .set(model.toJson());
  }

  static Future<List<UserModel>> FetchingFirebaseData() async{
    final data = await _store.collection("Users").get();
    return data.docs.map((e) => UserModel.fromJson(e.data())).toList();
  }
}