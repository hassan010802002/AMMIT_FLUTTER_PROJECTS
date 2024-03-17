// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Components/CustomPhoneField/CustomPhoneField.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/Controller/profile_security_verification_controller_cubit.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/UI/Widgets/ProfileSecurityVerificationText3/profile_security_verification_text3.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/UI/Widgets/ProfileSecurityVerificationText4/profile_security_verification_text4.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/UI/Widgets/ProfileSecurityVerificationText5/profile_security_verification_text5.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/UI/Widgets/ProfileSecurityVerificationTextPasswordField/profile_security_verification_text_password_field.dart';


class ProfileSecurityPhonePasswordVerificationView extends StatefulWidget {
  final ProfileSecurityVerificationControllerCubit profileSecurityVerificationControllerCubit;

  const ProfileSecurityPhonePasswordVerificationView({super.key, required this.profileSecurityVerificationControllerCubit});

  @override
  _ProfileSecurityPhonePasswordVerificationViewState createState() => _ProfileSecurityPhonePasswordVerificationViewState();
}

class _ProfileSecurityPhonePasswordVerificationViewState extends State<ProfileSecurityPhonePasswordVerificationView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 35.h,
        ),
        const ProfileSecurityVerificationText3(),
        SizedBox(
          height: 5.0.h,
        ),
        const ProfileSecurityVerificationText4(),
        SizedBox(
          height: 15.0.h,
        ),
        CustomPhoneField(controller: TextEditingController()),
        SizedBox(
          height: 20.0.h,
        ),
        const ProfileSecurityVerificationText5(),
        SizedBox(
          height: 8.0.h,
        ),
        const ProfileSecurityVerificationTextPasswordField(),
      ],
    );
  }
}
