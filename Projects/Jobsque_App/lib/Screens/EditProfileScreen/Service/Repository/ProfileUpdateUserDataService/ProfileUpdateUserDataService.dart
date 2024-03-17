// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../../../../../Config/AppConfig.dart';

class ProfileUpdateUserDataService {
  static Future<bool?> UpdatingProfileUserDataService({
    required String userName,
  }) async {
    try {
      final bool profileAPIresponse = await http
          .post(
            Uri.tryParse(profileUpdateUserDataApiUrl)!,
            headers: {
              HttpHeaders.acceptHeader: "application/json",
              HttpHeaders.authorizationHeader: "Bearer ${ApiTokenKey!}",
            },
            body: <String, String>{
              "name": userName,
            },
          )
          .then((value) => true)
          .onError((error, stackTrace) => false);
      log("Api Response Result : $profileAPIresponse", name: "Profile User Data Service Status");
      return profileAPIresponse;
    } on Exception catch (e) {
      print(e.toString());
    }
    return null;
  }
}
