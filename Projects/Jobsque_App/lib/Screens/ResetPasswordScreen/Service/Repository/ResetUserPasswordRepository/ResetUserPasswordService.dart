// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../../../../../Config/AppConfig.dart';

class ResetUserPasswordService {
  static Future<bool?> ResettingUserPasswordService({
    required String? userName,
    required String? newPassword,
  }) async {
    try {
      final bool resetPasswordAPIresponse = await http
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
      log("User Password Update Status: $resetPasswordAPIresponse", name: "User Password Status");
      return resetPasswordAPIresponse;
    } on Exception catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
    return null;
  }
}
