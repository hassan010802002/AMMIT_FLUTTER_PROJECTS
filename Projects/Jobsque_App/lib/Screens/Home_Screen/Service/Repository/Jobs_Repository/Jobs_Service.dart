// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Models/Jobs_Model/JobsModel.dart';

class JobsService {
  static Future<JobsModel?> JobFetchingService() async {
    try {
      final jobsAPIresponse = await http.get(
        Uri.tryParse(JobsApiUrl)!,
        headers: <String, String>{
          HttpHeaders.contentTypeHeader: 'application/json',
          HttpHeaders.acceptHeader: "application/json;",
          HttpHeaders.authorizationHeader: "Bearer ${ApiTokenKey!}",
        },
      );
      if (jobsAPIresponse.statusCode == 200) {
        return JobsModel.fromJson(jsonDecode(jobsAPIresponse.body));
      } else {
        throw Exception("Jobs API Failure");
      }
    } on Exception catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
    return null;
  }
}
