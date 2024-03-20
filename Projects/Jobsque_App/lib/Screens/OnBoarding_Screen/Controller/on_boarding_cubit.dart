// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Local_Cache_Helper/cache_helper.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';

part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());
  int viewIndex = 0;

  void ChangeOnBoardingView() {
    emit(ViewInitialState());
    if (viewIndex == 2) {
      viewIndex = 0;
    } else {
      viewIndex++;
    }
    emit(ViewChangeState());
  }

  void SkippingButton(BuildContext context) {
    if (CacheHelper.preferences!.containsKey("API_TOKEN_KEY") && ApiTokenKey != null && CacheHelper.getData(key: "API_TOKEN_KEY") != null) {
      NavigatorHelper(context, AppRoutes.homeScreen);
    } else {
      NavigatorHelper(context, AppRoutes.loginScreen);
    }
  }
}
