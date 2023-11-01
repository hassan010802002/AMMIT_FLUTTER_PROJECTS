// ignore_for_file: camel_case_types, constant_identifier_names, non_constant_identifier_names

import 'package:chatbox_project/Routes/MyPages/MyPages.dart';
import 'package:chatbox_project/Screens/Base_Screen/Base_Screen.dart';
import 'package:chatbox_project/Screens/Chatting_Screen/Chatting_Screen.dart';
import 'package:chatbox_project/Screens/Home_Screen/Home_Screen.dart';
import 'package:chatbox_project/Screens/LogIn_Screen/LogIn_Screen.dart';
import 'package:chatbox_project/Screens/OnBroading_Screen/OnBroading_Screen.dart';
import 'package:chatbox_project/Screens/SignUp_Screen/SignUp_Screen.dart';
import 'package:chatbox_project/Screens/Splash_Screen/UI/Splash_Screen.dart';
import 'package:get/get.dart';

class MyPages_Routes {
  static final screen_Routes = <GetPage>[
    GetPage(
      name: MyPages.splashScreen,
      page: () => const MySplash(),
    ),
    GetPage(
      name: MyPages.onbroadingScreen,
      page: () => const MyOnBroading(),
    ),
    GetPage(
      name: MyPages.logInScreen,
      page: () => const MyLogIn(),
    ),
    GetPage(
      name: MyPages.signUpScreen,
      page: () => const MySignUp(),
    ),
    GetPage(
      name: MyPages.baseScreen,
      page: () => const MyBase(),
    ),
    GetPage(
      name: MyPages.homeScreen,
      page: () => const MyHome(),
    ),
    GetPage(
      name: MyPages.chattingScreen,
      page: () => const MyChatting(),
    ),
  ];
}
