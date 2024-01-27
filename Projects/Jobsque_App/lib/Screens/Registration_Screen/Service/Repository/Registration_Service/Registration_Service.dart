// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Local_Cache_Helper/cache_helper.dart';

class RegistrationService {
  static Future<int?> UserRegistration({required String? userName, required String? email, required String? password}) async {
    SharedPreferences localCache = await CacheHelper.returningPreference();
    try {
      final http.Response registrationAPIresponse = await http.post(
        Uri.parse("https://project2.amit-learning.com/api/auth/register"),
        headers: <String, String>{
          HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, String>{
            "name": userName!,
            "email": email!,
            "password": password!,
          },
        ),
      );
      if (registrationAPIresponse.statusCode == 200) {
        final responseData = jsonDecode(registrationAPIresponse.body);
        await CacheHelper.saveData(key: registrationTokenKey, value: responseData[responseTokenKey]!);
        registrationToken = CacheHelper.getData(key: registrationTokenKey);
      }
      return registrationAPIresponse.statusCode;
    } on Exception catch (e) {
      print(e.toString());
    }
    return null;
  }
}
