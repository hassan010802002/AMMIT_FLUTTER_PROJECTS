// ignore_for_file: non_constant_identifier_names, invalid_use_of_visible_for_testing_member


import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'reset_password_controller_event.dart';
part 'reset_password_controller_state.dart';

class ResetPasswordControllerBloc extends Bloc<ResetPasswordControllerEvent, ResetPasswordControllerState> {
  bool isResetPasswordFirstView = false;
  bool isResetPasswordSecondView = false;
  bool isResetPasswordThirdView = false;

  ResetPasswordControllerBloc() : super(ResetPasswordControllerInitial()) {
    on<ResetPasswordControllerEvent>((event, emit) {
    });
  }

  void ResettingPasswordChangingView(BuildContext context){
    if (!isResetPasswordFirstView && !isResetPasswordSecondView && !isResetPasswordThirdView) {
      isResetPasswordFirstView = true;
      isResetPasswordSecondView = false;
      isResetPasswordThirdView = false;
      emit(ResetPasswordFirstView());
    }else if (isResetPasswordFirstView && !isResetPasswordSecondView && !isResetPasswordThirdView) {
      isResetPasswordFirstView = false;
      isResetPasswordSecondView = true;
      isResetPasswordThirdView = false;
      emit(ResetPasswordSecondView());
    }else if (!isResetPasswordFirstView && isResetPasswordSecondView && !isResetPasswordThirdView) {
      isResetPasswordFirstView = false;
      isResetPasswordSecondView = false;
      isResetPasswordThirdView = true;
      emit(ResetPasswordThirdView());
    }else{
      Navigator.pop(context);
    }
  }
}
