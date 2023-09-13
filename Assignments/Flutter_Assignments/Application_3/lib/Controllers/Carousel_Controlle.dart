import 'package:application_3/Models/Movies_Model.dart';
import 'package:application_3/Services/Movies_Services.dart';
import 'package:get/get.dart';

class Carousel_Controller extends GetxController {
  RxList<Results>? dataResults = <Results>[].obs;
  final isLooding = false.obs;

  @override
  void onInit() async {
    super.onInit();
    final moviesList = await Movies_Services.Fetching_API_Data(
        "https://api.themoviedb.org/3/discover/movie?api_key=3062138b73f3537d2f7dad556ee542e5");
    dataResults!.value = moviesList;
  }
}
