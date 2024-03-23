import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Local_Cache_Helper/cache_helper.dart';
import 'package:jobsque_app/JobsqueApp.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper.init();
  SharedPreferences localChache = await CacheHelper.returningPreference();
  if (ApiTokenKey == null && localChache.containsKey(MainTokenKey)) {
    ApiTokenKey = localChache.get(MainTokenKey) as String?;
    if (kDebugMode) {
      print("My API Token is: $ApiTokenKey");
    }
  }
  if (registrationToken == null && localChache.containsKey(registrationTokenKey)) {
    registrationToken = localChache.get(registrationTokenKey) as String?;
    if (kDebugMode) {
      print("My Registration Token is: $registrationToken");
    }
  }
  runApp(const MyApp());
}
