// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Models/Jobs_Model/JobsModel.dart';

class FilterJobsService {
  static Future<JobsModel?> JobFetchingService({String? jobName = "", String? jobLocation = "", String? salary = ""}) async {
    try {
      log("Job Name is: $jobName", name: "job_name");
      final jobsAPIresponse = await http.post(
        Uri.tryParse(filterJobsApiUrl)!,
        headers: <String, String>{
          HttpHeaders.authorizationHeader: 'Bearer ${ApiTokenKey!}',
        },
        body: jsonEncode(
          <String, String>{
            "name": jobName!,
            "location": jobLocation!,
            "salary": salary!,
          },
        ),
      );
      if (jobsAPIresponse.statusCode == 200) {
        return JobsModel.fromJson(jsonDecode(jobsAPIresponse.body));
      } else {
        throw Exception("Jobs API Failure");
      }
    } on Exception catch (e) {
      print(e.toString());
    }
    return null;
  }
}
