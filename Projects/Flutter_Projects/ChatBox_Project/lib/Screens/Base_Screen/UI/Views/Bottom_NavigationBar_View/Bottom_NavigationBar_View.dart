// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/Base_Screen/UI/Views/Bottom_NavBar_Items/Bottom_NavBar_Items.dart';
import 'package:chatbox_project/Screens/Base_Screen/UI/Views/Bottom_NavBar_Screens/Bottom_NavBar_Screens.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Bottom_NavigationBar_View extends StatefulWidget {
  const Bottom_NavigationBar_View({super.key});

  @override
  State<Bottom_NavigationBar_View> createState() => _Bottom_NavigationBar_View_State();
}

class _Bottom_NavigationBar_View_State extends State<Bottom_NavigationBar_View> {
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: Bottom_NavBar_Screens.NavBar_Screens(),
      items: Bottom_NavBar_Items.NavBar_Items(context),
      popAllScreensOnTapAnyTabs: true,
      popActionScreens: PopActionScreensType.all,
      confineInSafeArea: true,
      handleAndroidBackButtonPress: true,
      hideNavigationBarWhenKeyboardShows: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 300),
      ),
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15.0.sp)),
      ),
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      controller: PersistentTabController(initialIndex: 0),
      popAllScreensOnTapOfSelectedTab: true,
      navBarStyle: NavBarStyle.style1,
      backgroundColor: Colors.white,
      navBarHeight: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 12.0.h,
    );
  }
}
