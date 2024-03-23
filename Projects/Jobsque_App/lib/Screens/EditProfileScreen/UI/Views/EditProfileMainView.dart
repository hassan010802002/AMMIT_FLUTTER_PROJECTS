// ignore_for_file: camel_case_types, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/EditProfileScreen/UI/Widgets/EditProfileEditProfileImageButton/edit_profile_edit_profile_image_button.dart';
import 'package:jobsque_app/Screens/EditProfileScreen/UI/Widgets/EditProfileEditUserProfileImage/edit_profile_edit_user_profile_image.dart';
import 'package:jobsque_app/Screens/EditProfileScreen/UI/Widgets/EditProfilePhoneFieldWidget/edit_profile_phone_field_widget.dart';
import 'package:jobsque_app/Screens/EditProfileScreen/UI/Widgets/EditProfilePhoneTextWidget/edit_profile_phone_text_widget.dart';
import 'package:jobsque_app/Screens/EditProfileScreen/UI/Widgets/EditProfileSaveButton/edit_profile_save_button.dart';
import 'package:jobsque_app/Screens/EditProfileScreen/UI/Widgets/EditProfileScreenTitleText/edit_profile_screen_title_text.dart';

import '../../../../Components/CustomEditProfileField/CustomEditProfileField.dart';
import '../../../SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';
import '../../Controller/edit_profile_controller_bloc.dart';

class EditProfileMainView extends StatefulWidget {
  final EditProfileControllerBloc editProfileControllerBloc;

  const EditProfileMainView({super.key, required this.editProfileControllerBloc});

  @override
  State<EditProfileMainView> createState() => _EditProfileMainViewState();
}

class _EditProfileMainViewState extends State<EditProfileMainView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
      child: SingleChildScrollView(
        primary: true,
        child: BlocBuilder<EditProfileControllerBloc, EditProfileControllerState>(
          bloc: widget.editProfileControllerBloc,
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BackButtonWidget(),
                        const EditProfileScreenTitleText(),
                        const SizedBox(),
                      ],
                    ),
                    SizedBox(
                      height: 35.0.h,
                    ),
                    EditProfileEditUserProfileImage(editProfileControllerBloc: widget.editProfileControllerBloc),
                    SizedBox(
                      height: 8.0.h,
                    ),
                    EditProfileEditProfileImageButton(editProfileControllerBloc: widget.editProfileControllerBloc),
                    SizedBox(
                      height: 20.0.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomEditProfileField(
                          "Name",
                          textEditingController: widget.editProfileControllerBloc.nameEditingController!,
                        ),
                        SizedBox(
                          height: 20.0.h,
                        ),
                        CustomEditProfileField(
                          "Bio",
                          textEditingController: widget.editProfileControllerBloc.bioEditingController!,
                        ),
                        SizedBox(
                          height: 20.0.h,
                        ),
                        CustomEditProfileField(
                          "Address",
                          textEditingController: widget.editProfileControllerBloc.addressEditingController!,
                        ),
                        SizedBox(
                          height: 20.0.h,
                        ),
                        const EditProfilePhoneTextWidget(),
                        SizedBox(
                          height: 8.0.h,
                        ),
                        EditProfilePhoneFieldWidget(editProfileControllerBloc: widget.editProfileControllerBloc),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 17.0.h,
                ),
                EditProfileSaveButton(editProfileControllerBloc: widget.editProfileControllerBloc),
              ],
            );
          },
        ),
      ),
    );
  }
}
