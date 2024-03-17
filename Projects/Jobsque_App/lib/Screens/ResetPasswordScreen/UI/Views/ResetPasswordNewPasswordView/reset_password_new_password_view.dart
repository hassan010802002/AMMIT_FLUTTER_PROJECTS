// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/ResetPasswordConfirmPasswordField/reset_password_confirm_password_field.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/ResetPasswordNewPasswordField/reset_password_new_password_field.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/ResetPasswordScreenAppLogo/reset_password_screen_app_logo.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/ResetPasswordText6/reset_password_text6.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/ResetPasswordText7/reset_password_text7.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/ResetPasswordText8/reset_password_text8.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/ResetPasswordText9/reset_password_text9.dart';

import '../../../../SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';

class ResetPasswordNewPasswordView extends StatefulWidget {
  const ResetPasswordNewPasswordView({super.key});

  @override
  _ResetPasswordNewPasswordViewState createState() => _ResetPasswordNewPasswordViewState();
}

class _ResetPasswordNewPasswordViewState extends State<ResetPasswordNewPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BackButtonWidget(),
            const ResetPasswordScreenAppLogo(),
          ],
        ),
        SizedBox(
          height: 50.0.h,
        ),
        const ResetPasswordText6(),
        SizedBox(
          height: 8.0.h,
        ),
        const ResetPasswordText7(),
        SizedBox(
          height: 50.0.h,
        ),
        const ResetPasswordNewPasswordField(),
        SizedBox(
          height: 15.0.h,
        ),
        const ResetPasswordText8(),
        SizedBox(
          height: 25.0.h,
        ),
        const ResetPasswordConfirmPasswordField(),
        SizedBox(
          height: 15.0.h,
        ),
        const ResetPasswordText9(),
      ],
    );
  }
}
