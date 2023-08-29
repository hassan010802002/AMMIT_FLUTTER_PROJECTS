import 'package:flutter/material.dart';
import 'package:lamaiti/Consts/Splash_One_Consts.dart';
import 'package:lamaiti/Helper/Splash_One_Helper/Splash_Model.dart';
import '../../Components/Custom_Splash/Custom_Splash.dart';

class My_Splash_One extends StatelessWidget {
  const My_Splash_One({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_One_Page(),
    );
  }
}

class Splash_One_Page extends StatefulWidget {
  const Splash_One_Page({super.key});

  @override
  State<StatefulWidget> createState() => _Splash_One_Page_State();
}

class _Splash_One_Page_State extends State<Splash_One_Page> {
  List<SplashModel> slides = getSlides();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: Splash_One_Consts.screen_Decoration,
        child: Center(
          child: Custom_Splash(
              image: slides.elementAt(0).imagePath,
              text: slides.elementAt(0).descriptionText,
              editRow: Splash_One_Consts.rows[0]),
        ),
      ),
    );
  }
}
