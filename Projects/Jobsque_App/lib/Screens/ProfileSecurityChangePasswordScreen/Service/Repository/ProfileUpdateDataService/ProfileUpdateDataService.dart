
// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../../../../../Config/AppConfig.dart';
import '../../../../../Models/ProfileUpdateDataModel/ProfileDataModel.dart';

class ProfileUpdateDataService{
  static Future<ProfileUpdateDataModel?> UpdatingProfileDataService({
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
      final profileAPIresponse = await http.put(
        Uri.tryParse("${profileUpdateDataApiUrl}bio=${bio!}&address=${address!}&mobile=${mobile!}&language=${language!}&interested_work=${interested_work!}&offline_place=${offline_place!}&remote_place=${remote_place!}&experience=${experience!}&personal_detailed=${personal_detailed!}&education=${education!}")!,
        headers: {
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