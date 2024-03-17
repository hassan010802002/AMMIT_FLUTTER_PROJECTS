// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/Controller/profile_security_verification_controller_cubit.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/UI/Views/ProfileSecurityInitialVerificationView/ProfileSecurityActiveVerificationView/active_verification_view.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/UI/Views/ProfileSecurityInitialVerificationView/ProfileSecurityIdleVerificationView/idle_verification_view.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/UI/Widgets/ProfileSecurityTwoStepVerificationActivation/profile_security_two_step_verification_activation.dart';

class ProfileSecurityInitialVerificationView extends StatefulWidget {
  final ProfileSecurityVerificationControllerCubit profileSecurityVerificationControllerCubit;

  const ProfileSecurityInitialVerificationView({super.key, required this.profileSecurityVerificationControllerCubit});

  @override
  _ProfileSecurityInitialVerificationViewState createState() => _ProfileSecurityInitialVerificationViewState();
}

class _ProfileSecurityInitialVerificationViewState extends State<ProfileSecurityInitialVerificationView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 35.h,
        ),
        ProfileSecurityTwoStepVerificationActivation(
          profileSecurityVerificationControllerCubit: widget.profileSecurityVerificationControllerCubit,
        ),
        SizedBox(
          height: 35.0.h,
        ),
        BlocBuilder<ProfileSecurityVerificationControllerCubit, ProfileSecurityVerificationControllerState>(
          bloc: widget.profileSecurityVerificationControllerCubit,
          builder: (context, state) {
            return widget.profileSecurityVerificationControllerCubit.twoStepVerificationStatus
                ? ActiveVerificationView(profileSecurityVerificationControllerCubit: widget.profileSecurityVerificationControllerCubit)
                : const IdleVerificationView();
          },
        ),
      ],
    );
  }
}
