import 'package:api_task_1/Consts/Home_Screen_Consts/Colors/Home_Screen_Colors.dart';
import 'package:flutter/material.dart';

class Home_Screen_Styles{
  static const tabbarDuration = Duration(milliseconds: 300);
  static const indicatorPadding = EdgeInsets.only(left: 20.0, right: 20.0);
  static const tabbarLabelStyle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w800,
  );
  static final containerDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(15.0),
    color: Home_Screen_Colors.containerColor,
  );
}