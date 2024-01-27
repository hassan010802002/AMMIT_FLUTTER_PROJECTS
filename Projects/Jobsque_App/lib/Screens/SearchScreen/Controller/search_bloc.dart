// ignore_for_file: invalid_use_of_visible_for_testing_member, non_constant_identifier_names

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:jobsque_app/Screens/SearchScreen/Service/Repository/Jobs_Repository/Jobs_Service.dart';

import '../../../Models/Jobs_Model/JobsModel.dart';

part 'search_event.dart';

part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  bool isSuccessJobsData = false;
  bool isSearching = false;
  bool isEmptySearch = false;
  TextEditingController searchingController = TextEditingController();
  int? selectedFilterIndex;
  int? savedJobIdx;
  bool isFilterSelected = false;
  bool isSuccessJobsFilter = false;
  bool isJobSaved = false;
  JobsModel? jobsModel = JobsModel();
  List<Data>? jobsFilterData;
  List<int> selectedFilters = <int>[];
  List<int> savedJobs = <int>[];

  SearchBloc() : super(SearchInitial()) {
    on<FetchingApiData>((event, emit) async {
      try {
        if (searchingController.text.isNotEmpty) {
          jobsModel = await FilterJobsService.JobFetchingService(jobName: event.jobName);
          isSuccessJobsData = true;
          emit(SuccessApiData(jobsModel!));
        }
      } on Exception catch (e) {
        isSuccessJobsData = false;
        emit(FailureApiData());
        print(e.toString());
      }
    });
  }

  void JobSearching({
    String? jobName = "",
    String? jobLocation = "",
    String? jobSalary = "",
  }) {
    add(FetchingApiData(jobName: jobName, jobLocation: jobLocation, jobSalary: jobSalary));
  }

  void CheckingSearch() {
    if (searchingController.text.isNotEmpty) {
      isSearching = true;
      isEmptySearch = true;
      emit(Searching());
    } else {
      isEmptySearch = false;
      isSearching = false;
      emit(IdleSearch());
    }
  }

  void CheckingFilterSelection(int currentSelectedFilterIndex) {
    selectedFilterIndex = currentSelectedFilterIndex;
    isFilterSelected = selectedFilters.contains(currentSelectedFilterIndex);
    if (!isFilterSelected) {
      selectedFilters.add(selectedFilterIndex!);
      emit(FilterSearching());
    } else {
      selectedFilters.remove(selectedFilterIndex!);
      emit(UnFilterSearching());
    }
  }

  void CancelSearch() {
    searchingController.clear();
    isSearching = false;
    isEmptySearch = false;
    isSuccessJobsData = false;
    emit(IdleSearch());
  }

  void ApplyingFilterResult(List<Data>? currentJobsFilter) {
    jobsFilterData = null;
    emit(JobsFilterNone());
    isSuccessJobsFilter = false;
    emit(IdleJobsFilter());
    if (jobsFilterData != currentJobsFilter) {
      emit(JobsFilter());
      isSuccessJobsFilter = true;
      jobsFilterData = currentJobsFilter;
      emit(SuccessFiltration());
    }
    log("Filter Status is $isSuccessJobsFilter and Current State is $state", name: "Filter Info");
  }

  void ChangingJobSaveStatus(int? currentJobIdx) {
    emit(IdleJobSave());
    savedJobIdx = currentJobIdx;
    isJobSaved = savedJobs.contains(currentJobIdx);
    if (!isJobSaved) {
      savedJobs.add(savedJobIdx!);
      emit(SavedJob());
    } else {
      savedJobs.remove(savedJobIdx);
      emit(NotSavedJob());
    }
  }
}
