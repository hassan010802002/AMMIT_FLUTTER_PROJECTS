// ignore_for_file: camel_case_types, library_private_types_in_public_api

import 'package:air_wings/common/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'explore.dart';
import 'home.dart';
import 'tabbar-my-trip.dart';
import 'profile.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Home(),
    const Explore(),
    const TabbarMy_Trip(),
    const Profile(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kWhite,
        onTap: onTabTapped, // new
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.grey,
              size: 30,
            ),
            activeIcon: Icon(
              Icons.search,
              color: kBlue,
              size: 30,
            ),
            // backgroundColor: kBlue,
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
              color: Colors.grey,
              size: 30,
            ),
            activeIcon: Icon(
              Icons.explore,
              color: kBlue,
              size: 30,
            ),
            label: "",
            // backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(
             FontAwesomeIcons.suitcaseRolling,
              color: Colors.grey,
              size: 30,
            ),
            activeIcon: Icon(
             FontAwesomeIcons.suitcaseRolling,
              color: kBlue,
              size: 30,
            ),
            label: "",
            // backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(
               Icons.person,
              color: Colors.grey,
              size: 30,
            ),
            activeIcon: Icon(
               Icons.person,
              color: kBlue,
              size: 30,
            ),
            label: "",
            // backgroundColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
