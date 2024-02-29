// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class ProfileNotificationScreentTitle extends StatefulWidget {
  const ProfileNotificationScreentTitle({super.key});

  @override
  _ProfileNotificationScreentTitleState createState() => _ProfileNotificationScreentTitleState();
}

class _ProfileNotificationScreentTitleState extends State<ProfileNotificationScreentTitle> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Notification',
      style: TextStyle(
        color: const Color(0xff111827),
        fontFamily: TextFontFamily,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 18.0.sp,
        fontWeight: FontWeight.w700,
      ),
      softWrap: true,
      textAlign: TextAlign.center,
    );
  }
}
