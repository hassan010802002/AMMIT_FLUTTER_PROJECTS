import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'profile_security_change_password_controller_event.dart';

part 'profile_security_change_password_controller_state.dart';

class ProfileSecurityChangePasswordControllerBloc
    extends Bloc<ProfileSecurityChangePasswordControllerEvent, ProfileSecurityChangePasswordControllerState> {
  TextEditingController? oldPasswordController = TextEditingController();
  TextEditingController? newPasswordController = TextEditingController();
  TextEditingController? confirmPasswordController = TextEditingController();

  ProfileSecurityChangePasswordControllerBloc() : super(ProfileSecurityChangePasswordControllerInitial()) {
    on<ProfileSecurityChangePasswordControllerEvent>((event, emit) {});
  }
}
