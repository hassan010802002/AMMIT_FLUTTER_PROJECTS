// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:chatbox_project/Screens/Base_Screen/UI/Widgets/Bottom_NavBar_Item1/Bottom_NavBar_Item1.dart';
import 'package:chatbox_project/Screens/Base_Screen/UI/Widgets/Bottom_NavBar_Item2/Bottom_NavBar_Item2.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Bottom_NavBar_Items {
  const Bottom_NavBar_Items();

  static List<PersistentBottomNavBarItem> NavBar_Items(BuildContext context) => [
      Bottom_NavBar_Item1.Items1(context),
      Bottom_NavBar_Item2.Items2(context),
    ];
}
