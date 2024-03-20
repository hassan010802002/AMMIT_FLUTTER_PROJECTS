part of 'profile_security_change_password_controller_bloc.dart';

abstract class ProfileSecurityChangePasswordControllerState extends Equatable {
  const ProfileSecurityChangePasswordControllerState();
}

class ProfileSecurityChangePasswordControllerInitial extends ProfileSecurityChangePasswordControllerState {
  @override
  List<Object> get props => [];
}

class ProfileSecurityUserPasswordUpdateSuccessApiData extends ProfileSecurityChangePasswordControllerState {
  @override
  List<Object> get props => [];
}
class ProfileSecurityUserPasswordUpdateFailureApiData extends ProfileSecurityChangePasswordControllerState {
  @override
  List<Object> get props => [];
}
class ProfileSecurityUserPasswordUpdateIdleApiData extends ProfileSecurityChangePasswordControllerState {
  @override
  List<Object> get props => [];
}

class ProfileSecurityInCorrectUserOldPassword extends ProfileSecurityChangePasswordControllerState {
  @override
  List<Object> get props => [];
}
class ProfileSecurityCorrectUserOldPassword extends ProfileSecurityChangePasswordControllerState {
  @override
  List<Object> get props => [];
}

class ProfileSecurityInCorrectUserNewPasswordLength extends ProfileSecurityChangePasswordControllerState {
  @override
  List<Object> get props => [];
}
class ProfileSecurityCorrectUserNewPasswordLength extends ProfileSecurityChangePasswordControllerState {
  @override
  List<Object> get props => [];
}

class ProfileSecurityInCorrectUserNewPasswordConfirmation extends ProfileSecurityChangePasswordControllerState {
  @override
  List<Object> get props => [];
}
class ProfileSecurityCorrectUserNewPasswordConfirmation extends ProfileSecurityChangePasswordControllerState {
  @override
  List<Object> get props => [];
}
