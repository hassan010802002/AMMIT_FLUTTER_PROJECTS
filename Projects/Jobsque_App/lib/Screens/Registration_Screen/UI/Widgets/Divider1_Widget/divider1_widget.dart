// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/Registration_Screen/Consts/RegistrationConsts.dart';

class Divider1Widget extends StatefulWidget {
  const Divider1Widget({super.key});

  @override
  _Divider1WidgetState createState() => _Divider1WidgetState();
}

class _Divider1WidgetState extends State<Divider1Widget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 5.0.w,
      child: Divider(
        color: RegistrationConsts.color1,
        thickness: 2.0.h,
      ),
    );
  }
}
