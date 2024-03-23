import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'profile_security_controller_state.dart';

class ProfileSecurityControllerCubit extends Cubit<ProfileSecurityControllerState> {
  ProfileSecurityControllerCubit() : super(ProfileSecurityControllerInitial());
}
