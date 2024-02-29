import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../Models/Profile_Model/ProfileModel.dart';
import '../Service/Repository/Profile_Service/Profile_Service.dart';

part 'main_profile_controller_event.dart';
part 'main_profile_controller_state.dart';

class MainProfileControllerBloc extends Bloc<MainProfileControllerEvent, MainProfileControllerState> {
  bool isSuccessProfile = false;
  ProfileModel? profileModel = ProfileModel();

  MainProfileControllerBloc() : super(MainProfileControllerInitial()) {
    on<FetchingProfileApiData>((event, emit) async{
      emit(MainProfileLoadingProfileApiData());
      try {
        profileModel = await ProfileService.FetchingProfile();
        isSuccessProfile = true;
        emit(MainProfileSuccessProfileApiData(profileModel!));
      } on Exception catch (e) {
        isSuccessProfile = false;
        emit(MainProfileFailureProfileApiData());
        print(e.toString());
      }
    });
  }
}
