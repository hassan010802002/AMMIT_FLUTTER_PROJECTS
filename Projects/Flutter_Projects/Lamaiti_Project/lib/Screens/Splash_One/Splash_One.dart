import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lamaiti/Consts/Splash_One_Consts.dart';

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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Splash_One_Consts.stack_Alignment,
                // fit: StackFit.expand,
                children: [
                  SvgPicture.string(
                    Splash_One_Consts.large_Vector,
                    width: Splash_One_Consts.vector_Width,
                    height: Splash_One_Consts.vector_Height,
                  ),
                  const Image(
                    image: AssetImage(Splash_One_Consts.image),
                    width: Splash_One_Consts.image_Dimensions,
                    height: Splash_One_Consts.image_Dimensions,
                    fit: Splash_One_Consts.image_Fit,
                    repeat: Splash_One_Consts.image_Repeat,
                  ),
                ],
              ),
              const Text(
                Splash_One_Consts.text1,
                style: Splash_One_Consts.text1_Style,
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: Splash_One_Consts.button_Top_Padding,
                child: ElevatedButton(
                  onPressed: () {},
                  style: Splash_One_Consts.button_Style,
                  child: Splash_One_Consts.button_Child
                ),
              ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 90.0,
                    right: 20.0
                  ),
                  child: Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 100.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Splash_One_Consts.container,
                            Splash_One_Consts.simple_Space,
                            Splash_One_Consts.small_Container,
                            Splash_One_Consts.simple_Space,
                            Splash_One_Consts.small_Container,
                          ],
                        ),
                      ),
                      const Text(
                        "التالي",
                        style: Splash_One_Consts.text2_Style,
                        textAlign: TextAlign.center,
                      ),
                    ],
              ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
