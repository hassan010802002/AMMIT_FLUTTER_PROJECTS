import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weathery_news_app/Models/Locations_Model/Locations_Model.dart';

class Reverse_Locations_Service {
  static Future<Locations_Model> Fetching_Location_Data(String? latValue, String? lonValue, String? apiKey,
      {String? limitCount}) async {
    final responseData = await http.get(Uri.parse(
        "http://api.openweathermap.org/geo/1.0/reverse?lat=$latValue&lon=$lonValue${limitCount != null ? "&limit=$limitCount" : ""}&appid=$apiKey"));
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
