import 'package:application_3/Carousel_Slider_Consts.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'Custom_Carousel_Slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget homePage = const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
    return homePage;
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIdx = 0;
  List carouselImages = CarouselSliderConsts.networkImagesList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          CarouselSliderConsts.titleText,
          textAlign: TextAlign.start,
          style: CarouselSliderConsts.titleTextStyle,
        ),
        elevation: 3.0,
        backgroundColor: CarouselSliderConsts.appBarColor,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: CarouselSliderConsts.backgroundImage,
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
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Expanded(
                        child: CustomCarouselSlider(
                            carouselImages: carouselImages),
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
                          "New releases",
                          style: CarouselSliderConsts.textStyle,
                        ),
                        Text(
                          "See more",
                          style: CarouselSliderConsts.textStyle,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Expanded(
                      child: CustomCarouselSlider(
                        carouselImages: carouselImages,
                        enlargeCenterPage: false,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5.0,
        onTap: (index){
          setState(() {
            selectedIdx = index;
          });
        },
        backgroundColor: Colors.black87,
        currentIndex: selectedIdx,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(
          color: Color.fromRGBO(255, 0, 203, 1),
          size:35.0,
        ),
        unselectedIconTheme: const IconThemeData(
          color: Colors.tealAccent,
          size:25.0,
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
      ),
    );
  }
}
