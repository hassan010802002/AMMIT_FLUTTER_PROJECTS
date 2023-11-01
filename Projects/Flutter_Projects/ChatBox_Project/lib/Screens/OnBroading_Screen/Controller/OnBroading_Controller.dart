// ignore_for_file: camel_case_types, non_constant_identifier_names, use_build_context_synchronously

import 'package:chatbox_project/Helpers/Local_Cache_Helper/cache_helper.dart';
import 'package:chatbox_project/Helpers/SnackBar_Helper/SnackBar_helper.dart';
import 'package:chatbox_project/Routes/MyPages/MyPages.dart';
import 'package:chatbox_project/Services/Repositories/Authentication_Repository/Main_Authentication_Service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBroading_Controller extends GetxController {
  void Navigation(String? page) {
    Get.toNamed(page!);
  }

  void Google_SignIn(BuildContext context , String? message , {String? errorMessage}) async{
    try {
      final currentUserCredential= await Main_Authentication_Service.googleAuth;
      if(currentUserCredential.user!.uid.isNotEmpty){
        CacheHelper.saveData(key: "ID", value: currentUserCredential.user!.uid);
          CacheHelper.saveData(key: "Email", value: currentUserCredential.user!.email!);
        SnackBar_Helper.showSuccessToast(context, message!);
        Future.delayed(
          const Duration(seconds: 3),
              () {
            Navigation(MyPages.baseScreen);
          },
        );
      }
    } on Exception catch (e) {
      SnackBar_Helper.showErrorToast(context, errorMessage);
    }
  }

  void Facebook_SignIn(BuildContext context , String? message , {String? errorMessage}) async{
    try {
      final currentUserCredential= await Main_Authentication_Service.facebookAuth;
      if(currentUserCredential.user!.uid.isNotEmpty){
        CacheHelper.saveData(key: "ID", value: currentUserCredential.user!.uid);
        CacheHelper.saveData(key: "Email", value: currentUserCredential.user!.email!);
        SnackBar_Helper.showSuccessToast(context, message!);
        Future.delayed(
          const Duration(seconds: 3),
              () {
            Navigation(MyPages.baseScreen);
          },
        );
      }
    } on Exception catch (e) {
      SnackBar_Helper.showErrorToast(context, errorMessage);
    }
  }

  void Apple_SignIn(BuildContext context , String? message , {String? errorMessage}) async{
    try {
      final currentUserCredential= await Main_Authentication_Service.appleAuth;
      if(currentUserCredential.user!.uid.isNotEmpty){
        CacheHelper.saveData(key: "ID", value: currentUserCredential.user!.uid);
        CacheHelper.saveData(key: "Email", value: currentUserCredential.user!.email!);
        SnackBar_Helper.showSuccessToast(context, message!);
        Future.delayed(
          const Duration(seconds: 3),
              () {
            Navigation(MyPages.baseScreen);
          },
        );
      }
    } on Exception catch (e) {
      SnackBar_Helper.showErrorToast(context, errorMessage);
    }
  }
}
