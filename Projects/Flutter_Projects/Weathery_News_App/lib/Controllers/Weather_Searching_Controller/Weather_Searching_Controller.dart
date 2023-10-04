// ignore_for_file: non_constant_identifier_names, invalid_use_of_protected_member

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:weathery_news_app/Models/Locations_Model/Locations_Model.dart';
import 'package:weathery_news_app/Models/Weather_AIR_Quality_Model/AIR_Quality_Model.dart';
import 'package:weathery_news_app/Models/Weather_Forcast_Model/Weather_Forcast_Model.dart';
import 'package:weathery_news_app/Models/Weather_Model/Weather_Model.dart';
import 'package:weathery_news_app/Services/Direct_Locations_Service/Direct_Locations_Servirce.dart';
import 'package:weathery_news_app/Services/Weathe_AIR_Quality_Service/Weathe_AIR_Quality_Service.dart';
import 'package:weathery_news_app/Services/Weather_Forcast_Service/Weather_Forcast_Service.dart';
import 'package:weathery_news_app/Services/Weather_Service/Weather_Service.dart';

class Weather_Searching_Controller extends GetxController {
  final Rx<WeatherModel> _currentWeatherModel = WeatherModel().obs;
  final Rx<Locations_Model> _reverseLocationModel = Locations_Model().obs;
  final Rx<WeatherForcastModel> _weatherForecastingModel = WeatherForcastModel().obs;
  final Rx<AirQualityModel> _airQuality_Model = AirQualityModel().obs;
  final String key = "1631d0695128163a9aa03c897595dca5";
  final RxList _mainModelsList = [].obs;
  final RxList<Locations_Model> _currentLocations = <Locations_Model>[].obs;
  final Rx<TextEditingController> textEditingController = TextEditingController().obs;
  final RxString searching_City_Name = "".obs;

  RxList get getMyMainModels => _mainModelsList;

  set setMyMainModels(List value) => _mainModelsList.value = value;

  Rx<WeatherModel> get getCurrentWeatherModel => _currentWeatherModel;

  set setCurrentWeatherModel(WeatherModel value) => _currentWeatherModel.value = value;

  Rx<WeatherForcastModel> get getWeatherForecastingModel => _weatherForecastingModel;

  set setWeatherForecastingModel(WeatherForcastModel value) => _weatherForecastingModel.value = value;

  Rx<Locations_Model> get getLocationModel => _reverseLocationModel;

  set setLocationModel(Locations_Model value) => _reverseLocationModel.value = value;

  RxList<Locations_Model> get getCurrentLocations => _currentLocations;

  set setCurrentLocations(List<Locations_Model> value) => _currentLocations.value = value;

  Rx<AirQualityModel> get getAirQuality_Model => _airQuality_Model;

  set setAirQuality_Model(AirQualityModel value) => _airQuality_Model.value = value;

  Starting_Weather_Models() async {
    searching_City_Name.value = textEditingController.value.text;
    setCurrentLocations = await Direct_Locations_Service.Fetching_Location_Data(searching_City_Name.value, key, limitCount: 5);
    setLocationModel = getCurrentLocations.value[0];
    final String location_Lat = getLocationModel.value.lat.toString();
    final String location_Lon = getLocationModel.value.lon.toString();
    setCurrentWeatherModel = await Weather_Service.Fetching_Weather_Data(location_Lat, location_Lon, key);
    setWeatherForecastingModel = await Weather_Forcast_Service.Fetching_Weather_Forcast_Data(location_Lat, location_Lon, key);
    setAirQuality_Model = await Weathe_AIR_Quality_Service.Fetching_AIR_Quality_Data(location_Lat, location_Lon, key);
    setMyMainModels = [getCurrentWeatherModel.value, getCurrentLocations.value];
    update();
  }

  void Selecting_Weather_Location(int? index) {
    setLocationModel = getCurrentLocations.value.elementAt(index!);
  }

  void Navigating_Back() {
    Get.back();
  }

  void Updating_Direct_Location_Model(int index) async {
    setLocationModel = getCurrentLocations.value.elementAt(index);
    setCurrentWeatherModel =
        await Weather_Service.Fetching_Weather_Data(getLocationModel.value.lat.toString(), getLocationModel.value.lon.toString(), key);
  }

  void Navigation(String? page) {
    Get.toNamed(page!);
  }
}
