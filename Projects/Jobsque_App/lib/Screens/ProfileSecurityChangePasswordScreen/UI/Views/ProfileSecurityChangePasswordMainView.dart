// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/ProfileSecurityChangePasswordScreen/Controller/profile_security_change_password_controller_bloc.dart';
import 'package:jobsque_app/Screens/ProfileSecurityChangePasswordScreen/UI/Widgets/ProfileSecurityChangePasswordText2/profile_security_change_password_text2.dart';
import 'package:jobsque_app/Screens/ProfileSecurityChangePasswordScreen/UI/Widgets/ProfileSecurityChangePasswordText3/profile_security_change_password_text3.dart';

import '../../../SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';
import '../Widgets/ProfileSecurityChangePasswordSaveButton/profile_security_change_password_save_button.dart';
import '../Widgets/ProfileSecurityChangePasswordText1/profile_security_change_password_text1.dart';
import '../Widgets/ProfileSecurityChangePasswordTitle/profile_security_change_password_title.dart';
import '../Widgets/ProfileSecurityConfirmNewPasswordTextField/profile_security_confirm_new_password_text_field.dart';
import '../Widgets/ProfileSecurityNewPasswordTextField/profile_security_new_password_text_field.dart';
import '../Widgets/ProfileSecurityOldPasswordTextField/profile_security_old_password_text_field.dart';

class ProfileSecurityChangePasswordMainView extends StatefulWidget {
  final ProfileSecurityChangePasswordControllerBloc profileSecurityChangePasswordControllerBloc;

  const ProfileSecurityChangePasswordMainView({super.key, required this.profileSecurityChangePasswordControllerBloc});

  @override
  State<ProfileSecurityChangePasswordMainView> createState() => _ProfileSecurityChangePasswordMainViewState();
}

class _ProfileSecurityChangePasswordMainViewState extends State<ProfileSecurityChangePasswordMainView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BackButtonWidget(),
                    const ProfileSecurityChangePasswordTitle(),
                    const SizedBox(),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                const ProfileSecurityChangePasswordText1(),
                SizedBox(
                  height: 8.0.h,
                ),
                ProfileSecurityOldPasswordTextField(profileSecurityChangePasswordControllerBloc: widget.profileSecurityChangePasswordControllerBloc),
                SizedBox(
                  height: 25.0.h,
                ),
                const ProfileSecurityChangePasswordText2(),
                SizedBox(
                  height: 8.0.h,
                ),
                ProfileSecurityNewPasswordTextField(profileSecurityChangePasswordControllerBloc: widget.profileSecurityChangePasswordControllerBloc),
                SizedBox(
                  height: 25.0.h,
                ),
                const ProfileSecurityChangePasswordText3(),
                SizedBox(
                  height: 8.0.h,
                ),
                ProfileSecurityConfirmNewPasswordTextField(
                    profileSecurityChangePasswordControllerBloc: widget.profileSecurityChangePasswordControllerBloc),
              ],
            ),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 3.0.h,
            ),
            const ProfileSecurityChangePasswordSaveButton(),
          ],
        ),
      ),
    );
  }
}
