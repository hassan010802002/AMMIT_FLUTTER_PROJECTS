// ignore_for_file: camel_case_types, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/Controller/profile_security_verification_controller_cubit.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/UI/Views/ProfileSecurityInitialVerificationView/profile_security_initial_verification_view.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/UI/Views/ProfileSecurityPhonePasswordVerificationView/profile_security_phone_password_verification_view.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/UI/Views/ProfileSecurityPinCodeVerificationView/profile_security_pin_code_verification_view.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/UI/Widgets/ProfileSecurityVerificationSaveButton/profile_security_verification_save_button.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/UI/Widgets/ProfileSecurityVerificationTitle/profile_security_verification_title.dart';

import '../../../SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';

class ProfileSecurityVerificationMainView extends StatefulWidget {
  final ProfileSecurityVerificationControllerCubit profileSecurityVerificationControllerCubit;

  const ProfileSecurityVerificationMainView({super.key, required this.profileSecurityVerificationControllerCubit});

  @override
  State<ProfileSecurityVerificationMainView> createState() => _ProfileSecurityVerificationMainViewState();
}

class _ProfileSecurityVerificationMainViewState extends State<ProfileSecurityVerificationMainView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButtonWidget(),
                  const ProfileSecurityVerificationTitle(),
                  const SizedBox(),
                ],
              ),
              BlocBuilder<ProfileSecurityVerificationControllerCubit, ProfileSecurityVerificationControllerState>(
                bloc: widget.profileSecurityVerificationControllerCubit,
                builder: (context, state) {
                  return !widget.profileSecurityVerificationControllerCubit.isFirstVerificationView &&
                          !widget.profileSecurityVerificationControllerCubit.isSecondVerificationView
                      ? ProfileSecurityInitialVerificationView(
                          profileSecurityVerificationControllerCubit: widget.profileSecurityVerificationControllerCubit,
                        )
                      : widget.profileSecurityVerificationControllerCubit.isFirstVerificationView &&
                              !widget.profileSecurityVerificationControllerCubit.isSecondVerificationView
                          ? ProfileSecurityPhonePasswordVerificationView(
                              profileSecurityVerificationControllerCubit: widget.profileSecurityVerificationControllerCubit,
                            )
                          : ProfileSecurityPinCodeVerificationView(
                              profileSecurityVerificationControllerCubit: widget.profileSecurityVerificationControllerCubit,
                            );
                },
              )
            ],
          ),
          ProfileSecurityVerificationSaveButton(profileSecurityVerificationControllerCubit: widget.profileSecurityVerificationControllerCubit),
        ],
      ),
    );
  }
}
