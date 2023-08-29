import 'package:get/get.dart';
import 'package:lamaiti/Consts/Splash_Consts.dart';
import 'package:lamaiti/Routes/My_Routes.dart';

class SplashController extends GetxController{

  void Navigate(String pageRoute){
    Get.toNamed(pageRoute);
  }

  @override
  void onInit() {
    super.onInit();
    Future.delayed(Splash_Consts.screen_Delay , () {
      Navigate(MyRoutes.animatedOnBroadingScreen);
    });
  }
}