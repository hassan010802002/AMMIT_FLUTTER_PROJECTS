// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';

part 'base_state.dart';

class BaseCubit extends Cubit<BaseState> {
  int? baseIndex ;

  BaseCubit(BuildContext context , [this.baseIndex = 0]) : super(HomeBase()) {
    if (baseIndex == 0) {
      emit(HomeBase());
    } else if (baseIndex == 1) {
      emit(MessagesBase());
    } else if (baseIndex == 2) {
      emit(ApplicationBase());
    } else if (baseIndex == 3) {
      emit(SavedBase());
    } else {
      emit(ProfileBase());
    }
  }

  void ChangeBase(BuildContext context , int index) {
    baseIndex = index;
    if (index == 0) {
      NavigatorHelper(context, AppRoutes.homeScreen);
      emit(HomeBase());
    } else if (index == 1) {
      NavigatorHelper(context, AppRoutes.messagesScreen);
      emit(MessagesBase());
    } else if (index == 2) {
      NavigatorHelper(context, AppRoutes.appliedJobsScreen);
      emit(ApplicationBase());
    } else if (index == 3) {
      NavigatorHelper(context, AppRoutes.jobSavedScreen);
      emit(SavedBase());
    } else {
      emit(ProfileBase());
    }
  }
}
