// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/ProfileSecurityPhoneNumberScreen/UI/Widgets/ProfileSecurityPhoneNumberField/profile_security_phone_number_field.dart';
import 'package:jobsque_app/Screens/ProfileSecurityPhoneNumberScreen/UI/Widgets/ProfileSecurityPhoneNumberResettingPasswordSwitch/profile_security_phone_number_resetting_password_switch.dart';
import 'package:jobsque_app/Screens/ProfileSecurityPhoneNumberScreen/UI/Widgets/ProfileSecurityPhoneNumberText2/profile_security_phone_number_text2.dart';

import '../../../SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';
import '../../Controller/profile_security_phone_number_controller_cubit.dart';
import '../Widgets/ProfileSecurityPhoneNumberSaveButton/profile_security_phone_number_save_button.dart';
import '../Widgets/ProfileSecurityPhoneNumberText1/profile_security_phone_number_text1.dart';
import '../Widgets/ProfileSecurityPhoneNumberTitle/profile_security_phone_number_title.dart';

class ProfileSecurityPhoneNumberMainView extends StatefulWidget {
  final ProfileSecurityPhoneNumberControllerCubit profileSecurityPhoneNumberControllerCubit;

  const ProfileSecurityPhoneNumberMainView({super.key, required this.profileSecurityPhoneNumberControllerCubit});

  @override
  State<ProfileSecurityPhoneNumberMainView> createState() => _ProfileSecurityPhoneNumberMainViewState();
}

class _ProfileSecurityPhoneNumberMainViewState extends State<ProfileSecurityPhoneNumberMainView> {
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
                  const ProfileSecurityPhoneNumberTitle(),
                  const SizedBox(),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              const ProfileSecurityPhoneNumberText1(),
              SizedBox(
                height: 8.0.h,
              ),
              const ProfileSecurityPhoneNumberField(),
              SizedBox(
                height: 20.0.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ProfileSecurityPhoneNumberText2(),
                  BlocBuilder<ProfileSecurityPhoneNumberControllerCubit, ProfileSecurityPhoneNumberControllerState>(
                    bloc: widget.profileSecurityPhoneNumberControllerCubit,
                    builder: (context, state) {
                      return ProfileSecurityPhoneNumberResettingPasswordSwitch(
                        profileSecurityPhoneNumberControllerCubit: widget.profileSecurityPhoneNumberControllerCubit,
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          const ProfileSecurityPhoneNumberSaveButton(),
        ],
      ),
    );
  }
}
