// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:meta/meta.dart';

part 'splash_controller_state.dart';

class SplashControllerCubit extends Cubit<SplashControllerState> {
  SplashControllerCubit() : super(SplashControllerInitial());

  void Navigation( BuildContext context , String pageRoute) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        NavigatorHelper(context, pageRoute);
      },
    );
  }
}
