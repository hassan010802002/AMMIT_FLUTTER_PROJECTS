// ignore_for_file: non_constant_identifier_names

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:jobsque_app/Models/Jobs_Model/JobsModel.dart';

part 'filter_bottom_sheet_state.dart';

class FilterBottomSheetCubit extends Cubit<FilterBottomSheetState> {
  int? selectedJobTypeFilterIndex;
  bool isJobTypeFilterSelected = false;
  List<int> selectedJobTypeFilters = <int>[];
  TextEditingController jobTitleController = TextEditingController();
  TextEditingController jobLocationController = TextEditingController();
  TextEditingController jobSalaryController = TextEditingController();
  List<Data>? myJobsData;

  FilterBottomSheetCubit() : super(FilterBottomSheetInitial());

  void CheckingJobTypeFilterSelection(int currentJobTypeFilterIndex) {
    selectedJobTypeFilterIndex = currentJobTypeFilterIndex;
    isJobTypeFilterSelected = selectedJobTypeFilters.contains(selectedJobTypeFilterIndex);
    if (!isJobTypeFilterSelected) {
      selectedJobTypeFilters.add(selectedJobTypeFilterIndex!);
      emit(SelectedJobTypeFilter());
    } else {
      selectedJobTypeFilters.remove(selectedJobTypeFilterIndex!);
      emit(UnSelectedJobTypeFilter());
    }
  }

  void Resetting() {
    jobTitleController.clear();
    jobLocationController.clear();
    jobSalaryController.clear();
    selectedJobTypeFilters.clear();
    emit(FilterBottomSheetInitial());
  }

  void JobFiltrationResult(BuildContext context, JobsModel? myJobs) {
    String? filterTitle;
    String? filterLocation;
    String? filterSalary;
    myJobsData = myJobs!.data!.where(
      (element) {
        int? jobSalaryData = int.tryParse(element.salary!);
        String? jobLocationData = element.location;
        String? jobTitleData = element.name;

        if (jobTitleController.text.isNotEmpty) {
          filterTitle = jobTitleController.text;
        }
        if (jobLocationController.text.isNotEmpty) {
          filterLocation = jobLocationController.text;
        }
        if (jobSalaryController.text.isNotEmpty) {
          filterSalary = jobSalaryController.text;
        }

        if (filterTitle != null) {
          if (filterLocation != null && filterSalary != null) {
            if (filterSalary == "Less Than \$5K") {
              return jobTitleData == filterTitle && (jobLocationData == filterLocation) && (jobSalaryData! < 5000);
            } else if (filterSalary == "\$5K - \$10K") {
              return jobTitleData == filterTitle && (jobLocationData == filterLocation) && (jobSalaryData! < 10000 && jobSalaryData >= 5000);
            } else if (filterSalary == "\$10K - \$15K") {
              return jobTitleData == filterTitle && (jobLocationData == filterLocation) && (jobSalaryData! < 15000 && jobSalaryData >= 10000);
            } else if (filterSalary == "\$15K - \$20K") {
              return jobTitleData == filterTitle && (jobLocationData == filterLocation) && (jobSalaryData! < 20000 && jobSalaryData >= 15000);
            } else if (filterSalary == "More Than \$20K") {
              return jobTitleData == filterTitle && (jobLocationData == filterLocation) && (jobSalaryData! >= 20000);
            }
          } else if (filterLocation != null) {
            return jobTitleData == filterTitle && (jobLocationData == filterLocation);
          } else if (filterSalary != null) {
            if (filterSalary == "Less Than \$5K") {
              return jobTitleData == filterTitle && (jobSalaryData! < 5000);
            } else if (filterSalary == "\$5K - \$10K") {
              return jobTitleData == filterTitle && (jobSalaryData! < 10000 && jobSalaryData >= 5000);
            } else if (filterSalary == "\$10K - \$15K") {
              return jobTitleData == filterTitle && (jobSalaryData! < 15000 && jobSalaryData >= 10000);
            } else if (filterSalary == "\$15K - \$20K") {
              return jobTitleData == filterTitle && (jobSalaryData! < 20000 && jobSalaryData >= 15000);
            } else if (filterSalary == "More Than \$20K") {
              return jobTitleData == filterTitle && (jobSalaryData! >= 20000);
            }
          } else {
            return jobTitleData == filterTitle;
          }
        } else if (filterLocation != null) {
          if (filterSalary != null) {
            if (filterSalary == "Less Than \$5K") {
              return jobLocationData == filterLocation && (jobSalaryData! < 5000);
            } else if (filterSalary == "\$5K - \$10K") {
              return jobLocationData == filterLocation && (jobSalaryData! < 10000 && jobSalaryData >= 5000);
            } else if (filterSalary == "\$10K - \$15K") {
              return jobLocationData == filterLocation && (jobSalaryData! < 15000 && jobSalaryData >= 10000);
            } else if (filterSalary == "\$15K - \$20K") {
              return jobLocationData == filterLocation && (jobSalaryData! < 20000 && jobSalaryData >= 15000);
            } else if (filterSalary == "More Than \$20K") {
              return jobLocationData == filterLocation && (jobSalaryData! >= 20000);
            }
          } else {
            return jobLocationData == filterLocation;
          }
        } else if (filterSalary != null) {
          if (filterSalary == "Less Than \$5K") {
            return jobSalaryData! < 5000;
          } else if (filterSalary == "\$5K - \$10K") {
            return jobSalaryData! < 10000 && jobSalaryData >= 5000;
          } else if (filterSalary == "\$10K - \$15K") {
            return jobSalaryData! < 15000 && jobSalaryData >= 10000;
          } else if (filterSalary == "\$15K - \$20K") {
            return jobSalaryData! < 20000 && jobSalaryData >= 15000;
          } else if (filterSalary == "More Than \$20K") {
            return jobSalaryData! >= 20000;
          }
        }
        return true;
      },
    ).toList();
    if (myJobsData != myJobs.data) {
      Navigator.pop(context, myJobsData);
    } else {
      Navigator.pop(context);
    }
    log("Jobs Model Filter Data Length is : ${myJobsData!.length}", name: "Filter Data");
    myJobsData = null;
    return;
  }
}
