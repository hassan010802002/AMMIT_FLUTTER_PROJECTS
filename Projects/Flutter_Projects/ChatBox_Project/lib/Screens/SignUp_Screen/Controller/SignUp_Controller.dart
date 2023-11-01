// ignore_for_file: camel_case_types, non_constant_identifier_names, use_build_context_synchronously

import 'dart:async';

import 'package:chatbox_project/Helpers/Local_Cache_Helper/cache_helper.dart';
import 'package:chatbox_project/Helpers/SnackBar_Helper/SnackBar_helper.dart';
import 'package:chatbox_project/Routes/MyPages/MyPages.dart';
import 'package:chatbox_project/Services/Repositories/Registeration_Repository/Main_Registeration_Service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp_Controller extends GetxController {
  final Rx<TextEditingController> emailController = TextEditingController().obs;
  final Rx<TextEditingController> passwordController = TextEditingController().obs;

  void customRegistration(BuildContext context, String? message , {String? errorMessage}) async {
    try {
      final UserCredential currentUserCredential =
          await Main_Registeration_Service.customReg(emailController.value.text, passwordController.value.text);
      if (currentUserCredential.user!.uid.isNotEmpty) {
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

  void Navigation(dynamic page) {
    Get.toNamed(page);
  }

  void BackNavigation() {
    Get.back();
  }
}
