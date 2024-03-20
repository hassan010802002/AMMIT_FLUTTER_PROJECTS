part of 'reset_password_controller_bloc.dart';

abstract class ResetPasswordControllerState extends Equatable {
  const ResetPasswordControllerState();
}

class ResetPasswordControllerInitial extends ResetPasswordControllerState {
  @override
  List<Object> get props => [];
}

class ResetPasswordFirstView extends ResetPasswordControllerState {
  @override
  List<Object> get props => [];
}
class ResetPasswordSecondView extends ResetPasswordControllerState {
  @override
  List<Object> get props => [];
}
class ResetPasswordThirdView extends ResetPasswordControllerState {
  @override
  List<Object> get props => [];
}

class ResetPasswordSuccessApiDataState extends ResetPasswordControllerState {
  @override
  List<Object> get props => [];
}
class ResetPasswordFailureApiDataState extends ResetPasswordControllerState {
  @override
  List<Object> get props => [];
}
class ResetPasswordLoadingApiDataState extends ResetPasswordControllerState {
  @override
  List<Object> get props => [];
}

class ResetPasswordCorrectNewPasswordLength extends ResetPasswordControllerState {
  @override
  List<Object> get props => [];
}
class ResetPasswordInCorrectNewPasswordLength extends ResetPasswordControllerState {
  @override
  List<Object> get props => [];
}

class ResetPasswordCorrectNewPasswordConfirmation extends ResetPasswordControllerState {
  @override
  List<Object> get props => [];
}
class ResetPasswordInCorrectNewPasswordConfirmation extends ResetPasswordControllerState {
  @override
  List<Object> get props => [];
}

class ResetPasswordCorrectUserEmail extends ResetPasswordControllerState {
  @override
  List<Object> get props => [];
}
class ResetPasswordInCorrectUserEmail extends ResetPasswordControllerState {
  @override
  List<Object> get props => [];
}
