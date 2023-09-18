import 'package:application_3/Consts/Splash_Screen_Consts/Splash_Screen_Consts.dart';
import 'package:application_3/Consts/Splash_Screen_Consts/Texts/Splash_Screen_Texts.dart';
import 'package:application_3/Controllers/Splash_Screen_Controller/Splash_Screen_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySplash extends StatelessWidget {
  const MySplash({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Splash_Screen(),
    );
  }
}

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<StatefulWidget> createState() => _Splash_Screen_State();
}

class _Splash_Screen_State extends State<Splash_Screen> {
  Splash_Screen_Controller controller = Get.put(Splash_Screen_Controller());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Splash_Screen_Consts.splashContainerDecoration,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipOval(
              child: Image.asset(
                Splash_Screen_Texts.text1,
                fit: BoxFit.fill,
                height: 350,
                width: 350,
              ),
            ),
            const SizedBox(
              height: 35.0,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 30.0 , left: 30.0),
              child: LinearProgressIndicator(
                color: Splash_Screen_Consts.color2,
                backgroundColor: Splash_Screen_Consts.color3,
              ),
            )
          ],
        ),
      ),
    );
  }
}
