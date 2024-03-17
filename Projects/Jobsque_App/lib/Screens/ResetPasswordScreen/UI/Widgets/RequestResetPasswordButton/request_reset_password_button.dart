// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Components/Custom_Button/Custom_Button.dart';
import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/reset_password_controller_bloc.dart';

class RequestResetPasswordButton extends StatefulWidget {
  final ResetPasswordControllerBloc resetPasswordControllerBloc;

  const RequestResetPasswordButton({super.key, required this.resetPasswordControllerBloc});

  @override
  _RequestResetPasswordButtonState createState() => _RequestResetPasswordButtonState();
}

class _RequestResetPasswordButtonState extends State<RequestResetPasswordButton> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordControllerBloc, ResetPasswordControllerState>(
      bloc: widget.resetPasswordControllerBloc,
      builder: (context, state) {
        return CustomButton(
          style: TextStyle(
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontFamily: TextFontFamily,
          ),
          onPressed: () {
            widget.resetPasswordControllerBloc.ResettingPasswordChangingView(context);
          },
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(45.0.sp),
            ),
          ),
          backgroundColor: const MaterialStatePropertyAll(Color(0xff3366FF)),
          buttonText: widget.resetPasswordControllerBloc.isResetPasswordFirstView
              ? "Open email app"
              : widget.resetPasswordControllerBloc.isResetPasswordSecondView
                  ? "Reset password"
                  : widget.resetPasswordControllerBloc.isResetPasswordThirdView
                      ? "Log In"
                      : "Request password reset",
          fixedSize: MaterialStatePropertyAll(
            Size(MediaQuery_Size_Helper.MAX_WIDTH(context)!, MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 16.0.h),
          ),
        );
      },
    );
  }
}
