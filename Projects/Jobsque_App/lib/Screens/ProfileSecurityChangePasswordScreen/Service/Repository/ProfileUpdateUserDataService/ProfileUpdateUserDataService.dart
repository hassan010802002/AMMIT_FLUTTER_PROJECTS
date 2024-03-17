// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../../../../../Config/AppConfig.dart';
import '../../../../../Models/ProfileUpdateUserDataModel/ProfileDataUpdateModel.dart';

class ProfileUpdateUserDataService {
  static Future<ProfileUpdateUserDataModel?> UpdatingProfileUserDataService({
    String? userName,
}) async {
    try {
      final profileAPIresponse = await http.post(
        Uri.tryParse(profileUpdateUserDataApiUrl)!,
        headers: {
          HttpHeaders.acceptHeader : "application/json",
          HttpHeaders.contentTypeHeader : "multipart/form-data",
          HttpHeaders.authorizationHeader: "Bearer ${ApiTokenKey!}",
        },
        body: jsonEncode(
          <String , String>{
            "name" : userName!,
            "password" : "12345",
          }
        ),
      );
      if (profileAPIresponse.statusCode == 200) {
        print(profileAPIresponse.body);
        return ProfileUpdateUserDataModel.fromJson(jsonDecode(profileAPIresponse.body));
      } else {
        throw Exception("Profile API Failure");
      }
    } on Exception catch (e) {
      print(e.toString());
    }
    return null;
  }
}