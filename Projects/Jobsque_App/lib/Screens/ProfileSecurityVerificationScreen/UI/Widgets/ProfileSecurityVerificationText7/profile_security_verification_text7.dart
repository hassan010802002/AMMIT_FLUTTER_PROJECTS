// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ProfileSecurityVerificationText7 extends StatefulWidget {
  const ProfileSecurityVerificationText7({super.key});

  @override
  _ProfileSecurityVerificationText7State createState() => _ProfileSecurityVerificationText7State();
}

class _ProfileSecurityVerificationText7State extends State<ProfileSecurityVerificationText7> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Please confirm your account by entering the \nauthorization code sen to ****-****-7234",
      style: TextStyle(
        color: const Color(0xff75788D),
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 26.0.sp,
        fontWeight: FontWeight.w500,
      ),
      softWrap: true,
      textAlign: TextAlign.start,
    );
  }
}
