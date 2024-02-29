import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:file_picker/file_picker.dart';

part 'portfolio_controller_event.dart';

part 'portfolio_controller_state.dart';

class PortfolioControllerBloc extends Bloc<PortfolioControllerEvent, PortfolioControllerState> {
  int filesCounter = 0;
  String? portfolioCurrentFile = "";
  List<String> portfolioFilesList = <String>[];

  PortfolioControllerBloc() : super(PortfolioControllerInitial()) {
    on<PortfolioUploadFileEvent>((event, emit) async {
      emit(PortfolioIdleUploadFile());
      FilePickerResult? myFile = await FilePicker.platform.pickFiles(dialogTitle: "Upload Your File");
      if (myFile != null || myFile!.names.isNotEmpty) {
        if (myFile.files[0].name != portfolioCurrentFile && !portfolioFilesList.contains(myFile.files[0].name)) {
          portfolioCurrentFile = myFile.files[0].name;
          portfolioFilesList.add(portfolioCurrentFile!);
          filesCounter++;
          log("Portfolio Selected Files Counter $filesCounter",name: "Files Counter");
          emit(PortfolioSuccessUploadFile());
        }
      }
    });
  }
}
