// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:jobsque_app/Helpers/ProfileLanguageHelper/ProfileLanguageHelper.dart';

part 'profile_language_controller_state.dart';

class ProfileLanguageControllerCubit extends Cubit<ProfileLanguageControllerState> {
  String currentProfileLanguageGroup = "";

  ProfileLanguageControllerCubit() : super(ProfileLanguageControllerInitial());

  void UpdatingProfileLanguage(int langIdx){
    emit(ProfileIdleLanguage());
    currentProfileLanguageGroup = ProfileLanguageHelper.countryTitle(langIdx);
    emit(ProfileUpdateLanguage());
  }
}
