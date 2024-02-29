// ignore_for_file: non_constant_identifier_names, invalid_use_of_visible_for_testing_member

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jobsque_app/Helpers/Navigator_Helper/Navigator_Helper.dart';
import 'package:jobsque_app/Routes/App_Routes.dart';

import '../../../Models/ProfileUpdateDataModel/ProfileDataModel.dart';
import '../../../Models/ProfileUpdateUserDataModel/ProfileDataUpdateModel.dart';
import '../Service/Repository/ProfileUpdateDataService/ProfileUpdateDataService.dart';
import '../Service/Repository/ProfileUpdateUserDataService/ProfileUpdateUserDataService.dart';

part 'edit_profile_controller_event.dart';

part 'edit_profile_controller_state.dart';

class EditProfileControllerBloc extends Bloc<EditProfileControllerEvent, EditProfileControllerState> {
  bool isSuccessProfileUpdateData = false;
  bool isSuccessProfileUpdateUserData = false;
  bool isUserProfileImage = false;
  final TextEditingController? nameEditingController = TextEditingController();
  final TextEditingController? bioEditingController = TextEditingController();
  final TextEditingController? addressEditingController = TextEditingController();
  final TextEditingController? phoneEditingController = TextEditingController();
  final ImagePicker picker = ImagePicker();
  String? profileImageFile;
  ProfileUpdateDataModel? profileUpdateDataModel = ProfileUpdateDataModel();
  ProfileUpdateUserDataModel? profileUpdateUserDataModel = ProfileUpdateUserDataModel();

  EditProfileControllerBloc() : super(EditProfileControllerInitial()) {
    on<UpdateUserProfileApiData>((event, emit) async {
      emit(EditProfileLoadingApiData());
      try {
        profileUpdateDataModel = await ProfileUpdateDataService.UpdatingProfileDataService(
          bio: bioEditingController!.text,
          address: addressEditingController!.text,
          mobile: phoneEditingController!.text,
        );
        isSuccessProfileUpdateData = true;
        if (nameEditingController!.text.isNotEmpty) {
          profileUpdateUserDataModel = await ProfileUpdateUserDataService.UpdatingProfileUserDataService(
            userName: nameEditingController!.text,
          );
          print(profileUpdateUserDataModel!.data!.name);
          print(nameEditingController?.text);
          isSuccessProfileUpdateUserData = true;
        }
        log("Profile Update User Data Service Status : $isSuccessProfileUpdateUserData", name: "Update Profile User Data");
        emit(EditProfileSuccessApiUpdateData());
      } on Exception catch (e) {
        isSuccessProfileUpdateData = false;
        isSuccessProfileUpdateUserData = false;
        emit(EditProfileFailureApiUpdateData());
        print(e.toString());
      }
    });
  }

  void UpdatingUserProfileData(BuildContext context) {
    add(UpdateUserProfileApiData());
    // log("Profile Update Data Service Status : $isSuccessProfileUpdateData" , name: "Update Profile Data");
    if (isSuccessProfileUpdateUserData) {
      NavigatorHelper(context, AppRoutes.mainProfileScreen);
    }
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
