// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/Registration_Screen/Consts/RegistrationConsts.dart';

class Divider2Widget extends StatefulWidget {
  const Divider2Widget({Key? key}) : super(key: key);

  @override
  _Divider2WidgetState createState() => _Divider2WidgetState();
}

class _Divider2WidgetState extends State<Divider2Widget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery_Size_Helper.MAX_WIDTH(context)!/5.8.w,
      child: Divider(
        color: RegistrationConsts.color1,
        thickness: 2.0.h,
      ),
    );
  }
}
