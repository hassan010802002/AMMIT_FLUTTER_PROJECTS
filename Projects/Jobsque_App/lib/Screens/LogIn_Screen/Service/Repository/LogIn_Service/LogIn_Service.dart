// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart' as http;

class LogInService {
  static int? registrationStatusCode ;
  static Future<int?> UserLogIn({ required String? email, required String? password}) async {
    try {
      final http.Response loginAPIresponse = await http.post(
        Uri.parse("https://project2.amit-learning.com/api/auth/login"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(
          <String, String>{
            "email": email!,
            "password": password!,
          },
        ),
      );
      return loginAPIresponse.statusCode;
    } on Exception catch (e) {
      print(e.toString());
    }
    return null;
  }
}
