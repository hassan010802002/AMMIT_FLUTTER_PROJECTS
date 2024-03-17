// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/Controller/reset_password_controller_bloc.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Views/ResetPasswordEmailCheckView/reset_password_email_check_view.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Views/ResetPasswordInitialView/reset_password_initial_view.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Views/ResetPasswordNewPasswordView/reset_password_new_password_view.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Views/ResetPasswordSuccessfulView/reset_password_successful_view.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/RequestResetPasswordButton/request_reset_password_button.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/ResetPasswordLogInTextButton/reset_password_log_in_text_button.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/UI/Widgets/ResetPasswordText3/reset_password_text3.dart';

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
      child: BlocBuilder<ResetPasswordControllerBloc, ResetPasswordControllerState>(
        bloc: widget.resetPasswordControllerBloc,
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (widget.resetPasswordControllerBloc.isResetPasswordFirstView || widget.resetPasswordControllerBloc.isResetPasswordThirdView)
                const SizedBox(),
              widget.resetPasswordControllerBloc.isResetPasswordFirstView
                  ? const ResetPasswordEmailCheckView()
                  : widget.resetPasswordControllerBloc.isResetPasswordSecondView
                      ? const ResetPasswordNewPasswordView()
                      : widget.resetPasswordControllerBloc.isResetPasswordThirdView
                          ? const ResetPasswordSuccessfulView()
                          : const ResetPasswordInitialView(),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  widget.resetPasswordControllerBloc.isResetPasswordFirstView ||
                          widget.resetPasswordControllerBloc.isResetPasswordSecondView ||
                          widget.resetPasswordControllerBloc.isResetPasswordThirdView
                      ? const SizedBox()
                      : const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ResetPasswordText3(),
                            ResetPasswordLogInTextButton(),
                          ],
                        ),
                  RequestResetPasswordButton(resetPasswordControllerBloc: widget.resetPasswordControllerBloc),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
