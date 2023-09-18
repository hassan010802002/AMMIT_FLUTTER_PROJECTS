import 'package:application_3/Routes/App_Pages.dart';
import 'package:application_3/Screens/Home_Screen/Home_Screen.dart';
import 'package:application_3/Screens/Splash_Screen/Splash_Screen.dart';
import 'package:get/get.dart';

class App_Pages_Screen {
  static List<GetPage> screensPages = [
    GetPage(
      name: App_Pages.splashScreen,
      page: () => const MySplash(),
    ),
    GetPage(
      name: App_Pages.homeScreen,
      page: () => const MyMovie_App(),
    ),
  ];
}
