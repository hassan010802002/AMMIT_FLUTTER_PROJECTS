// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/Controller/reset_password_controller_bloc.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/RequestResetPasswordButton/request_reset_password_button.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/ResetPasswordLogInTextButton/reset_password_log_in_text_button.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/ResetPasswordScreenAppLogo/reset_password_screen_app_logo.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/ResetPasswordScreenText2/reset_password_screen_text2.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/ResetPasswordText3/reset_password_text3.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/ResetPasswordTextField/reset_password_text_field.dart';
import 'package:octo_image/octo_image.dart';
import '../../../../Components/CustomTextField/CustomTextField.dart';
import '../../../../Components/Custom_Button/Custom_Button.dart';
import '../../../../Config/AppConfig.dart';
import '../../../../Helpers/Navigator_Helper/Navigator_Helper.dart';
import '../../../../Routes/App_Routes.dart';
import '../../../SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';
import '../Widgets/ResetPasswordScreenText1/reset_password_screen_text1.dart';

class ResetPasswordMainView extends StatefulWidget {
  final ResetPasswordControllerBloc resetPasswordControllerBloc;

  const ResetPasswordMainView({super.key, required this.resetPasswordControllerBloc});

  @override
  State<ResetPasswordMainView> createState() => _ResetPasswordMainViewState();
}

class _ResetPasswordMainViewState extends State<ResetPasswordMainView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
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
              const ResetPasswordTextField(),
            ],
          ),
          const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ResetPasswordText3(),
                  ResetPasswordLogInTextButton(),
                ],
              ),
              RequestResetPasswordButton(),
            ],
          )
        ],
      ),
    );
  }
}
