// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/Controller/profile_security_verification_controller_cubit.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/UI/Widgets/ProfileSecurityVerificationText6/profile_security_verification_text6.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/UI/Widgets/ProfileSecurityVerificationText7/profile_security_verification_text7.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/UI/Widgets/VerificationPinCodeField/verification_pin_code_field.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/UI/Widgets/VerificationResendCodeButton/verification_resend_code_button.dart';

class ProfileSecurityPinCodeVerificationView extends StatefulWidget {
  final ProfileSecurityVerificationControllerCubit profileSecurityVerificationControllerCubit;

  const ProfileSecurityPinCodeVerificationView({super.key, required this.profileSecurityVerificationControllerCubit});

  @override
  _ProfileSecurityPinCodeVerificationViewState createState() => _ProfileSecurityPinCodeVerificationViewState();
}

class _ProfileSecurityPinCodeVerificationViewState extends State<ProfileSecurityPinCodeVerificationView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 35.h,
        ),
        const ProfileSecurityVerificationText6(),
        SizedBox(
          height: 15.0.h,
        ),
        const ProfileSecurityVerificationText7(),
        SizedBox(
          height: 20.h,
        ),
        const VerificationPinCodeField(),
        SizedBox(
          height: 8.0.h,
        ),
        VerificationResendCodeButton(
          profileSecurityVerificationControllerCubit: widget.profileSecurityVerificationControllerCubit,
        ),
      ],
    );
  }
}
