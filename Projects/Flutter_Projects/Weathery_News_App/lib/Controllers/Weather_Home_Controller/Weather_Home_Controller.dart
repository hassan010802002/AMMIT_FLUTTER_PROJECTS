import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:weathery_news_app/Models/Locations_Model/Locations_Model.dart';
import 'package:weathery_news_app/Models/Weather_Forcast_Model/Weather_Forcast_Model.dart';
import 'package:weathery_news_app/Models/Weather_Model/Weather_Model.dart';
import 'package:weathery_news_app/Services/Reverse_Locations_Service/Reverse_Locations_Service.dart';
import 'package:weathery_news_app/Services/Weather_Forcast_Service/Weather_Forcast_Service.dart';
import 'package:weathery_news_app/Services/Weather_Service/Weather_Service.dart';

class Weather_Home_Controller extends GetxController {
  final Rx<WeatherModel> _currentWeatherModel = WeatherModel().obs;
  final Rx<WeatherForcastModel> _weatherForecastingModel = WeatherForcastModel().obs;
  final Rx<Locations_Model> _reverseLocationModel = Locations_Model().obs;
  final String key = "1631d0695128163a9aa03c897595dca5";
  final RxList _mainModelsList = [].obs;

  @override
  void onInit() async {
    super.onInit();
    final Position currentPosition = await getting_Current_Position();
    await Starting_Weather_Models(currentPosition);
    print("length1 is : ${_mainModelsList.value.length}");
    update();
  }


  RxList get getMyMainModels => _mainModelsList;

  set setMyMainModels(List value) => _mainModelsList.value = value;

  Rx<WeatherModel> get getCurrentWeatherModel => _currentWeatherModel;

  set setCurrentWeatherModel(WeatherModel value) => _currentWeatherModel.value = value;

  Rx<WeatherForcastModel> get getWeatherForecastingModel => _weatherForecastingModel;

  set setWeatherForecastingModel(WeatherForcastModel value) => _weatherForecastingModel.value = value;

  Rx<Locations_Model> get getReverseLocationModel => _reverseLocationModel;

  set setReverseLocationModel(Locations_Model value) => _reverseLocationModel.value = value;

  Starting_Weather_Models(Position position ) async {
    setCurrentWeatherModel = await Weather_Service.Fetching_Weather_Data(position.latitude.toString(), position.longitude.toString(), key);
    setWeatherForecastingModel = await Weather_Forcast_Service.Fetching_Weather_Forcast_Data(position.latitude.toString(), position.longitude.toString(), key);
    setReverseLocationModel = await Reverse_Locations_Service.Fetching_Location_Data(position.latitude.toString(), position.longitude.toString(), key);
    setMyMainModels =[getCurrentWeatherModel.value , getWeatherForecastingModel.value , getReverseLocationModel.value];
    update();
  }

  void Updating_Weather_Models({WeatherModel? weatherModel , WeatherForcastModel? weatherForcastModel , Locations_Model? locations_model}){
    setCurrentWeatherModel = weatherModel!;
    setWeatherForecastingModel = weatherForcastModel!;
    setReverseLocationModel = locations_model!;
    print("testing a model is : ${getCurrentWeatherModel.value.name}");
  }

  getting_Current_Position() async {
    final current_Local_Position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best, forceAndroidLocationManager: true);
    return current_Local_Position;
  }
}
