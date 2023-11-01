// ignore_for_file: camel_case_types, non_constant_identifier_names, use_build_context_synchronously

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class Network_Connection_Repository {
  static final ValueNotifier<bool> connectionStatus = ValueNotifier(false);

  static Future<void> init() async {
    ConnectivityResult result = await Connectivity().checkConnectivity();
    isInternetConnected(result);
    Connectivity().onConnectivityChanged.listen(
      (ConnectivityResult result) {
        isInternetConnected(result );
      },
    );
  }

  static Future<bool> isInternetConnected(ConnectivityResult? result ) async{
    if (result == ConnectivityResult.none) {
      connectionStatus.value = false;
      return connectionStatus.value;
    } else if (result == ConnectivityResult.mobile || result == ConnectivityResult.vpn || result == ConnectivityResult.ethernet || result == ConnectivityResult.wifi) {
      final bool isNetworkConnected =await InternetConnectionChecker().hasConnection;
      connectionStatus.value = isNetworkConnected;
      return connectionStatus.value;
    }
    return connectionStatus.value;
  }
}
