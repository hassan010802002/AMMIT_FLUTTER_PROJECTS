import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:lamaiti/Consts/Home_Consts.dart';

class Custom_Bottom_Navigation_Bar extends StatelessWidget {
  int currentIdx;
  final dynamic Function(int) BottomNavBarItemOnTap;

  Custom_Bottom_Navigation_Bar({
    super.key,
    this.currentIdx = 0,
    required this.BottomNavBarItemOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      backgroundColor: Colors.white70,
      height: 50,
      inactiveColor: Colors.blueGrey,
      activeColor: Colors.deepOrange,
      iconSize: 30,
      borderColor: Colors.blueGrey,
      borderWidth: 6,
      splashRadius: 50,
      splashColor: Colors.teal,
      splashSpeedInMilliseconds: 350,
      gapLocation: GapLocation.none,
      notchSmoothness: NotchSmoothness.smoothEdge,
      elevation: 5.0,
      icons: HomeConsts.icons,
      activeIndex: currentIdx,
      onTap: BottomNavBarItemOnTap,
    );
  }
}
