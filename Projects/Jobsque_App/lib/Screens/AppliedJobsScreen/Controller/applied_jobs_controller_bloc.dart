// ignore_for_file: non_constant_identifier_names, invalid_use_of_visible_for_testing_member

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../Models/Jobs_Model/JobsModel.dart';
import '../Service/Repository/Jobs_Repository/Jobs_Service.dart';

part 'applied_jobs_controller_event.dart';
part 'applied_jobs_controller_state.dart';

class AppliedJobsControllerBloc extends Bloc<AppliedJobsControllerEvent, AppliedJobsControllerState> {
  bool isSuccessJobsData = false;
  int? savedJobIdx;
  bool isJobSaved = false;
  int? activeStep = 0;
  List<String> stepsTitles = <String>[
    "Bio Data",
    "Type of Work",
    "Upload Portfolio",
  ];
  List<int> completedSteps = <int>[];
  List<int> idleSteps = <int>[];
  List<int> savedJobs = <int>[];
  JobsModel? jobsModel = JobsModel();

  AppliedJobsControllerBloc() : super(AppliedJobsControllerInitial()) {
    on<AppliedJobsFetchingApiData>((event, emit) async{
      emit(LoadingAppliedJobsApiData());
      try {
        jobsModel = await JobsService.JobFetchingService();
        isSuccessJobsData = true;
        emit(SuccessAppliedJobsApiData(jobsModel!));
      } on Exception catch (e) {
        isSuccessJobsData = false;
        emit(FailureAppliedJobsApiData());
        print(e.toString());
      }
    });
  }

  void ChangingJobSaveStatus(int? currentJobIdx) {
    emit(AppliedJobsIdleSave());
    savedJobIdx = currentJobIdx;
    isJobSaved = savedJobs.contains(currentJobIdx);
    if (!isJobSaved) {
      savedJobs.add(savedJobIdx!);
      emit(AppliedJobsSaveJob());
    } else {
      savedJobs.remove(savedJobIdx);
      emit(AppliedJobsNotSaved());
    }
  }

  void UpdatingActiveStep(int? stepIndex){
    emit(AppliedJobsIdleStep());
    activeStep = stepIndex;
    completedSteps.clear();
    idleSteps.clear();
    for(int counter = 0 ; counter <= 2 ; counter++){
      if (counter > activeStep!) {
        idleSteps.add(counter);
      } else {
        completedSteps.add(counter);
      }
    }
    emit(AppliedJobsUpdatingActiveStep());
  }
}
