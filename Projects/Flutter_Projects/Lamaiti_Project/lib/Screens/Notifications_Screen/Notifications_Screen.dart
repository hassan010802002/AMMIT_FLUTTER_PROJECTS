import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lamaiti/Components/Custom_Divider/Custom_Divider.dart';
import 'package:lamaiti/Consts/Notifications_Screen_Consts.dart';
import 'package:lamaiti/Controllers/Notifications_Screen_Controller/Notifications_Screen_Controller.dart';

class MyNotifications_Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Notifications_Screen(),
    );
  }
}

class Notifications_Screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Notifications_Screen_State();
}

class _Notifications_Screen_State extends State<Notifications_Screen>{
  Notifications_Screen_Controller notifications_screen_controller =
  Get.put(Notifications_Screen_Controller());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Notifications_Screen_Consts.containerDecoration,
      child: Stack(
        alignment: Notifications_Screen_Consts.stackAlignment,
        children: [
          SvgPicture.string(
            Notifications_Screen_Consts.svgVectorString,
            width: Notifications_Screen_Consts.vectorWidth,
            height: Notifications_Screen_Consts.vectorHeight,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 50.0,
                right: 15.0,
                left: 15.0,
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
                          notifications_screen_controller.Navigating_Back();
                        },
                      ),
                      const Text(
                        Notifications_Screen_Consts.text1,
                        style: Notifications_Screen_Consts.text1Style,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        Notifications_Screen_Consts.text2,
                        style: Notifications_Screen_Consts.text2Style,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: Text(
                        Notifications_Screen_Consts.text4,
                        style: Notifications_Screen_Consts.text4Style,
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                  Custom_Divider(
                    padding: EdgeInsets.only(top: 8),
                    thickness: 2.0,
                    dividerColor: Color(0xff808080),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        Notifications_Screen_Consts.text2,
                        style: Notifications_Screen_Consts.text2Style,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: Text(
                        Notifications_Screen_Consts.text4,
                        style: Notifications_Screen_Consts.text4Style,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                  Custom_Divider(
                    padding: EdgeInsets.only(top: 8),
                    thickness: 2.0,
                    dividerColor: Color(0xff808080),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        Notifications_Screen_Consts.text2,
                        style: Notifications_Screen_Consts.text2Style,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: Text(
                        Notifications_Screen_Consts.text4,
                        style: Notifications_Screen_Consts.text4Style,
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                  Custom_Divider(
                    padding: EdgeInsets.only(top: 8),
                    thickness: 2.0,
                    dividerColor: Color(0xff808080),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        Notifications_Screen_Consts.text2,
                        style: Notifications_Screen_Consts.text2Style,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: Text(
                        Notifications_Screen_Consts.text4,
                        style: Notifications_Screen_Consts.text4Style,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                  Custom_Divider(
                    padding: EdgeInsets.only(top: 8),
                    thickness: 2.0,
                    dividerColor: Color(0xff808080),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        Notifications_Screen_Consts.text2,
                        style: Notifications_Screen_Consts.text2Style,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: Text(
                        Notifications_Screen_Consts.text4,
                        style: Notifications_Screen_Consts.text4Style,
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