// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'job_application_state.dart';

class JobApplicationCubit extends Cubit<JobApplicationState> {
  bool isJobDetailsView = false;
  bool isJobApplyView = false;
  bool isJobApplyCompleteView = false;

  JobApplicationCubit() : super(JobApplicationInitial()){
    if (state == JobApplicationInitial()) {
      isJobDetailsView = true;
      emit(JobApplicationDetailsViewState());
    }
  }

  void ChangingMainView(BuildContext context){
    if (state is JobApplicationDetailsViewState && isJobDetailsView) {
      isJobDetailsView = false;
      isJobApplyCompleteView = false;
      isJobApplyView = true;
      emit(JobApplicationApplyViewState());
      return;
    }

    if (state is JobApplicationApplyViewState && isJobApplyView) {
      isJobDetailsView = false;
      isJobApplyView = false;
      isJobApplyCompleteView = true;
      emit(JobApplicationApplyCompleteViewState());
      return;
    }

    if (state is JobApplicationApplyCompleteViewState && isJobApplyCompleteView) {
      Navigator.pop(context);
      return;
    }
  }
}
