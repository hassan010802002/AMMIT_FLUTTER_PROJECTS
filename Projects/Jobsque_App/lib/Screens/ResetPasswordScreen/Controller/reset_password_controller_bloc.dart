// ignore_for_file: non_constant_identifier_names, invalid_use_of_visible_for_testing_member

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/Service/Repository/ResetUserPasswordRepository/ResetUserPasswordService.dart';

import '../../../Config/AppConfig.dart';
import '../../../Helpers/Local_Cache_Helper/cache_helper.dart';

part 'reset_password_controller_event.dart';
part 'reset_password_controller_state.dart';

class ResetPasswordControllerBloc extends Bloc<ResetPasswordControllerEvent, ResetPasswordControllerState> {
  bool isSuccessResettingUserPassword = false;

  bool isResetPasswordFirstView = false;
  bool isResetPasswordSecondView = false;
  bool isResetPasswordThirdView = false;

  bool isCorrectUserEmail = false;
  bool isCorrectUserNewPasswordLength = false;
  bool isCorrectUserNewPasswordConfirmation = false;
  TextEditingController? userEmailController = TextEditingController();
  TextEditingController? newPasswordController = TextEditingController();
  TextEditingController? confirmPasswordController = TextEditingController();

  ResetPasswordControllerBloc() : super(ResetPasswordControllerInitial()) {
    on<ResetUserPassword>((event, emit) async {
      emit(ResetPasswordLoadingApiDataState());
      try {
        isSuccessResettingUserPassword = (await ResetUserPasswordService.ResettingUserPasswordService(
          userName: CacheHelper.getData(key: UserNameCacheKey.toString()),
          newPassword: newPasswordController!.text,
        ))!;
        if (isSuccessResettingUserPassword) {
          CacheHelper.saveData(key: UserPasswordCacheKey, value: newPasswordController!.text);
        }
        emit(ResetPasswordSuccessApiDataState());
      } on Exception catch (e) {
        if (kDebugMode) {
          print(e.toString());
        }
        emit(ResetPasswordFailureApiDataState());
      }
    });
  }

  void ResettingPasswordChangingView(BuildContext context) {
    if (!isResetPasswordFirstView && !isResetPasswordSecondView && !isResetPasswordThirdView) {
      isResetPasswordFirstView = true;
      isResetPasswordSecondView = false;
      isResetPasswordThirdView = false;
      if (isCorrectUserEmail) {
        emit(ResetPasswordFirstView());
      }
    } else if (isResetPasswordFirstView && !isResetPasswordSecondView && !isResetPasswordThirdView) {
      isResetPasswordFirstView = false;
      isResetPasswordSecondView = true;
      isResetPasswordThirdView = false;
      emit(ResetPasswordSecondView());
    } else if (!isResetPasswordFirstView && isResetPasswordSecondView && !isResetPasswordThirdView) {
      isResetPasswordFirstView = false;
      isResetPasswordSecondView = false;
      isResetPasswordThirdView = true;
      if (isCorrectUserNewPasswordLength && isCorrectUserNewPasswordConfirmation) {
        ResettingUserPassword(context);
        if (isSuccessResettingUserPassword) {
          emit(ResetPasswordThirdView());
        }
      }
    } else {
      Navigator.pop(context);
    }
  }

  void CheckingUserEmail(String? userEmail) {
    if (userEmail == CacheHelper.getData(key: EmailCacheKey)) {
      isCorrectUserEmail = true;
      emit(ResetPasswordCorrectUserEmail());
    } else {
      isCorrectUserEmail = false;
      emit(ResetPasswordInCorrectUserEmail());
    }
  }

  void CheckingUserNewPasswordLength(String? inputPassword) {
    if (inputPassword!.length >= 9) {
      isCorrectUserNewPasswordLength = true;
      emit(ResetPasswordCorrectNewPasswordLength());
    } else {
      isCorrectUserNewPasswordLength = false;
      emit(ResetPasswordInCorrectNewPasswordLength());
    }
  }

  void CheckingUserNewPasswordConfirmation(String? inputPassword) {
    if (inputPassword! == newPasswordController!.text) {
      isCorrectUserNewPasswordConfirmation = true;
      emit(ResetPasswordCorrectNewPasswordConfirmation());
    } else {
      isCorrectUserNewPasswordConfirmation = false;
      emit(ResetPasswordInCorrectNewPasswordConfirmation());
    }
  }

  void ResettingUserPassword(BuildContext context) {
    if (isCorrectUserNewPasswordConfirmation && isCorrectUserNewPasswordLength) {
      add(ResetUserPassword());
    }
  }
}
