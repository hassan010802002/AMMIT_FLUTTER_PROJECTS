// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:jobsque_app/Models/Jobs_Model/JobsModel.dart';
import 'package:jobsque_app/Screens/Home_Screen/Controller/home_bloc.dart';
import 'package:jobsque_app/Screens/SearchScreen/Controller/search_bloc.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  bool isJobSaved = false;
  bool isSuccessJobData = false;
  JobsModel? currentJobModel;

  DetailsCubit({required HomeBloc? homeController , required SearchBloc? searchController}) : super(DetailsInitial()){
    if (homeController != null) {
      currentJobModel = homeController.jobsModel;
    } else {
      currentJobModel = searchController!.jobsModel;
    }
    if (homeController == null && searchController == null) {
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
