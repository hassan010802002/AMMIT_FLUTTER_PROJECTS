// ignore_for_file: camel_case_types

import 'package:chatbox_project/Routes/MyPages_Routes/MyPages_Routes.dart';
import 'package:get/get.dart';

class Main_Controller extends GetxController{
  List<GetPage> routes = [
    ...MyPages_Routes.screen_Routes
  ];

  GetPage? screensRoute (String pageRoute){
    int pageIndex = routes.indexWhere((element) => element.name==pageRoute);
    return routes.elementAt(pageIndex);
  }
}