// ignore_for_file: non_constant_identifier_names, use_build_context_synchronously

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Helpers/SnackBar_Helper/SnackBar_helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';
import 'package:jobsque_app/Screens/Registration_Screen/Service/Repository/Registration_Service/Registration_Service.dart';

part 'registration_state.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  RegistrationCubit() : super(RegistrationInitial());

  void checkingUserEntrance() {
    if (userNameController.text.isNotEmpty || emailController.text.isNotEmpty || passwordController.text.isNotEmpty) {
      emit(UserEntranceState());
      if (kDebugMode) {
        print("User Entrance State");
      }
    } else {
      emit(EmptyUserEntranceState());
      if (kDebugMode) {
        print("Empty User Entrance State");
      }
    }
  }

  void checkingUserPasswordLength() {
    if (passwordController.text.isEmpty) {
      emit(InitialUserPasswordLength());
      return;
    } else if (passwordController.text.length >= 9) {
      emit(CorrectUserPasswordLength());
      if (kDebugMode) {
        print("User Entrance State");
      }
      return;
    } else {
      emit(WrongUserPasswordLength());
      if (kDebugMode) {
        print("Empty User Entrance State");
      }
      return;
    }
  }

  void Registration(BuildContext context) async {
    int? registrationStatusCode;
    if ((state is UserEntranceState || state is CorrectUserPasswordLength) &&
        userNameController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty) {
      emit(InitialRegistrationState());
      registrationStatusCode = await RegistrationService.UserRegistration(
          userName: userNameController.text, email: emailController.text, password: passwordController.text);
      if (registrationStatusCode == 200) {
        emit(FinalRegistrationState());
        SnackBar_Helper.showSuccessToast(context, "Successful Registration");
        Future.delayed(
          const Duration(seconds: 2),
          () => NavigatorHelper(context, AppRoutes.workTypeScreen),
        );
      } else {
        emit(FailureRegistrationState());
        SnackBar_Helper.showErrorToast(context, "Check Your User INFO");
      }
    }
  }
}
