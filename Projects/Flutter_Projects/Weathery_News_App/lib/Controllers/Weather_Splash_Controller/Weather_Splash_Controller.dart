import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';

class Weather_Splash_Controller extends GetxController {
  bool? location_Service;
  LocationPermission? location_Permission;
  LocationSettings? settings;

  @override
  void onInit() async {
    super.onInit();
    location_Service = await Geolocator.isLocationServiceEnabled();
    if (location_Service!) {
      print("Location Service is Enabled");
      SnackBar(
        content: const Text(
          "Location Service is Disabled",
          style: TextStyle(
            color: Colors.redAccent,
            fontWeight: FontWeight.w800,
            fontSize: 20,
            fontFamily: "SF Pro Display",
          ),
          textAlign: TextAlign.center,
        ),
        width: 350.w,
        backgroundColor: Colors.grey,
        padding: EdgeInsets.all(20.sp),
        elevation: 8,
        duration: const Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
      );
      location_Permission = await Geolocator.checkPermission();
      if (location_Permission == LocationPermission.denied) {
        location_Permission = await Geolocator.requestPermission();
        if (location_Permission == LocationPermission.denied) {
          print("Location Permission is Denied");
          SnackBar(
            content: const Text(
              "Location Permission is Denied",
              style: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.w800,
                fontSize: 20,
                fontFamily: "SF Pro Display",
              ),
              textAlign: TextAlign.center,
            ),
            width: 350.w,
            backgroundColor: Colors.grey,
            padding: EdgeInsets.all(20.sp),
            elevation: 8,
            duration: const Duration(seconds: 3),
            behavior: SnackBarBehavior.floating,
            dismissDirection: DismissDirection.startToEnd,
          );
        } else if (location_Permission == LocationPermission.always) {
          print("Location Permission is Allowed");
          SnackBar(
            content: const Text(
              "Location Permission is Allowed",
              style: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.w800,
                fontSize: 20,
                fontFamily: "SF Pro Display",
              ),
              textAlign: TextAlign.center,
            ),
            width: 350.w,
            backgroundColor: Colors.grey,
            padding: EdgeInsets.all(20.sp),
            elevation: 8,
            duration: const Duration(seconds: 3),
            behavior: SnackBarBehavior.floating,
            dismissDirection: DismissDirection.startToEnd,
          );
        }
      } else if (location_Permission == LocationPermission.deniedForever) {
        print("Location Permission is Denied ForEver");
        SnackBar(
          content: const Text(
            "Location Permission is Denied ForEver",
            style: TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.w800,
              fontSize: 20,
              fontFamily: "SF Pro Display",
            ),
            textAlign: TextAlign.center,
          ),
          width: 350.w,
          backgroundColor: Colors.grey,
          padding: EdgeInsets.all(20.sp),
          elevation: 8,
          duration: const Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
          dismissDirection: DismissDirection.startToEnd,
        );
      } else if (location_Permission == LocationPermission.whileInUse) {
        print("Location Permission is Available");
        SnackBar(
          content: const Text(
            "Location Permission is Available",
            style: TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.w800,
              fontSize: 20,
              fontFamily: "SF Pro Display",
            ),
            textAlign: TextAlign.center,
          ),
          width: 350.w,
          backgroundColor: Colors.grey,
          padding: EdgeInsets.all(20.sp),
          elevation: 8,
          duration: const Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
          dismissDirection: DismissDirection.startToEnd,
        );
      }
    } else {
      const LocationServiceDisabledException();
    }
  }

  void Navigation(String? pageRouteName) {
    Get.offAllNamed(pageRouteName!);
  }
}
