import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lamaiti/Components/Custom_Divider/Custom_Divider.dart';
import 'package:lamaiti/Consts/Settings_Screen_Consts.dart';
import 'package:lamaiti/Controllers/Settings_Screen_Controller/Settings_Screen_Controller.dart';
import 'package:lamaiti/Routes/My_Routes.dart';

class MySettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Settings_Screen();
  }
}

class Settings_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Settings_Screen_State();
}

class _Settings_Screen_State extends State<Settings_Screen> {
  Settings_Screen_Controller settings_screen_controller =
  Get.put(Settings_Screen_Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: Settings_Screen_Consts.containerDecoration,
        child: Stack(
          alignment: Settings_Screen_Consts.stackAlignment,
          children: [
            SvgPicture.string(
              Settings_Screen_Consts.svgVectorString,
              width: Settings_Screen_Consts.vectorWidth,
              height: Settings_Screen_Consts.vectorHeight,
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
                            settings_screen_controller.Navigating_Back();
                          },
                        ),
                        const Text(
                          Settings_Screen_Consts.text1,
                          style: Settings_Screen_Consts.text1Style,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(top: 65),
                        child: GestureDetector(
                          onTap: () {
                            settings_screen_controller.Navigating(MyRoutes.notificationScreen);
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                Settings_Screen_Consts.text4,
                                style: Settings_Screen_Consts.text4Style,
                                textDirection: TextDirection.rtl,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              SvgPicture.asset(
                                Settings_Screen_Consts.notificationImage,
                                width: 50,
                                height: 50,
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Custom_Divider(
                      dividerColor: Color(0xff808080),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: GestureDetector(
                          onTap: () {},
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                Settings_Screen_Consts.text5,
                                style: Settings_Screen_Consts.text4Style,
                                textDirection: TextDirection.rtl,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              SvgPicture.asset(
                                Settings_Screen_Consts.policyImage,
                                width: 50,
                                height: 50,
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Custom_Divider(
                      dividerColor: Color(0xff808080),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: GestureDetector(
                          onTap: () {
                            settings_screen_controller.Navigating(MyRoutes.termsScreen);
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                Settings_Screen_Consts.text6,
                                style: Settings_Screen_Consts.text4Style,
                                textDirection: TextDirection.rtl,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              SvgPicture.asset(
                                Settings_Screen_Consts.checkedListImage,
                                width: 50,
                                height: 50,
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
