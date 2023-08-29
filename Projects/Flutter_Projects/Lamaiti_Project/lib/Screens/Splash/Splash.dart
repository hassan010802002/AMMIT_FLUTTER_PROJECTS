import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lamaiti/Consts/Splash_Consts.dart';
import 'package:lamaiti/Controllers/Splash_Controller/Splash_Controller.dart';

class My_Splash extends StatelessWidget {
  const My_Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashPage(),
    );
  }
}

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: Splash_Consts.logo_Width,
            height: Splash_Consts.logo_Height,
            child: const Image(
              fit: Splash_Consts.logo_Fit,
              repeat: Splash_Consts.logo_Repeat,
              image: AssetImage(Splash_Consts.logo_Image_Path),
            ),
          ),
        ],
      ),
    );
  }
}
