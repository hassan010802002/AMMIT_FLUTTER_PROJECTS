import 'package:flutter/material.dart';
import 'package:lamaiti/Consts/Splash_Consts.dart';
import 'package:lamaiti/Screens/Splash_One/Splash_One.dart';

class My_Splash extends StatelessWidget {
  const My_Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}

class SplashPage extends StatefulWidget{
  const SplashPage({super.key});

  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Splash_Consts.screen_Delay , () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const My_Splash_One();
      }));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: Splash_Consts.logo_Width,
              height: Splash_Consts.logo_Height,
              child:  const Image(
                fit: Splash_Consts.logo_Fit,
                repeat: Splash_Consts.logo_Repeat,
                image: AssetImage(Splash_Consts.logo_Image_Path),
              ),
            ),
          ],
        ),
      ),
    );
  }

}