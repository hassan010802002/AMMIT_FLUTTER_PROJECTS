// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/Controller/profile_security_verification_controller_cubit.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/UI/Widgets/ProfileSecurityVerificationMethodMenu/profile_security_verification_method_menu.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/UI/Widgets/ProfileSecurityVerificationMethodText1/profile_security_verification_method_text1.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/UI/Widgets/ProfileSecurityVerificationMethodText2/profile_security_verification_method_text2.dart';


class ActiveVerificationView extends StatefulWidget {
  final ProfileSecurityVerificationControllerCubit profileSecurityVerificationControllerCubit;
  const ActiveVerificationView({super.key, required this.profileSecurityVerificationControllerCubit});

  @override
  _ActiveVerificationViewState createState() => _ActiveVerificationViewState();
}

class _ActiveVerificationViewState extends State<ActiveVerificationView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProfileSecurityVerificationMethodText1(),
        SizedBox(
          height: 8.0.h,
        ),
        ProfileSecurityVerificationMethodMenu(profileSecurityVerificationControllerCubit: widget.profileSecurityVerificationControllerCubit),
        SizedBox(
          height: 15.0.h,
        ),
        const ProfileSecurityVerificationMethodText2()
      ],
    );
  }
}
