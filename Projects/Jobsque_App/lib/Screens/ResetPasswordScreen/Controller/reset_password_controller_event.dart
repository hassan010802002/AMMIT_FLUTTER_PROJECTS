part of 'reset_password_controller_bloc.dart';

abstract class ResetPasswordControllerEvent extends Equatable {
  const ResetPasswordControllerEvent();
}

class ResetUserPassword extends ResetPasswordControllerEvent{
  @override
  List<Object?> get props => [];
}