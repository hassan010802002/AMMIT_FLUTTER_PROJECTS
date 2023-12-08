import 'package:flutter/material.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';
import 'package:jobsque_app/Screens/Location_Screen/location_screen.dart';
import 'package:jobsque_app/Screens/LogIn_Screen/login__screen.dart';
import 'package:jobsque_app/Screens/OnBoarding_Screen/OnBoardingScreen.dart';
import 'package:jobsque_app/Screens/Success_Screen/success__screen.dart';
import 'package:jobsque_app/Screens/Work_Type_Screen/work_type_screen.dart';

import '../Screens/Registration_Screen/registration__screen.dart';

class AppPages {
  static Map<String , Widget Function(BuildContext)> pages = {
    AppRoutes.onBoardingScreen: (p0) =>  OnBoardingScreen(),
    AppRoutes.registrationScreen: (p0) =>  Registration_Screen(),
    AppRoutes.workTypeScreen: (p0) =>  WorkTypeScreen(),
    AppRoutes.locationScreen: (p0) =>  LocationScreen(),
    AppRoutes.successScreen: (p0) =>  SuccessScreen(),
    AppRoutes.loginScreen: (p0) =>  LogIn_Screen(),
  };
}