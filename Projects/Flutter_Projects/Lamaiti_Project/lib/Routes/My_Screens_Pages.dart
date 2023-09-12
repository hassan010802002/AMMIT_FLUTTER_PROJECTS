import 'package:get/get.dart';
import 'package:lamaiti/Routes/My_Routes.dart';
import 'package:lamaiti/Screens/Add_New_Car/Add_New_Car.dart';
import 'package:lamaiti/Screens/Car_Bookings/Car_Bookings.dart';
import 'package:lamaiti/Screens/Car_Details/Car_Details.dart';
import 'package:lamaiti/Screens/Car_Services/Car_Services.dart';
import 'package:lamaiti/Screens/Help_Screen/Help_Screen.dart';
import 'package:lamaiti/Screens/Home_Screen/HomeScreen.dart';
import 'package:lamaiti/Screens/LogIn/LogIn.dart';
import 'package:lamaiti/Screens/Notifications_Screen/Notifications_Screen.dart';
import 'package:lamaiti/Screens/OTP/OTP.dart';
import 'package:lamaiti/Screens/Profile_Screen/Profile_Screen.dart';
import 'package:lamaiti/Screens/Settings_Screen/Settings_Screen.dart';
import 'package:lamaiti/Screens/SignUp/SignUp.dart';
import 'package:lamaiti/Screens/Splash/Splash.dart';
import 'package:lamaiti/Screens/Splash_One/Splash_One.dart';
import 'package:lamaiti/Screens/Terms_Screen/Terms_Screen.dart';
import 'package:lamaiti/Screens/Vicheles/Vicheles.dart';
import 'package:lamaiti/Screens/Wallet_Screen/Wallet_Screen.dart';

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
    GetPage(
      name: MyRoutes.carBookingsScreen,
      page: () => My_Car_Bookings(),
    ),
    GetPage(
      name: MyRoutes.carServicesScreen,
      page: () => MyCarServices(),
    ),
    GetPage(
      name: MyRoutes.carDetailsScreen,
      page: () => MyCar_Details(),
    ),
    GetPage(
      name: MyRoutes.profileScreen,
      page: () => MyProfile(),
    ),
    GetPage(
      name: MyRoutes.walletScreen,
      page: () => MyWallet_Screen(),
    ),
    GetPage(
      name: MyRoutes.settingsScreen,
      page: () => MySettings(),
    ),
    GetPage(
      name: MyRoutes.helpScreen,
      page: () => MyHelp(),
    ),
    GetPage(
      name: MyRoutes.notificationScreen,
      page: () => MyNotifications_Screen(),
    ),
    GetPage(
      name: MyRoutes.termsScreen,
      page: () => MyTerms_Screen(),
    ),
  ];
}
