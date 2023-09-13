import 'dart:convert';

import 'package:application_3/Models/Movies_Model.dart';
import 'package:http/http.dart' as http;

class Movies_Services{
  
  static Future<List<Results>> Fetching_API_Data(String? url)async{
    final apiData = await http.get(Uri.parse(url!));
    if(apiData.statusCode == 200){
      final jsonData = jsonDecode(apiData.body);
      final myMovies = MoviesModel.fromJson(jsonData);
      return myMovies.results!;
    }else {
      throw Exception("API Data Error!!!!!!!!!!!!!!!!");
    }
  }
}