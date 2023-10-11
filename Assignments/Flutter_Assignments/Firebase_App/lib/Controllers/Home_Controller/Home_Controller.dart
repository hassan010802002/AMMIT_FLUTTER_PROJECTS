import 'package:firebase_app/Models/User_Token_Model/user_token.dart';
import 'package:firebase_app/Services/Registeration_Services/Registeration_Services.dart';
import 'package:get/get.dart';

class Home_Controller extends GetxController {
  final firebaseData = <UserModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    getAllData();
  }

  getAllData() async {
    try {
      final data = await Registeration_Services.FetchingFirebaseData();
      firebaseData.assignAll(data);
    } catch (e) {
      print(e);
    }
  }
}