import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:jobsque_app/Screens/PortfolioScreen/Service/Repository/ProfileUpdatePortfolioDataService/ProfileUpdatePortfolioDataService.dart';

part 'portfolio_controller_event.dart';
part 'portfolio_controller_state.dart';

class PortfolioControllerBloc extends Bloc<PortfolioControllerEvent, PortfolioControllerState> {
  int filesCounter = 0;
  String? portfolioCurrentFile = "";
  bool isSuccessPortfolioUploadCvFileService = false;
  List<String>? portfolioFilesList = <String>[];

  PortfolioControllerBloc() : super(PortfolioControllerInitial()) {
    on<UploadingPortfolioDataEvent>((event, emit) async {
      emit(PortfolioIdleApiUploadCvFile());
      try {
        FilePickerResult? myFile = await FilePicker.platform.pickFiles(dialogTitle: "Upload Your CV");
        if (myFile != null) {
          if (myFile.files[0].name != portfolioCurrentFile && !portfolioFilesList!.contains(myFile.files[0].name)) {
            portfolioCurrentFile = myFile.files[0].name;
            portfolioFilesList!.add(portfolioCurrentFile!);
            filesCounter++;
            isSuccessPortfolioUploadCvFileService =
                (await ProfileUpdatePortfolioDataService.UpdatingProfilePortfolioDataService(cvFilePath: myFile.files[0].path))!;
            log("Portfolio Selected Files Counter $filesCounter", name: "Files Counter");
            emit(PortfolioSuccessApiUploadCvFile());
          }
        } else {
          isSuccessPortfolioUploadCvFileService = false;
          emit(PortfolioFailureApiUploadCvFile());
        }
      } on Exception catch (e) {
        if (kDebugMode) {
          print(e.toString());
        }
        isSuccessPortfolioUploadCvFileService = false;
        emit(PortfolioFailureApiUploadCvFile());
      }
    });
  }
}
