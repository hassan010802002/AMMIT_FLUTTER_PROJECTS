// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Controller/profile_security_phone_number_controller_cubit.dart';

class ProfileSecurityPhoneNumberResettingPasswordSwitch extends StatefulWidget {
  final ProfileSecurityPhoneNumberControllerCubit profileSecurityPhoneNumberControllerCubit;

  const ProfileSecurityPhoneNumberResettingPasswordSwitch({super.key, required this.profileSecurityPhoneNumberControllerCubit});

  @override
  _ProfileSecurityPhoneNumberResettingPasswordSwitchState createState() => _ProfileSecurityPhoneNumberResettingPasswordSwitchState();
}

class _ProfileSecurityPhoneNumberResettingPasswordSwitchState extends State<ProfileSecurityPhoneNumberResettingPasswordSwitch> {
  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      value: widget.profileSecurityPhoneNumberControllerCubit.resetPasswordSwitchValue,
      materialTapTargetSize: MaterialTapTargetSize.padded,
      splashRadius: 30.0.sp,
      activeColor: const Color(0xffD6E4FF),
      activeTrackColor: const Color(0xff3366FF),
      inactiveThumbColor: const Color(0xffF4F4F5),
      inactiveTrackColor: const Color(0xffD1D5DB),
      trackOutlineColor: const MaterialStatePropertyAll(Colors.transparent),
      onChanged: (value) {
        widget.profileSecurityPhoneNumberControllerCubit.ChangingNotificationControlsStatus(value);
      },
    );
  }
}
