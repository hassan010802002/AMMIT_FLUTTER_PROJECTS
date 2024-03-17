// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ProfileSecurityVerificationMethodText2 extends StatefulWidget {
  const ProfileSecurityVerificationMethodText2({super.key});

  @override
  _ProfileSecurityVerificationMethodText2State createState() => _ProfileSecurityVerificationMethodText2State();
}

class _ProfileSecurityVerificationMethodText2State extends State<ProfileSecurityVerificationMethodText2> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Note : Turning this feature will sign you out anywhere \nyou’re currently signed in. We will then require you to "
          "\nenter a verification code the first time you sign with a\n new device or Joby mobile application.",
      style: TextStyle(
        color: const Color(0xff6B7280),
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 28.0.sp,
        fontWeight: FontWeight.w500,
      ),
      softWrap: true,
      textAlign: TextAlign.start,
    );
  }
}
