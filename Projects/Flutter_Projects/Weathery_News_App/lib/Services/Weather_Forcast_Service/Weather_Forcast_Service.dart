import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weathery_news_app/Models/Weather_Forcast_Model/Weather_Forcast_Model.dart';

class Weather_Forcast_Service {
  static Future<WeatherForcastModel> Fetching_Weather_Forcast_Data(String? latValue, String? lonValue, String? apiKey) async {
    final responseData =
        await http.get(Uri.parse("https://api.openweathermap.org/data/2.5/forecast?lat=$latValue&lon=$lonValue&appid=$apiKey"));
    if (responseData.statusCode == 200) {
      final jsonData = jsonDecode(responseData.body);
      final weatherForcastData = WeatherForcastModel.fromJson(jsonData);
      return weatherForcastData;
    } else {
      throw Exception(
          "!!!!!!! _____________ No Response Found __________ Check the API Service Please _____________ !!!!!!!!");
    }
  }
}
