// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/UI/Widgets/ProfileSecurityTwoStepVerificationSwitch/profile_security_two_step_verification_switch.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/UI/Widgets/ProfileSecurityVerificationText2/profile_security_verification_text2.dart';

import '../../../Controller/profile_security_verification_controller_cubit.dart';

class ProfileSecurityTwoStepVerificationActivation extends StatefulWidget {
  final ProfileSecurityVerificationControllerCubit profileSecurityVerificationControllerCubit;

  const ProfileSecurityTwoStepVerificationActivation({super.key, required this.profileSecurityVerificationControllerCubit});

  @override
  _ProfileSecurityTwoStepVerificationActivationState createState() => _ProfileSecurityTwoStepVerificationActivationState();
}

class _ProfileSecurityTwoStepVerificationActivationState extends State<ProfileSecurityTwoStepVerificationActivation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w , vertical: 15.0.h),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffD1D5DB),
          strokeAlign: BorderSide.strokeAlignInside,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(12.0.sp),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const ProfileSecurityVerificationText2(),
          BlocBuilder<ProfileSecurityVerificationControllerCubit, ProfileSecurityVerificationControllerState>(
            bloc: widget.profileSecurityVerificationControllerCubit,
            builder: (context, state) {
              return ProfileSecurityTwoStepVerificationSwitch(
                profileSecurityVerificationControllerCubit: widget.profileSecurityVerificationControllerCubit,
              );
            },
          ),
        ],
      ),
    );
  }
}
