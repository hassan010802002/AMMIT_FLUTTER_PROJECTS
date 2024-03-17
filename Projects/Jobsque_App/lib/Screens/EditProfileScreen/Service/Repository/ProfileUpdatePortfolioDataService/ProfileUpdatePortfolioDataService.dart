// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../../../../../Config/AppConfig.dart';

class ProfileUpdatePortfolioDataService {
  static Future<bool?> UpdatingProfilePortfolioDataService({
    required String? profileImagePath,
  }) async {
    try {
      var portfolioDataRequest = http.MultipartRequest(
        "POST",
        Uri.tryParse(mainProfileDataApiUrl)!,
      );
      portfolioDataRequest.headers.addAll({HttpHeaders.authorizationHeader: "Bearer ${ApiTokenKey!}"});
      portfolioDataRequest.files.add(await http.MultipartFile.fromPath("image", profileImagePath!));
      bool portfolioDataApiResponse = await portfolioDataRequest.send().then((value) => true).onError((error, stackTrace) => false);
      log("Api Response Result : $portfolioDataApiResponse", name: "Portfolio Data Service Status");
      return portfolioDataApiResponse;
    } on Exception catch (e) {
      print(e.toString());
    }
    return null;
  }
}
