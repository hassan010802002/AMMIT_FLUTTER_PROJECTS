// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/Registration_Screen/Consts/RegistrationConsts.dart';
import 'package:jobsque_app/Screens/Registration_Screen/Consts/Texts/RegistrationTexts.dart';

import '../../../../../Config/AppConfig.dart';

class DividerTextWidget extends StatefulWidget {
  const DividerTextWidget({Key? key}) : super(key: key);

  @override
  _DividerTextWidgetState createState() => _DividerTextWidgetState();
}

class _DividerTextWidgetState extends State<DividerTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      RegistrationConsts.text1,
      softWrap: true,
      textAlign: TextAlign.justify,
      style: RegistrationConsts.style1(context),
    );
  }
}
