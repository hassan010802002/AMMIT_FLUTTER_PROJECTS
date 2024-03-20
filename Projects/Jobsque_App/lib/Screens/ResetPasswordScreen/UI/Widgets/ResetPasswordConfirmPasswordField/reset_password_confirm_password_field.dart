// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Components/CustomTextField/CustomTextField.dart';
import 'package:jobsque_app/Screens/ResetPasswordScreen/Controller/reset_password_controller_bloc.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ResetPasswordConfirmPasswordField extends StatefulWidget {
  final ResetPasswordControllerBloc resetPasswordControllerBloc;

  const ResetPasswordConfirmPasswordField({super.key, required this.resetPasswordControllerBloc});

  @override
  _ResetPasswordConfirmPasswordFieldState createState() => _ResetPasswordConfirmPasswordFieldState();
}

class _ResetPasswordConfirmPasswordFieldState extends State<ResetPasswordConfirmPasswordField> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResetPasswordControllerBloc, ResetPasswordControllerState>(
      bloc: widget.resetPasswordControllerBloc,
      builder: (context, state) {
        return CustomTextField(
          fillColor: Colors.white,
          opsecure: true,
          textEditingController: TextEditingController(),
          prefixIcon: OctoImage(
            image: const AssetImage("Assets/Images/lock.png"),
            height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 15.0.h,
            alignment: Alignment.center,
            color: const Color(0xff9CA3AF),
            width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 15.0.w,
            fit: BoxFit.contain,
            filterQuality: FilterQuality.high,
          ),
          suffixIcon: OctoImage(
            image: const AssetImage("Assets/Images/eye_slash.png"),
            height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 15.0.h,
            alignment: Alignment.center,
            color: const Color(0xff9CA3AF),
            width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 15.0.w,
            fit: BoxFit.contain,
            filterQuality: FilterQuality.high,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.5,
              strokeAlign: BorderSide.strokeAlignInside,
              color: widget.resetPasswordControllerBloc.isCorrectUserNewPasswordLength &&
                      widget.resetPasswordControllerBloc.isCorrectUserNewPasswordConfirmation
                  ? const Color(0xff60C631)
                  : const Color(0xffFF472B),
            ),
            borderRadius: BorderRadius.circular(15.0.sp),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1.5,
              strokeAlign: BorderSide.strokeAlignOutside,
              color: Color(0xffD1D5DB),
            ),
            borderRadius: BorderRadius.circular(15.0.sp),
          ),
          keyboardType: TextInputType.emailAddress,
          onChanged: (newPassword) {
            widget.resetPasswordControllerBloc.CheckingUserNewPasswordLength(newPassword);
            widget.resetPasswordControllerBloc.CheckingUserNewPasswordConfirmation(newPassword);
          },
        );
      },
    );
  }
}
