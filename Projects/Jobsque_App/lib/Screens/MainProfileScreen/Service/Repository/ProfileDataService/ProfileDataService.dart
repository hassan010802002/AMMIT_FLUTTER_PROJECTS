
// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../../../../../Config/AppConfig.dart';
import '../../../../../Models/ProfileUpdateDataModel/ProfileDataModel.dart';

class ProfileDataService{
  static Future<ProfileUpdateDataModel?> FetchingProfile({
    String? bio = "",
    String? address = "",
    String? mobile = "",
    String? language = "en",
    String? interested_work = "Work",
    String? offline_place = "Offline",
    String? remote_place = "Remote",
    String? experience = "Experience",
    String? personal_detailed = "Personal",
    String? education = "Education",
}) async {
    try {
      final profileAPIresponse = await http.get(
        Uri.tryParse("${profileUpdateDataApiUrl}bio=tena&address=mohamed&mobile=tena&language=en&interested_work=data&offline_place=data&remote_place=data&experience=data&personal_detailed=data&education=education")!,
        headers: {
          HttpHeaders.contentTypeHeader: "application/json;",
          HttpHeaders.acceptHeader: "application/json;",
          HttpHeaders.authorizationHeader: "Bearer ${ApiTokenKey!}",
        },
      );
      if (profileAPIresponse.statusCode == 200) {
        return ProfileUpdateDataModel.fromJson(jsonDecode(profileAPIresponse.body));
      } else {
        throw Exception("Profile API Failure");
      }
    } on Exception catch (e) {
      print(e.toString());
    }
    return null;
  }
}