// ignore_for_file: camel_case_types, non_constant_identifier_names, prefer_typing_uninitialized_variables, file_names

import 'package:flutter/material.dart';

class MediaQuery_Size_Helper {
  static Size? _SIZE;

  static Size? MAX_SIZE(BuildContext context) {
    _SIZE = MediaQuery.sizeOf(context);
    return _SIZE;
  }

  static double? _WIDTH;

  static double? MAX_WIDTH(BuildContext context) {
    _WIDTH = MediaQuery.sizeOf(context).width;
    return _WIDTH;
  }

  static double? _HEIGHT;

  static double? MAX_HEIGHT(BuildContext context) {
    _HEIGHT = MediaQuery.sizeOf(context).height;
    return _HEIGHT;
  }
}
