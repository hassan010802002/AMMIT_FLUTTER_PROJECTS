import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'profile_security_change_password_controller_event.dart';
part 'profile_security_change_password_controller_state.dart';

class ProfileSecurityChangePasswordControllerBloc extends Bloc<ProfileSecurityChangePasswordControllerEvent, ProfileSecurityChangePasswordControllerState> {
  ProfileSecurityChangePasswordControllerBloc() : super(ProfileSecurityChangePasswordControllerInitial()) {
    on<ProfileSecurityChangePasswordControllerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
