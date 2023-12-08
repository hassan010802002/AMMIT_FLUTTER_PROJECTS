// ignore_for_file: camel_case_types, non_constant_identifier_names, use_build_context_synchronously
import 'package:chatbox_project/Helpers/Local_Cache_Helper/cache_helper.dart';
import 'package:chatbox_project/Helpers/SnackBar_Helper/SnackBar_helper.dart';
import 'package:chatbox_project/Models/User_Model/User_Model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Users_Service {
  static final FirebaseFirestore cloudFireStore = FirebaseFirestore.instance;
  static final CollectionReference<Map<String, dynamic>> mainUsersCollection = cloudFireStore.collection(userCollection);
  static const String userCollection = "Active_Users";
  static final userID = CacheHelper.getData(key: "ID");

  static void UserInfoInitialization({required UserModel userData}) async {
    await mainUsersCollection.doc(userID).set(userData.toJson());
  }

  static Future<DocumentSnapshot<Map<String, dynamic>>> UserRetrieving({required String userId}) async {
    return await mainUsersCollection.doc(userId).get();
  }

  static void UpdatingUserData({
    required UserModel userInfo,
    required BuildContext context,
  }) async {
    final DocumentReference<Map<String, dynamic>> currentUserInfo = mainUsersCollection.doc(userID);
    await cloudFireStore.runTransaction((transaction) async {
      final DocumentSnapshot<Map<String, dynamic>> userInfoSnapshot = await transaction.get(currentUserInfo);
      if (userInfoSnapshot.exists) {
        transaction.update(currentUserInfo, userInfo.toJson());
      } else {
        throw Exception("User Not Exists Yet");
      }
    });
    SnackBar_Helper.showSuccessToast(context, "User ID:$userID INFO Updated Successfully");
  }

  static void DeletingUser({
    required BuildContext context,
  }) async {
    await mainUsersCollection.doc(userID).delete();
    SnackBar_Helper.showSuccessToast(context, "User of ID: $userID Deleted");
  }
}
