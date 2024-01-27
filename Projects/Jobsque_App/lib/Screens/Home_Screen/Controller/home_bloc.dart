// ignore_for_file: invalid_use_of_visible_for_testing_member, non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../Models/Jobs_Model/JobsModel.dart';
import '../../../Models/Profile_Model/ProfileModel.dart';
import '../Service/Repository/Jobs_Repository/Jobs_Service.dart';
import '../Service/Repository/Profile_Service/Profile_Service.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  bool isSuccessProfileData = false;
  bool isSuccessJobsData = false;
  bool isJobSaved = false;
  bool isJobSelected = false;
  JobsModel? jobsModel = JobsModel();
  ProfileModel? profileModel = ProfileModel();

  HomeBloc() : super(LoadingApiData()) {
    on<FetchApiDataEvent>((event, emit) async {
      emit(LoadingApiData());
      try {
        profileModel = await ProfileService.FetchingProfile();
        isSuccessProfileData = true;
        emit(SuccessProfileApiData(profileModel!));
        jobsModel = await JobsService.JobFetchingService();
        isSuccessJobsData = true;
        emit(SuccessJobsApiData(jobsModel!));
      } on Exception catch (e) {
        isSuccessProfileData = false;
        isSuccessJobsData = false;
        emit(FailureApiData());
        print(e.toString());
      }
    });
  }

  void SelectingJobType(){
    isJobSelected = !isJobSelected;
    if (isJobSelected) {
      emit(SelectedJob());
    }else{
      emit(UnSelectedJob());
    }
  }
  void SavingJobType(){
    isJobSaved = !isJobSaved;
    if (isJobSaved) {
      emit(SavedJob());
    }else{
      emit(UnSavedJob());
    }
  }
}
