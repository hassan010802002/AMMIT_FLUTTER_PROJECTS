// ignore_for_file: non_constant_identifier_names

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'profile_security_verification_controller_state.dart';

class ProfileSecurityVerificationControllerCubit extends Cubit<ProfileSecurityVerificationControllerState> {
  bool twoStepVerificationStatus = false;
  bool isFirstVerificationView = false;
  bool isSecondVerificationView = false;
  bool isSendingPinCode = false;
  String? verificationMethodValue;

  int pinCodeTimer = 60;

  ProfileSecurityVerificationControllerCubit() : super(ProfileSecurityVerificationControllerInitial());

  void ActivatingTwoStepVerificationSecurity(bool currentStatus) {
    emit(ProfileSecurityIdleTwoStepVerification());
    twoStepVerificationStatus = currentStatus;
    emit(ProfileSecurityActiveTwoStepVerification());
  }

  void ChangingVerificationMainView(BuildContext context) {
    if (!isFirstVerificationView && !isSecondVerificationView && verificationMethodValue == "SMS") {
      isFirstVerificationView = true;
      isSecondVerificationView = false;
      emit(FirstVerificationViewState());
    } else if (isFirstVerificationView && !isSecondVerificationView) {
      isSecondVerificationView = true;
      isFirstVerificationView = false;
      emit(SecondVerificationViewState());
    } else if(isSecondVerificationView){
      Navigator.pop(context);
    }
  }

  void ChangingVerificationMethod(String? verificationValue) {
    verificationMethodValue = verificationValue;
  }

  void ReSendingPinCodeCounter() {
    if (!isSendingPinCode) {
      isSendingPinCode = true;
      Timer.periodic(
        const Duration(seconds: 1),
        (timer) {
          emit(VerificationIdlePinCodeTimer());
          pinCodeTimer--;
          if (pinCodeTimer == 0) {
            isSendingPinCode = false;
            return;
          }
          emit(VerificationUpdatePinCodeTimer());
        },
      );
    }
  }
}
