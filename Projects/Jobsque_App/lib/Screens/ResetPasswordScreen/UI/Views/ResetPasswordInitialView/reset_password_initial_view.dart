// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/Controller/reset_password_controller_bloc.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/ResetPasswordScreenAppLogo/reset_password_screen_app_logo.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/ResetPasswordScreenText1/reset_password_screen_text1.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/ResetPasswordScreenText2/reset_password_screen_text2.dart';

import '../../../../SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';
import '../../Widgets/ResetPasswordTextField/reset_password_text_field.dart';

class ResetPasswordInitialView extends StatefulWidget {
  final ResetPasswordControllerBloc resetPasswordControllerBloc;
  const ResetPasswordInitialView({super.key, required this.resetPasswordControllerBloc});

  @override
  _ResetPasswordInitialViewState createState() => _ResetPasswordInitialViewState();
}

class _ResetPasswordInitialViewState extends State<ResetPasswordInitialView> {
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
        const ResetPasswordScreenText1(),
        const ResetPasswordScreenText2(),
        SizedBox(
          height: 40.0.h,
        ),
        ResetPasswordTextField(resetPasswordControllerBloc: widget.resetPasswordControllerBloc),
      ],
    );
  }
}
