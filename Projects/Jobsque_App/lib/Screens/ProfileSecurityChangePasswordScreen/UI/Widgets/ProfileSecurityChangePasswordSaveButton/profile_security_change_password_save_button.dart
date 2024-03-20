// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Components/Custom_Button/Custom_Button.dart';
import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/profile_security_change_password_controller_bloc.dart';

class ProfileSecurityChangePasswordSaveButton extends StatefulWidget {
  final ProfileSecurityChangePasswordControllerBloc profileSecurityChangePasswordControllerBloc;

  const ProfileSecurityChangePasswordSaveButton({super.key, required this.profileSecurityChangePasswordControllerBloc});

  @override
  _ProfileSecurityChangePasswordSaveButtonState createState() => _ProfileSecurityChangePasswordSaveButtonState();
}

class _ProfileSecurityChangePasswordSaveButtonState extends State<ProfileSecurityChangePasswordSaveButton> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileSecurityChangePasswordControllerBloc, ProfileSecurityChangePasswordControllerState>(
      bloc: widget.profileSecurityChangePasswordControllerBloc,
      builder: (context, state) {
        return CustomButton(
          style: TextStyle(
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontFamily: TextFontFamily,
          ),
          onPressed: () {
            widget.profileSecurityChangePasswordControllerBloc.UpdatingUserPassword(context);
          },
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(45.0.sp),
            ),
          ),
          backgroundColor: widget.profileSecurityChangePasswordControllerBloc.isCorrectUserNewPasswordLength &&
                  widget.profileSecurityChangePasswordControllerBloc.isCorrectUserNewPasswordConfirmation
              ? const MaterialStatePropertyAll(Color(0xff3366FF))
              : const MaterialStatePropertyAll(Color(0xffD1D5DB)),
          buttonText: "Save",
          fixedSize: MaterialStatePropertyAll(
            Size(MediaQuery_Size_Helper.MAX_WIDTH(context)!, MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 16.0.h),
          ),
        );
      },
    );
  }
}
