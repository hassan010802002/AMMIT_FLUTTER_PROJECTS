// ignore_for_file: file_names

import 'package:flutter/material.dart';

class NavigatorHelper {
  NavigatorHelper.of(BuildContext context, String screenRoute, {Object? screenArg}) {
    Navigator.pushNamed(context, screenRoute, arguments: screenArg);
  }

  factory NavigatorHelper(BuildContext context, String screenRoute, {Object? screenArguments}) =>
      NavigatorHelper.of(context, screenRoute, screenArg: screenArguments);
}
