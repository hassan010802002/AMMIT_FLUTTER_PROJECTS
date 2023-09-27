import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weathery_news_app/Models/Weather_Model/Weather_Model.dart';

class Weather_Service {
  static Future<WeatherModel> Fetching_Weather_Data(String? latValue, String? lonValue, String? apiKey) async {
    final responseData = await http.get(Uri.parse("https://api.openweathermap.org/data/2.5/weather?lat=$latValue&lon=$lonValue&appid=$apiKey"));
    if (responseData.statusCode == 200) {
      final jsonData = jsonDecode(responseData.body);
      final weatherData = WeatherModel.fromJson(jsonData);
      return weatherData;
    } else {
      throw Exception("!!!!!!! _____________ No Response Found __________ Check the API Service Please _____________ !!!!!!!!");
    }
  }
}
