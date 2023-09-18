import 'package:application_4/Consts/Products_Consts/Products_Consts.dart';
import 'package:application_4/Models/Products_Model/Products_Models.dart';
import 'package:application_4/Services/Products_Services/Products_Services.dart';
import 'package:get/get.dart';

class Products_Controller extends GetxController{
  final apiURL = Products_Consts.baseURL;
  RxList<Products>? productsLists = <Products>[].obs;

  @override
  void onInit() async {
    super.onInit();
    productsLists!.value = await Products_Services.Fetching_API_Data(apiURL);
  }
}