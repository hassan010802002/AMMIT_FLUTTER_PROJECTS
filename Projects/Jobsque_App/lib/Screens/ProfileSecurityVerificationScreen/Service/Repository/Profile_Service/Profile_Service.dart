// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../../../../../Config/AppConfig.dart';
import '../../../../../Models/Profile_Model/ProfileModel.dart';

class ProfileService {
  static Future<ProfileModel?> FetchingProfile() async {
    try {
      final profileAPIresponse = await http.get(
        Uri.tryParse(profileApiUrl)!,
        headers: {
          HttpHeaders.contentTypeHeader: "application/json;",
          HttpHeaders.acceptHeader: "application/json;",
          HttpHeaders.authorizationHeader: "Bearer ${ApiTokenKey!}",
        },
      );
      if (profileAPIresponse.statusCode == 200) {
        return ProfileModel.fromJson(jsonDecode(profileAPIresponse.body));
      } else {
        throw Exception("Profile API Failure");
      }
    } on Exception catch (e) {
      print(e.toString());
    }
    return null;
  }
}
