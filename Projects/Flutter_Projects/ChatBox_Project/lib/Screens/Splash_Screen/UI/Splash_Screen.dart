// ignore_for_file: camel_case_types

import 'package:chatbox_project/Screens/Splash_Screen/Controller/Splash_Controller.dart';
import 'package:chatbox_project/Screens/Splash_Screen/UI/Views/Splash_View.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySplash extends StatelessWidget {
  const MySplash({super.key});

  @override
  Widget build(BuildContext context) {
    return const Splash_Screen();
  }
}

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_Screen_State();
}

class _Splash_Screen_State extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    Splash_Controller splashController = Get.put(Splash_Controller(
      context: context,
      message: "Online Network Connection",
      errorMessage: "Offline Network Connection",
      permissionGrantedMessage: "Permission Granted Successfully",
      failedPermissionMessage: "Failed To Access Contacts Permission",
    ));
    return GetX(
      init: splashController,
      builder: (controller) {
        return ValueListenableBuilder(
          valueListenable: ValueNotifier(controller.networkStatus!.value ),
          builder: (BuildContext context, value, Widget? child) {
            return const Scaffold(
              body: Splash_View(),
            );
          },
        );
      },
    );
  }
}
