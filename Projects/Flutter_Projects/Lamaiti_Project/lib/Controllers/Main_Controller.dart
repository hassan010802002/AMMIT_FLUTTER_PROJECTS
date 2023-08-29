import 'package:get/get.dart';
import 'package:lamaiti/Routes/My_Screens_Pages.dart';

class MainController extends GetxController{

  List<GetPage> routes = [
    ...MyScreensPages.screensPages
  ];

  GetPage? screensRoute (String pageRoute){
    int pageIndex = routes.indexWhere((element) => element.name==pageRoute);
    return routes.elementAt(pageIndex);
  }
}