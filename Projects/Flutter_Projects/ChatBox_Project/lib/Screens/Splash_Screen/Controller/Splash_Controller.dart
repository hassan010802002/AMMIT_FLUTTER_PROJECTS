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
  final RxBool? networkStatus = false.obs;

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
    Permissions_Availability();
    ConnectivityResult result = await Connectivity().checkConnectivity();
    Network_Connection_Repository.init();
    networkStatus!.value = await Network_Connection_Repository.isInternetConnected(result);
    if (networkStatus!.value) {
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
      Permissions_Availability();
    }
    super.onInit();
  }

  void Permissions_Availability() async {
    Map<Permission, PermissionStatus> permissions = await [
      Permission.camera,
      Permission.microphone,
      Permission.photos,
      Permission.videos,
      Permission.audio,
    ].request();
    permissions.forEach((key, value) async {
      if (!value.isGranted) {
        if (value.isPermanentlyDenied) {
          await openAppSettings();
        }
        await key.request();
      }
      print(value.isGranted);
    });
  }

  void Navigation(dynamic page) {
    Get.toNamed(page);
  }
}
