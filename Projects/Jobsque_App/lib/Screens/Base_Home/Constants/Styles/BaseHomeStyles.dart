// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Screens/Base_Home/Constants/Colors/BaseHomeColors.dart';

class BaseHomeStyles{
  //////////////////////////////////TextStyles///////////////////////////////////

  static TextStyle Function(BuildContext context) textStyle1 = (context) => TextStyle(
    fontFamily: TextFontFamily,
    fontWeight: FontWeight.w500,
    color: BaseHomeColors.color8,
  );
}