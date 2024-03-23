// ignore_for_file: non_constant_identifier_names, invalid_use_of_visible_for_testing_member

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';
import 'package:jobsque_app/Screens/EditProfileScreen/Service/Repository/ProfileUpdatePortfolioDataService/ProfileUpdatePortfolioDataService.dart';

import '../Service/Repository/ProfileUpdateDataService/ProfileUpdateDataService.dart';
import '../Service/Repository/ProfileUpdateUserDataService/ProfileUpdateUserDataService.dart';

part 'edit_profile_controller_event.dart';
part 'edit_profile_controller_state.dart';

class EditProfileControllerBloc extends Bloc<EditProfileControllerEvent, EditProfileControllerState> {
  bool isSuccessProfileUpdateData = false;
  bool isSuccessProfileUpdateUserData = false;
  bool isSuccessProfileUpdatePortfolioData = false;
  bool isUserProfileImage = false;
  final TextEditingController? nameEditingController = TextEditingController();
  final TextEditingController? bioEditingController = TextEditingController();
  final TextEditingController? addressEditingController = TextEditingController();
  final TextEditingController? phoneEditingController = TextEditingController();
  final ImagePicker picker = ImagePicker();
  String? profileImageFile;

  EditProfileControllerBloc() : super(EditProfileControllerInitial()) {
    on<UpdateUserProfileApiData>((event, emit) async {
      emit(EditProfileLoadingApiData());
      try {
        isSuccessProfileUpdateData = (await ProfileUpdateDataService.UpdatingProfileDataService(
          bio: bioEditingController!.text,
          address: addressEditingController!.text,
          mobile: phoneEditingController!.text,
        ))!;
        emit(EditProfileSuccessApiDataUpdate());
        isSuccessProfileUpdateUserData = (await ProfileUpdateUserDataService.UpdatingProfileUserDataService(
          userName: nameEditingController!.text,
        ))!;
        emit(EditProfileSuccessApiUserDataUpdate());
        isSuccessProfileUpdatePortfolioData = (await ProfileUpdatePortfolioDataService.UpdatingProfilePortfolioDataService(
          profileImagePath: profileImageFile!,
        ))!;
        emit(EditProfileSuccessApiPortfolioDataUpdate());
      } on Exception catch (e) {
        isSuccessProfileUpdateData = false;
        isSuccessProfileUpdateUserData = false;
        emit(EditProfileFailureApiUpdateData());
        if (kDebugMode) {
          print(e.toString());
        }
      }
    });
  }

  void UpdatingUserProfileData(BuildContext context) {
    add(UpdateUserProfileApiData());
    if (isSuccessProfileUpdateData && isSuccessProfileUpdateUserData && isSuccessProfileUpdatePortfolioData) {
      NavigatorHelper(context, AppRoutes.mainProfileScreen);
    }
    log("Current State is : $state", name: "Controller Current State");
  }

  void UpdatingUserProfileImage() async {
    emit(EditProfileIdleProfileImage());
    final XFile? imageFile = await picker.pickImage(source: ImageSource.gallery, imageQuality: 100);
    if (imageFile != null) {
      isUserProfileImage = true;
      profileImageFile = imageFile.path;
      emit(EditProfileUserProfileImage());
    }
  }
}
