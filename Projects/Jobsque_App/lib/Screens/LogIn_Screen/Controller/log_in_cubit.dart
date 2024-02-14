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
  bool isBoxChecked = false;
  bool isCorrectPasswordLength = false;
  bool isUserEntranceState = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LogInCubit() : super(LogInInitial());

  void checkingUserEntrance() {
    if (emailController.text.isNotEmpty || passwordController.text.isNotEmpty) {
      isUserEntranceState = true;
      emit(UserEntranceState());
    } else {
      isUserEntranceState = false;
      emit(EmptyUserEntranceState());
    }
  }

  void changingBoxStatus(bool value) {
    isBoxChecked = value;
    emit(BoxState());
  }

  void checkingUserPasswordLength() {
    if (passwordController.text.isEmpty) {
      isCorrectPasswordLength = false;
      emit(InitialUserPasswordLength());
      return;
    } else if (passwordController.text.length >= 9) {
      isCorrectPasswordLength = true;
      emit(CorrectUserPasswordLength());
      return;
    } else {
      isCorrectPasswordLength = false;
      emit(WrongUserPasswordLength());
      print("Empty User Entrance State");
      return;
    }
  }

  void LogIn(BuildContext context) async {
    int? loginStatusCode;
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      emit(InitialLogInState());
      loginStatusCode = await LogInService.UserLogIn(email: emailController.text, password: passwordController.text);
      if (loginStatusCode == 200) {
        emit(FinalLogInState());
        SnackBar_Helper.showSuccessToast(context, "Successful LogIn");
        Future.delayed(
          const Duration(seconds: 2),
              () => NavigatorHelper(context, AppRoutes.workTypeScreen),
        );
      } else {
        emit(FailureLogInState());
        SnackBar_Helper.showErrorToast(context, "Check Your User INFO");
      }
    }
  }
}
