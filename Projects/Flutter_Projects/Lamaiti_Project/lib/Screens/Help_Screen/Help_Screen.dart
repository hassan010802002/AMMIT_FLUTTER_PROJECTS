import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lamaiti/Consts/Help_Screen_Consts.dart';
import 'package:lamaiti/Controllers/Help_Screen_Controller/Help_Screen_Controller.dart';

class MyHelp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Help_Screen(),
    );
  }
}

class Help_Screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Help_Screen_State();
}

class _Help_Screen_State extends State<Help_Screen>{
  Help_Screen_Controller help_screen_controller =
  Get.put(Help_Screen_Controller());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Help_Screen_Consts.containerDecoration,
      child: Stack(
        alignment: Help_Screen_Consts.stackAlignment,
        children: [
          SvgPicture.string(
            Help_Screen_Consts.svgVectorString,
            width: Help_Screen_Consts.vectorWidth,
            height: Help_Screen_Consts.vectorHeight,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 60.0,
                right: 20.0,
                left: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.black,
                          size: 30.0,
                        ),
                        onTap: () {
                          help_screen_controller.Navigating_Back();
                        },
                      ),
                      const Text(
                        Help_Screen_Consts.text1,
                        style: Help_Screen_Consts.text1Style,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: Text(
                        Help_Screen_Consts.text2,
                        style: Help_Screen_Consts.text2Style,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        Help_Screen_Consts.text4,
                        style: Help_Screen_Consts.text4Style,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        Help_Screen_Consts.text3,
                        style: Help_Screen_Consts.text2Style,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        Help_Screen_Consts.text4,
                        style: Help_Screen_Consts.text4Style,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}