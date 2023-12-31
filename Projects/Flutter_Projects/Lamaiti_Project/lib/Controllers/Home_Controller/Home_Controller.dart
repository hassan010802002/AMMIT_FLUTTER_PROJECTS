import 'package:get/get.dart';
import 'package:lamaiti/Routes/My_Routes.dart';

class Home_Controller extends GetxController{
  var currentIdx = 0.obs;


  Home_Controller(this.currentIdx);

  void Navigate(dynamic page){
    Get.toNamed(page);
  }
  void Navigate_in_PopUp(dynamic page){
    Get.offAndToNamed(page);
  }

  dynamic BottomNavBarItemOnTap(int index) {
    currentIdx.value = index;
    if(currentIdx.value == 0){
      Navigate(MyRoutes.homeScreen);
    }else if (currentIdx.value == 1){
      Navigate(MyRoutes.vichelesScreen);
    }else if(currentIdx.value == 2){
      Navigate(MyRoutes.carBookingsScreen);
    }else if(currentIdx.value == 3){
      Navigate(MyRoutes.profileScreen);
    }
  }
}