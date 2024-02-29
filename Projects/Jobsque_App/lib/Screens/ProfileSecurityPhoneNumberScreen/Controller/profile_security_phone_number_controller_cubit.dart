// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'profile_security_phone_number_controller_state.dart';

class ProfileSecurityPhoneNumberControllerCubit extends Cubit<ProfileSecurityPhoneNumberControllerState> {
  bool resetPasswordSwitchValue = false;

  ProfileSecurityPhoneNumberControllerCubit() : super(ProfileSecurityPhoneNumberControllerInitial());

  void ChangingNotificationControlsStatus(bool currentStatus){
    emit(ProfileSecurityIdlePhoneNumberResetPassword());
    resetPasswordSwitchValue = currentStatus;
    emit(ProfileSecurityPhoneNumberResettingPassword());
  }
}
