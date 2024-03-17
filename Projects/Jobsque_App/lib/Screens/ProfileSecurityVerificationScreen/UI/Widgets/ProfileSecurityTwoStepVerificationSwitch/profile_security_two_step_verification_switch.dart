// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/Controller/profile_security_verification_controller_cubit.dart';

class ProfileSecurityTwoStepVerificationSwitch extends StatefulWidget {
  final ProfileSecurityVerificationControllerCubit profileSecurityVerificationControllerCubit;

  const ProfileSecurityTwoStepVerificationSwitch({super.key, required this.profileSecurityVerificationControllerCubit});

  @override
  _ProfileSecurityTwoStepVerificationSwitchState createState() => _ProfileSecurityTwoStepVerificationSwitchState();
}

class _ProfileSecurityTwoStepVerificationSwitchState extends State<ProfileSecurityTwoStepVerificationSwitch> {
  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      value: widget.profileSecurityVerificationControllerCubit.twoStepVerificationStatus,
      materialTapTargetSize: MaterialTapTargetSize.padded,
      splashRadius: 30.0.sp,
      activeColor: const Color(0xffD6E4FF),
      activeTrackColor: const Color(0xff3366FF),
      inactiveThumbColor: const Color(0xffF4F4F5),
      inactiveTrackColor: const Color(0xffD1D5DB),
      trackOutlineColor: const MaterialStatePropertyAll(Colors.transparent),
      onChanged: (value) {
        widget.profileSecurityVerificationControllerCubit.ActivatingTwoStepVerificationSecurity(value);
      },
    );
  }
}
