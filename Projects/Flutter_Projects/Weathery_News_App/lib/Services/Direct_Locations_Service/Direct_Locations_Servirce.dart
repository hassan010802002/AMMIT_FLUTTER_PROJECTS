import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weathery_news_app/Models/Locations_Model/Locations_Model.dart';

class Direct_Locations_Service {
  static Future<Locations_Model> Fetching_Location_Data(String? cityName, String? apiKey, {int? limitCount}) async {
    final responseData = await http.get(Uri.parse(
        "http://api.openweathermap.org/geo/1.0/direct?q=$cityName${limitCount != null ? "&limit=$limitCount" : ""}&appid=$apiKey"));
    if (responseData.statusCode == 200) {
      final jsonData = jsonDecode(responseData.body.toString());
      final reverseLocation = Locations_Model.fromJson(jsonData[0]);
      return reverseLocation;
    } else {
      throw Exception(
          "!!!!!!! _____________ No Response Found __________ Check the API Service Please _____________ !!!!!!!!");
    }
  }
}
