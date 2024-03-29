// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../../../../Config/AppConfig.dart';

class ProfileUpdateUserDataService {
  static Future<bool?> UpdatingProfileUserDataService({
    required String? userName,
    required String? newPassword,
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
              "name": userName!,
              "password": newPassword!,
            },
          )
          .then((value) => true)
          .onError((error, stackTrace) => false);
      log("User Password Update Status: $profileAPIresponse", name: "User Password Status");
      return profileAPIresponse;
    } on Exception catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
    return null;
  }
}
