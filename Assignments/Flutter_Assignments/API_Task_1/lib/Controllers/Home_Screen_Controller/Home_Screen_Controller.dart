import 'package:api_task_1/Models/Carts_Models/Carts_Models.dart';
import 'package:api_task_1/Services/Carts_Services/Carts_Services.dart';
import 'package:get/get.dart';

class Home_Screen_Controller extends GetxController{
  RxInt indexId = 0.obs;
  final myCarts = <Carts>[].obs;
  final currentIdx = 0.obs;

  @override
  void onInit() async{
    super.onInit();
    indexId.value = 15;
    myCarts.value = await Carts_Services.Fetching_API_Data(indexId.value);
  }
  void ChangingTabView(int index) async{
    currentIdx.value = index;
    if(index == 0){
      indexId.value = 15;
    }else if(index == 1){
      indexId.value = 22;
    }
    myCarts.value = await Carts_Services.Fetching_API_Data(indexId.value);
  }
}