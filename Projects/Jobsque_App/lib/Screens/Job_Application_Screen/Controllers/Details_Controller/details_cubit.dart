// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:jobsque_app/Models/Jobs_Model/JobsModel.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  bool isJobSaved = false;
  bool isSuccessJobData = false;
  Data? currentJobDetailsData;
  final TextEditingController? fixedJobTitlesController = TextEditingController();

  DetailsCubit({required this.currentJobDetailsData }) : super(DetailsInitial()){
    if (currentJobDetailsData == null) {
      isSuccessJobData = false;
    } else {
      isSuccessJobData = true;
    }
  }

  void ChangingJobSaveStatus(){
    emit(JobDetailsIdleSaveState());
    if (isJobSaved) {
      isJobSaved = !isJobSaved;
      emit(JobDetailsSaveNoneState());
    } else {
      isJobSaved = !isJobSaved;
      emit(JobDetailsSaveState());
    }
  }
}
