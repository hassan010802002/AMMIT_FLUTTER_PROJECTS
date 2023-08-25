import 'package:flutter/material.dart';
import 'package:lamaiti/Consts/Splash_One_Consts.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: Splash_One_Consts.screen_Decoration,
        child: Center(
          child: Custom_Splash(
              image: Splash_One_Consts.images[0],
              text: Splash_One_Consts.texts[0],
              editRow: Splash_One_Consts.rows[0]),
        ),
      ),
    );
  }
}
