// ignore_for_file: use_build_context_synchronously

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:jobsque_app/Screens/LogIn_Screen/Service/Repository/LogIn_Service/LogIn_Service.dart';
import 'package:meta/meta.dart';

import '../../../Helpers/Navigator_Helper/Navigator_Helper.dart';
import '../../../Helpers/SnackBar_Helper/SnackBar_helper.dart';
import '../../../Routes/App_Routes.dart';

part 'log_in_state.dart';

class LogInCubit extends Cubit<LogInState> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LogInCubit() : super(LogInInitial());

  void checkingUserEntrance() {
    if ( emailController.text.isNotEmpty || passwordController.text.isNotEmpty) {
      emit(UserEntranceState());
      print("User Entrance State");
    } else {
      emit(EmptyUserEntranceState());
      print("Empty User Entrance State");
    }
  }

  void checkingUserPasswordLength() {
    if (passwordController.text.isEmpty) {
      emit(InitialUserPasswordLength());
      return;
    } else if (passwordController.text.length >= 9) {
      emit(CorrectUserPasswordLength());
      print("User Entrance State");
      return;
    } else {
      emit(WrongUserPasswordLength());
      print("Empty User Entrance State");
      return;
    }
  }

  void LogIn(BuildContext context) async {
    int? loginStatusCode;
    if ((state is UserEntranceState || state is CorrectUserPasswordLength) &&
        emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {
      emit(InitialLogInState());
      loginStatusCode = await LogInService.UserLogIn(
          email: emailController.text, password: passwordController.text);
      if (loginStatusCode == 200) {
        emit(FinalLogInState());
        SnackBar_Helper.showSuccessToast(context, "Successful LogIn");
        // Future.delayed(
        //   const Duration(seconds: 2),
        //       () => NavigatorHelper(context, AppRoutes.workTypeScreen),
        // );
      } else {
        emit(FailureLogInState());
        SnackBar_Helper.showErrorToast(context, "Check Your User INFO");
      }
    }
  }
}
