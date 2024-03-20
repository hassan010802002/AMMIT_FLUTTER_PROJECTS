// ignore_for_file: unused_catch_clause

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../Models/Jobs_Model/JobsModel.dart';
import '../Service/Repository/Jobs_Repository/Jobs_Service.dart';

part 'job_saved_controller_event.dart';
part 'job_saved_controller_state.dart';

class JobSavedControllerBloc extends Bloc<JobSavedControllerEvent, JobSavedControllerState> {
  bool isSuccessJobsData = false;
  JobsModel? jobsModel = JobsModel();

  JobSavedControllerBloc() : super(JobSavedControllerInitial()) {
    on<JobSavedFetchingAPIDataEvent>((event, emit) async{
      emit(JobSavedLoadingJobsAPIData());
      try {
        jobsModel = await JobsService.JobFetchingService();
        isSuccessJobsData = true;
        emit(JobSavedSuccessfulJobsAPIData(jobsModel!));
      } on Exception catch (e) {
        isSuccessJobsData = false;
        emit(JobSavedFailureJobsAPIData());
      }
    });
  }
}
