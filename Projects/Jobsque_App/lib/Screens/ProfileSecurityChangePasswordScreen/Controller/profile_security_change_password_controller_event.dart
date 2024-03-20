part of 'profile_security_change_password_controller_bloc.dart';

abstract class ProfileSecurityChangePasswordControllerEvent extends Equatable {
  const ProfileSecurityChangePasswordControllerEvent();
}

class ProfileSequrityUpdateUserPasswordEvent extends ProfileSecurityChangePasswordControllerEvent{
  @override
  List<Object?> get props => [];
}
