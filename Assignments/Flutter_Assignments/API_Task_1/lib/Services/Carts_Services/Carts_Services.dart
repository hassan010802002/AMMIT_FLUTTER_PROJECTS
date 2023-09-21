import 'dart:convert';
import 'package:api_task_1/Models/Carts_Models/Carts_Models.dart';
import 'package:http/http.dart' as http;

class Carts_Services{
  static Future<List<Carts>> Fetching_API_Data(int? indexId)async{
    final baseURL = "https://dummyjson.com/carts/user/$indexId";
    final apiData = await http.get(Uri.parse(baseURL));
    if(apiData.statusCode == 200){
      final jsonData = jsonDecode(apiData.body);
      final myCarts = CartsModels.fromJson(jsonData);
      return myCarts.carts!;
    }else {
      throw Exception("API Data Error!!!!!!!!");
    }
  }
}