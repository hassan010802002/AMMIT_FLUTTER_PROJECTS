import 'dart:convert';
import 'package:application_4/Screens/Products_Screen/Products_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LogIn_Services {
  static Post_API_Data(BuildContext context, String? url, String? userName,
      String? password) async {
    final headers = <String, String>{'Content-Type': 'application/json'};
    final body = {
      'username': userName,
      'password': password,
    };
    //'username': 'kminchelle',
    //'password': '0lelplR',
    final apiData = await http.post(
      Uri.parse(url!),
      headers: headers,
      body: jsonEncode(body),
    );
    if (apiData.statusCode == 200) {
      Get.to(MyProducts());
    } else {
      showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Login Error',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(apiData.body),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Dismiss the bottom sheet
                    },
                    child: const Text('OK'),
                  ),
                ],
              ),
            );
          });
    }
  }
}
