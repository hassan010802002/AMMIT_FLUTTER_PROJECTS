// ignore_for_file: camel_case_types, non_constant_identifier_names, use_build_context_synchronously

import 'dart:async';

import 'package:chatbox_project/Helpers/Local_Cache_Helper/cache_helper.dart';
import 'package:chatbox_project/Helpers/SnackBar_Helper/SnackBar_helper.dart';
import 'package:chatbox_project/Routes/MyPages/MyPages.dart';
import 'package:chatbox_project/Services/Repositories/Network_Connection_Repository/Network_Connection_Repository.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class Splash_Controller extends GetxController {
  final RxBool? networkStatus = false.obs ;
  BuildContext context;
  String message, errorMessage, permissionGrantedMessage, failedPermissionMessage;

  Splash_Controller({
    required this.context,
    required this.message,
    required this.errorMessage,
    required this.permissionGrantedMessage,
    required this.failedPermissionMessage,
  });

  @override
  void onInit() async {
    super.onInit();
    Contacts_Permission_Availability();
    ConnectivityResult result = await Connectivity().checkConnectivity();
    Network_Connection_Repository.init();
    networkStatus!.value = await Network_Connection_Repository.isInternetConnected(result);
    if (networkStatus!.value ) {
      SnackBar_Helper.showSuccessToast(context, message);
      Future.delayed(
        const Duration(seconds: 3),
        () {
          Timer(
            const Duration(seconds: 3),
            () {
              if (CacheHelper.returningPreferences().containsKey("ID")) {
                Navigation(MyPages.baseScreen);
              } else {
                Navigation(MyPages.onbroadingScreen);
              }
            },
          );
        },
      );
    } else {
      SnackBar_Helper.showErrorToast(context, errorMessage);
    }
  }

  void Contacts_Permission_Availability() async {
    PermissionStatus contactsPermission = await Permission.contacts.status;
    if (contactsPermission.isPermanentlyDenied) {
      await openAppSettings();
    } else if (contactsPermission.isDenied || contactsPermission.isLimited || contactsPermission.isRestricted || contactsPermission.isProvisional) {

      contactsPermission = await Permission.contacts.request();
      if (contactsPermission.isGranted) {

        SnackBar_Helper.showSuccessToast(context, permissionGrantedMessage);
      } else {

        SnackBar_Helper.showErrorToast(context, failedPermissionMessage);
      }
    }else{
      SnackBar_Helper.showSuccessToast(context, permissionGrantedMessage);
    }
  }

  void Navigation(dynamic page) {
    Get.toNamed(page);
  }
}
