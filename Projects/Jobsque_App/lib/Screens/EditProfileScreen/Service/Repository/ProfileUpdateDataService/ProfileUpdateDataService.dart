// ignore_for_file: non_constant_identifier_names

import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../../../../../Config/AppConfig.dart';

class ProfileUpdateDataService {
  static Future<bool?> UpdatingProfileDataService({
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
      final profileAPIresponse = await http
          .put(
            Uri.tryParse(
                "${profileUpdateDataApiUrl}bio=${bio!}&address=${address!}&mobile=${mobile!}&language=${language!}&interested_work=${interested_work!}&offline_place=${offline_place!}&remote_place=${remote_place!}&experience=${experience!}&personal_detailed=${personal_detailed!}&education=${education!}")!,
            headers: {
              HttpHeaders.authorizationHeader: "Bearer ${ApiTokenKey!}",
            },
          )
          .then((value) => true)
          .onError((error, stackTrace) => false);
      log("User Profile Data is : $profileAPIresponse", name: "New Profile Data Status");
      return profileAPIresponse;
    } on Exception catch (e) {
      print(e.toString());
    }
    return null;
  }
}
