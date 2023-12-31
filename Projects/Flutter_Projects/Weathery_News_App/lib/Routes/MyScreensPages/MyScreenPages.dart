import 'package:get/get.dart';
import 'package:weathery_news_app/Routes/MyPages/MyPages.dart';
import 'package:weathery_news_app/Screens/Weather_Home_Screen/Weather_Home_Screen.dart';
import 'package:weathery_news_app/Screens/Weather_Searching_Screen/Weather_Searching_Screen.dart';
import 'package:weathery_news_app/Screens/Weather_Splash_Screen/Weather_Splash_Screen.dart';

class MyScreenPages {
  static final List<GetPage> screenPages = [
    GetPage(
      name: MyPages.splashScreen,
      page: () => MyWeather_Splash(),
    ),
    GetPage(
      name: MyPages.homeScreen,
      page: () => const MyHome_Weather(),
    ),
    GetPage(
      name: MyPages.searchScreen,
      page: () => const MyWeather_Search(),
    ),
  ];
}
