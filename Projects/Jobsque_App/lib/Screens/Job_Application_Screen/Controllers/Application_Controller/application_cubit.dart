// ignore_for_file: non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:jobsque_app/Helpers/FixedSearchViewHelper/FixedSearchViewHelper.dart';

part 'application_state.dart';

class ApplicationCubit extends Cubit<ApplicationState> {
  int? activeStep = 0;
  List<String> stepsTitles = <String>[
    "Bio Data",
    "Type of Work",
    "Upload Portfolio",
  ];
  List<int> completedSteps = <int>[];
  List<int> idleSteps = <int>[];
  TextEditingController? nameController = TextEditingController();
  TextEditingController? emailController = TextEditingController();
  TextEditingController? phoneController = TextEditingController();
  int? currentWorkTypeIdx = 0;
  String workTypesGroupValue = FixedSearchViewHelper.titles(0);
  bool isCVUploaded = false;
  bool isFileUploaded = false;
  String? myCVFile;
  String? myOtherFile;

  ApplicationCubit() : super(ApplicationInitial()){
    emit(IdleApplicationStep());
    for(int counter = 0 ; counter <= 2 ; counter++){
      if (counter > activeStep!) {
        idleSteps.add(counter);
      } else if (counter < activeStep!) {
        completedSteps.add(counter);
      }
    }
    emit(UpdatingApplicationStep());
  }

  void ChangingActiveStep(){
    emit(IdleApplicationStep());
    if (activeStep! <= 2 ) {
      completedSteps.add(activeStep!);
      activeStep = activeStep!+1;
      idleSteps.remove(activeStep!);
    }
    emit(UpdatingApplicationStep());
  }
  void UpdatingActiveStep(int? stepIndex){
    emit(IdleApplicationStep());
    activeStep = stepIndex;
    emit(UpdatingApplicationStep());
  }
  void SelectingJobWorkType(int? workTypeIndex){
    emit(IdleJobWorkType());
    currentWorkTypeIdx = workTypeIndex;
    workTypesGroupValue = FixedSearchViewHelper.titles(currentWorkTypeIdx!);
    emit(SelectedJobWorkType());
  }
  void UploadingUserCV() async{
    emit(JobApplyIdleCVUploading());
    FilePickerResult? myCV = await FilePicker.platform.pickFiles(
        dialogTitle: "Upload Your CV"
    );
    if (myCV!.names.isNotEmpty) {
      isCVUploaded = true;
      myCVFile = myCV.files[0].name;
    } else{
      isCVUploaded = false;
    }
    emit(JobApplyCVUploaded());
  }

  void UploadingOtherFile() async{
    emit(JobApplyIdleCVUploading());
    FilePickerResult? myFile = await FilePicker.platform.pickFiles(
        dialogTitle: "Upload Your File"
    );
    if (myFile!.names.isNotEmpty) {
      isFileUploaded = true;
      myOtherFile = myFile.files[0].name;
    } else{
      isFileUploaded = false;
    }
    emit(JobApplyCVUploaded());
  }
  void CancelCVUpload(){
    myCVFile = "";
    isCVUploaded = false;
    emit(JobApplyIdleCVUploading());
  }
}
