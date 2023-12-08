// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart' as http;

class RegistrationService {
  static int? registrationStatusCode ;
  static Future<int?> UserRegistration({required String? userName, required String? email, required String? password}) async {
    try {
      final http.Response registrationAPIresponse = await http.post(
        Uri.parse("https://project2.amit-learning.com/api/auth/register"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, String>{
            "name": userName!,
            "email": email!,
            "password": password!,
          },
        ),
      );
      return registrationAPIresponse.statusCode;
    } on Exception catch (e) {
      print(e.toString());
    }
    return null;
  }
}
