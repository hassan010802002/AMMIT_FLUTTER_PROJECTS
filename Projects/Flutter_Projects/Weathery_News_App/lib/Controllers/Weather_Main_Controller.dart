import 'package:get/get.dart';
import 'package:weathery_news_app/Routes/MyScreensPages/MyScreenPages.dart';

class Weather_Main_Controller extends GetxController{
  final List<GetPage> screensRoutes = [
    ...MyScreenPages.screenPages
  ];

  GetPage? oneScreenRoute (String pageRoute){
    int pageIndex = screensRoutes.indexWhere((element) => element.name==pageRoute);
    return screensRoutes.elementAt(pageIndex);
  }
}