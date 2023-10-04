import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weathery_news_app/Models/Weather_AIR_Quality_Model/AIR_Quality_Model.dart';

class Weathe_AIR_Quality_Service{
  static Future<AirQualityModel> Fetching_AIR_Quality_Data(String? latValue, String? lonValue, String? apiKey) async {
    final responseData = await http.get(Uri.parse("http://api.openweathermap.org/data/2.5/air_pollution?lat=$latValue&lon=$lonValue&appid=$apiKey"));
    if (responseData.statusCode == 200) {
      final jsonData = jsonDecode(responseData.body);
      final airQuality_Data = AirQualityModel.fromJson(jsonData);
      return airQuality_Data;
    } else {
      throw Exception("!!!!!!! _____________ No Response Found __________ Check the API Service Please _____________ !!!!!!!!");
    }
  }
}