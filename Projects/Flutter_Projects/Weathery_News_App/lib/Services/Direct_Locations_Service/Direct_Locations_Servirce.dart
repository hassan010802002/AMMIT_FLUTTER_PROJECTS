import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weathery_news_app/Models/Locations_Model/Locations_Model.dart';

class Direct_Locations_Service {
  static Future<List<Locations_Model>> Fetching_Location_Data(String? cityName, String? apiKey, {int? limitCount}) async {
    final List<Locations_Model> _myLocations_List = <Locations_Model>[];
    final responseData = await http
        .get(Uri.parse("http://api.openweathermap.org/geo/1.0/direct?q=$cityName${limitCount != null ? "&limit=$limitCount" : ""}&appid=$apiKey"));
    if (responseData.statusCode == 200) {
      final List jsonData = jsonDecode(responseData.body);
      for (var element in jsonData) {
        _myLocations_List.add(Locations_Model.fromJson(element));
      }
      return _myLocations_List;
    } else {
      throw Exception("!!!!!!! _____________ No Response Found __________ Check the API Service Please _____________ !!!!!!!!");
    }
  }
}
