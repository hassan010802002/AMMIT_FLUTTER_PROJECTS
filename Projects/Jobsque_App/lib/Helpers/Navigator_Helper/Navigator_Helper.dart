import 'package:flutter/material.dart';

class NavigatorHelper {

  NavigatorHelper.of(BuildContext context, String screenRoute) {
    Navigator.pushNamed(context, screenRoute);
  }

  factory NavigatorHelper(BuildContext context, String screenRoute) => NavigatorHelper.of(context, screenRoute);
}
