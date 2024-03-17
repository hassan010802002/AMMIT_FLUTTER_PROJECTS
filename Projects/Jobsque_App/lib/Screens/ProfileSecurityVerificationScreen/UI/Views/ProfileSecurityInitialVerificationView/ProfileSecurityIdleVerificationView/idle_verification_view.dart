// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/UI/Widgets/ProfileSecurityIdleVerificationRow1/profile_security_idle_verification_row2.dart';
import 'package:jobsque_app/Screens/ProfileSecurityVerificationScreen/UI/Widgets/ProfileSecurityIdleVerificationRow2/profile_security_idle_verification_row1.dart';

class IdleVerificationView extends StatefulWidget {
  const IdleVerificationView({super.key});

  @override
  _IdleVerificationViewState createState() => _IdleVerificationViewState();
}

class _IdleVerificationViewState extends State<IdleVerificationView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProfileSecurityIdleVerificationRow1(),
        SizedBox(
          height: 20.0.h,
        ),
        const ProfileSecurityIdleVerificationRow2()
      ],
    );
  }
}
