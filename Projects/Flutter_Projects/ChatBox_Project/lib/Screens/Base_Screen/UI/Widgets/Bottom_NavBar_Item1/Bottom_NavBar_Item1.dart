// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Bottom_NavBar_Item1 {
  const Bottom_NavBar_Item1();

  static PersistentBottomNavBarItem Items1(BuildContext context) => PersistentBottomNavBarItem(
        icon: const Icon(
          FontAwesomeIcons.commentDots,
        ),
        iconSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 18.0,
        activeColorPrimary: const Color(0xff24786D),
        inactiveColorPrimary: const Color(0xff797C7B),
        contentPadding: 8.0.sp,
        title: "Message",
        textStyle: TextStyle(
          color: const Color(0xff24786D),
          fontFamily: "Caros",
          fontWeight: FontWeight.w600,
          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0,
        ),
      );
}
