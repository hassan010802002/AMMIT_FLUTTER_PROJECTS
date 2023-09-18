import 'dart:convert';

import 'package:application_4/Models/Products_Model/Products_Models.dart';
import 'package:http/http.dart' as http;

class Products_Services{

  static Future<List<Products>> Fetching_API_Data(String? url)async{
    final apiData = await http.get(Uri.parse(url!));
    if(apiData.statusCode == 200){
      final jsonData = jsonDecode(apiData.body);
      final myProducts = ProductsModels.fromJson(jsonData);
      return myProducts.products!;
    }else {
      throw Exception("API Data Error!!!!!!!!!!!!!!!!");
    }
  }
}