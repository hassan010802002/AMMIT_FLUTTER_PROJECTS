import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'reset_password_controller_event.dart';
part 'reset_password_controller_state.dart';

class ResetPasswordControllerBloc extends Bloc<ResetPasswordControllerEvent, ResetPasswordControllerState> {
  ResetPasswordControllerBloc() : super(ResetPasswordControllerInitial()) {
    on<ResetPasswordControllerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
