import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarNotch extends StatelessWidget {
  const BottomNavigationBarNotch({
    super.key,
    required this.currentIcon,
  });

  final IconData currentIcon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      elevation: 5,
      splashColor: Colors.limeAccent,
      backgroundColor: Colors.black,
      child: Icon(
        currentIcon,
        color: Colors.deepOrangeAccent,
        size: 30,
        fill: 0.5,
      ),
    );
  }
}

AnimatedBottomNavigationBar CustomNavBar(
    {required List<IconData> icons,
    required int currentIdx,
    required dynamic Function(int) BottomNavBarItemOnTap}) {
  return AnimatedBottomNavigationBar(
    backgroundColor: Colors.black45,
    height: 50,
    inactiveColor: Colors.tealAccent,
    activeColor: Colors.deepOrangeAccent,
    iconSize: 30,
    borderColor: Colors.blueGrey,
    borderWidth: 6,
    splashRadius: 50,
    notchMargin: 8,
    splashColor: Colors.limeAccent,
    splashSpeedInMilliseconds: 350,
    gapWidth: 100,
    gapLocation: GapLocation.center,
    notchSmoothness: NotchSmoothness.smoothEdge,
    leftCornerRadius: 18.0,
    rightCornerRadius: 18.0,
    elevation: 5.0,
    icons: icons,
    activeIndex: currentIdx,
    onTap: BottomNavBarItemOnTap,
  );
}
