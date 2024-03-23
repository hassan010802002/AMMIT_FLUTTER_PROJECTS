// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Models/MainProfileDataModel/MainProfileDataModel.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';
import 'package:jobsque_app/Screens/MainProfileScreen/Service/Repository/MainProfileDataService/MainProfileDataService.dart';

import '../../../Models/Profile_Model/ProfileModel.dart';
import '../Service/Repository/Profile_Service/Profile_Service.dart';

part 'main_profile_controller_event.dart';
part 'main_profile_controller_state.dart';

class MainProfileControllerBloc extends Bloc<MainProfileControllerEvent, MainProfileControllerState> {
  bool isSuccessProfile = false;
  bool isSuccessMainProfileData = false;
  ProfileModel? profileModel = ProfileModel();
  MainProfileDataModel? mainProfileDataModel = MainProfileDataModel();

  MainProfileControllerBloc() : super(MainProfileControllerInitial()) {
    on<FetchingProfileApiData>((event, emit) async {
      emit(MainProfileLoadingProfileApiData());
      try {
        profileModel = await ProfileService.FetchingProfile();
        isSuccessProfile = true;
        mainProfileDataModel = await MainProfileDataService.FetchingProfile();
        isSuccessMainProfileData = true;
        emit(MainProfileSuccessProfileApiData(profileModel!));
      } on Exception catch (e) {
        isSuccessProfile = false;
        emit(MainProfileFailureProfileApiData());
        if (kDebugMode) {
          print(e.toString());
        }
      }
    });
  }

  void LogOut(BuildContext context) async {
    NavigatorHelper(context, AppRoutes.loginScreen);
  }
}
