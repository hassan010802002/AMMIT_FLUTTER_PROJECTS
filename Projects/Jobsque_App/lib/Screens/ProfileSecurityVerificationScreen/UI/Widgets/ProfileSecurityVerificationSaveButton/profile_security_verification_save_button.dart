// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/Controller/profile_security_verification_controller_cubit.dart';

import '../../../../../Components/Custom_Button/Custom_Button.dart';
import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ProfileSecurityVerificationSaveButton extends StatefulWidget {
  final ProfileSecurityVerificationControllerCubit profileSecurityVerificationControllerCubit;

  const ProfileSecurityVerificationSaveButton({super.key, required this.profileSecurityVerificationControllerCubit});

  @override
  _ProfileSecurityVerificationSaveButtonState createState() => _ProfileSecurityVerificationSaveButtonState();
}

class _ProfileSecurityVerificationSaveButtonState extends State<ProfileSecurityVerificationSaveButton> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileSecurityVerificationControllerCubit, ProfileSecurityVerificationControllerState>(
      bloc: widget.profileSecurityVerificationControllerCubit,
      builder: (context, state) {
        return CustomButton(
          style: TextStyle(
            fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontFamily: TextFontFamily,
          ),
          onPressed: () {
            widget.profileSecurityVerificationControllerCubit.ChangingVerificationMainView(context);
          },
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(45.0.sp),
            ),
          ),
          backgroundColor: const MaterialStatePropertyAll(Color(0xff3366FF)),
          buttonText: widget.profileSecurityVerificationControllerCubit.isFirstVerificationView
              ? "Send Code"
              : widget.profileSecurityVerificationControllerCubit.isSecondVerificationView
                  ? "Verify"
                  : "Next",
          fixedSize: MaterialStatePropertyAll(
            Size(MediaQuery_Size_Helper.MAX_WIDTH(context)!, MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 16.0.h),
          ),
        );
      },
    );
  }
}
