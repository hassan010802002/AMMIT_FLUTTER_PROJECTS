import 'package:application_3/Components/Custom_Carousel_Slider/Custom_Carousel_Slider.dart';
import 'package:application_3/Consts/Home_Screen_Consts/Home_Screen_Consts.dart';
import 'package:application_3/Controllers/Home_Screen_Controller/Home_Screen_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class MyMovie_App extends StatelessWidget {
  const MyMovie_App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          Home_Screen_Consts.titleText,
          textAlign: TextAlign.start,
          style: Home_Screen_Consts.titleTextStyle,
        ),
        elevation: 3.0,
        backgroundColor: Home_Screen_Consts.appBarColor,
      ),
      body: Home_Page(),
      bottomNavigationBar: GetX(
        init: Carousel_Controller(),
        builder: ( controller) {
          return BottomNavigationBar(
            elevation: 5.0,
            onTap: controller.onTap,
            backgroundColor: Colors.black87,
            currentIndex: controller.selectedIdx.value,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            selectedIconTheme: const IconThemeData(
              color: Color.fromRGBO(255, 0, 203, 1),
              size: 35.0,
            ),
            unselectedIconTheme: const IconThemeData(
              color: Colors.tealAccent,
              size: 25.0,
            ),
            selectedItemColor: const Color.fromRGBO(255, 0, 203, 1),
            selectedFontSize: 14,
            items: const [
              BottomNavigationBarItem(
                backgroundColor: Colors.black87,
                label: "Home",
                icon: Icon(Icons.home_filled),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.black87,
                label: "Files",
                icon: Icon(LineIcons.file),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.black87,
                label: "Massages",
                icon: Icon(Icons.sms),
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.black87,
                label: "Settings",
                icon: Icon(Icons.settings_rounded),
              ),
            ],
          );
        },
      ),
    );
  }
}

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_Page_State();
}

class _Home_Page_State extends State<Home_Page> {
  Carousel_Controller carousel_controller = Get.put(Carousel_Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: Home_Screen_Consts.backgroundImage,
                opacity: 30,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 15.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: CustomCarouselSlider(),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          Home_Screen_Consts.text1,
                          style: Home_Screen_Consts.textStyle,
                        ),
                        Text(
                          Home_Screen_Consts.text2,
                          style: Home_Screen_Consts.textStyle,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: CustomCarouselSlider(
                          enlargeCenterPage: false,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}