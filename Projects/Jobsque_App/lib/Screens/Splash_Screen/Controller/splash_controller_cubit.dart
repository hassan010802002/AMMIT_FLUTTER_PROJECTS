// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../Helpers/Local_Cache_Helper/cache_helper.dart';

part 'splash_controller_state.dart';

class SplashControllerCubit extends Cubit<SplashControllerState> {
  SplashControllerCubit() : super(SplashControllerInitial());

  void MainScreenNavigation(BuildContext context) async {
    SharedPreferences localChache = await CacheHelper.returningPreference();
    Future.delayed(
      const Duration(seconds: 3),
      () async {
        if (localChache.containsKey(registrationTokenKey)) {
          if (localChache.containsKey(MainTokenKey)) {
            NavigatorHelper(context, AppRoutes.homeScreen);
          } else {
            NavigatorHelper(context, AppRoutes.loginScreen);
          }
        } else {
          NavigatorHelper(context, AppRoutes.onBoardingScreen);
        }
      },
    );
  }
}
