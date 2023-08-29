import 'package:get/get.dart';
import 'package:lamaiti/Routes/My_Routes.dart';
import 'package:lamaiti/Screens/Add_New_Car/Add_New_Car.dart';
import 'package:lamaiti/Screens/Home_Screen/HomeScreen.dart';
import 'package:lamaiti/Screens/LogIn/LogIn.dart';
import 'package:lamaiti/Screens/OTP/OTP.dart';
import 'package:lamaiti/Screens/SignUp/SignUp.dart';
import 'package:lamaiti/Screens/Splash/Splash.dart';
import 'package:lamaiti/Screens/Splash_One/Splash_One.dart';
import 'package:lamaiti/Screens/Vicheles/Vicheles.dart';

class MyScreensPages {
  static List<GetPage> screensPages = [
    GetPage(
      name: MyRoutes.logoSplashScreen,
      page: () => My_Splash(),
    ),
    GetPage(
      name: MyRoutes.animatedOnBroadingScreen,
      page: () => My_Splash_One(),
    ),
    GetPage(
      name: MyRoutes.logInScreen,
      page: () => MyLogIn(),
    ),
    GetPage(
      name: MyRoutes.signUpScreen,
      page: () => MySignUp(),
    ),
    GetPage(
      name: MyRoutes.otpScreen,
      page: () => My_OTP(),
    ),
    GetPage(
      name: MyRoutes.homeScreen,
      page: () => MyHome(),
    ),
    GetPage(
      name: MyRoutes.newCarScreen,
      page: () => My_New_Car(),
    ),
    GetPage(
      name: MyRoutes.vichelesScreen,
      page: () => MyVicheles(),
    ),
  ];
}
