// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:jobsque_app/Models/MainProfileDataModel/MainProfileDataModel.dart';

import '../../../../../Config/AppConfig.dart';

class MainProfileDataService {
  static Future<MainProfileDataModel?> FetchingProfile() async {
    try {
      final profileAPIresponse = await http.get(
        Uri.tryParse(mainProfileDataApiUrl)!,
        headers: {
          HttpHeaders.contentTypeHeader: "application/json;",
          HttpHeaders.acceptHeader: "application/json;",
          HttpHeaders.authorizationHeader: "Bearer ${ApiTokenKey!}",
        },
      );
      if (profileAPIresponse.statusCode == 200) {
        return MainProfileDataModel.fromJson(jsonDecode(profileAPIresponse.body));
      } else {
        throw Exception("Profile API Failure");
      }
    } on Exception catch (e) {
      print(e.toString());
    }
    return null;
  }
}
