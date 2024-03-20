// ignore_for_file: invalid_use_of_visible_for_testing_member, non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:jobsque_app/Helpers/Local_Cache_Helper/cache_helper.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';

import '../../../Config/AppConfig.dart';
import '../Service/Repository/ProfileUpdateUserDataService/ProfileUpdateUserDataService.dart';

part 'profile_security_change_password_controller_event.dart';

part 'profile_security_change_password_controller_state.dart';

class ProfileSecurityChangePasswordControllerBloc
    extends Bloc<ProfileSecurityChangePasswordControllerEvent, ProfileSecurityChangePasswordControllerState> {

  bool isSuccessUserPasswordUpdate = false;
  bool isCorrectUserOldPassword = false;
  bool isCorrectUserNewPasswordLength = false;
  bool isCorrectUserNewPasswordConfirmation = false;
  TextEditingController? oldPasswordController = TextEditingController();
  TextEditingController? newPasswordController = TextEditingController();
  TextEditingController? confirmPasswordController = TextEditingController();

  ProfileSecurityChangePasswordControllerBloc() : super(ProfileSecurityChangePasswordControllerInitial()) {
    on<ProfileSequrityUpdateUserPasswordEvent>((event, emit) async {
      emit(ProfileSecurityUserPasswordUpdateIdleApiData());
      try {
        isSuccessUserPasswordUpdate = (await ProfileUpdateUserDataService.UpdatingProfileUserDataService(
          userName: CacheHelper.getData(key: UserNameCacheKey.toString()),
          newPassword: newPasswordController!.text,
        ))!;
        if (isSuccessUserPasswordUpdate) {
          CacheHelper.saveData(key: UserPasswordCacheKey, value: newPasswordController!.text);
        }
        emit(ProfileSecurityUserPasswordUpdateSuccessApiData());
      } on Exception catch (e) {
        print(e.toString());
        emit(ProfileSecurityUserPasswordUpdateFailureApiData());
      }
    });
  }

  void CheckingUserOldPassword(String? inputPassword){
    if (inputPassword == CacheHelper.getData(key: UserPasswordCacheKey)) {
      isCorrectUserOldPassword = true;
      emit(ProfileSecurityCorrectUserOldPassword());
    } else{
      isCorrectUserOldPassword = false;
      emit(ProfileSecurityInCorrectUserOldPassword());
    }
  }

  void CheckingUserNewPasswordLength(String? inputPassword){
    if (inputPassword!.length >= 9) {
      isCorrectUserNewPasswordLength = true;
      emit(ProfileSecurityCorrectUserNewPasswordLength());
    } else{
      isCorrectUserNewPasswordLength = false;
      emit(ProfileSecurityInCorrectUserNewPasswordLength());
    }
  }

  void CheckingUserNewPasswordConfirmation(String? inputPassword){
    if (inputPassword! == newPasswordController!.text) {
      isCorrectUserNewPasswordConfirmation = true;
      emit(ProfileSecurityCorrectUserNewPasswordConfirmation());
    } else{
      isCorrectUserNewPasswordConfirmation = false;
      emit(ProfileSecurityInCorrectUserNewPasswordConfirmation());
    }
  }

  void UpdatingUserPassword(BuildContext context){
    if (isCorrectUserNewPasswordConfirmation && isCorrectUserNewPasswordLength) {
      add(ProfileSequrityUpdateUserPasswordEvent());
      if (isSuccessUserPasswordUpdate) {
        NavigatorHelper(context, AppRoutes.mainProfileScreen);
      }  
    }
  }
}
