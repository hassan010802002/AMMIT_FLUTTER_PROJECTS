// ignore_for_file: non_constant_identifier_names, file_names

import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:jobsque_app/Config/AppConfig.dart';

import '../../../../../Helpers/Local_Cache_Helper/cache_helper.dart';

class LogInService {
  static Future<int?> UserLogIn({required String? email, required String? password}) async {
    try {
      final http.Response loginAPIresponse = await http.post(
        Uri.tryParse(loginApiUrl)!,
        headers: <String, String>{
          HttpHeaders.contentTypeHeader: 'application/json',
        },
        body: jsonEncode(
          <String, String>{
            "email": email!,
            "password": password!,
          },
        ),
      );
      if (loginAPIresponse.statusCode == 200) {
        final responseData = jsonDecode(loginAPIresponse.body);
        ApiTokenKey = responseData[responseTokenKey]!;
        await CacheHelper.saveData(key: MainTokenKey, value: responseData[responseTokenKey]!);
        await CacheHelper.saveData(key: EmailCacheKey, value: responseData["user"][EmailKey]!);
        await CacheHelper.saveData(key: UserNameCacheKey, value: responseData["user"][UserNameKey]!);
        ApiTokenKey = CacheHelper.getData(key: MainTokenKey);
      }
      return loginAPIresponse.statusCode;
    } on Exception catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
    return null;
  }
}
