import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lamaiti/Components/Custom_Divider/Custom_Divider.dart';
import 'package:lamaiti/Components/Custom_Navigation_Bar/Custom_Navigation_Bar.dart';
import 'package:lamaiti/Consts/Profile_Screen_Consts.dart';
import 'package:lamaiti/Controllers/Home_Controller/Home_Controller.dart';
import 'package:lamaiti/Controllers/Profile_Screen_Controller/Profile_Screen_Controller.dart';
import 'package:lamaiti/Routes/My_Routes.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Profile_Screen();
  }
}

class Profile_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Profile_Screen_State();
}

class _Profile_Screen_State extends State<Profile_Screen> {
  Home_Controller home_controller = Get.put(Home_Controller(3.obs));
  Profile_Screen_Controller profile_screen_controller =
      Get.put(Profile_Screen_Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GetX(
        init: home_controller,
        builder: (controller) {
          return Custom_Bottom_Navigation_Bar(
            currentIdx: home_controller.currentIdx.value,
            BottomNavBarItemOnTap: home_controller.BottomNavBarItemOnTap,
          );
        },
      ),
      body: Container(
        decoration: Profile_Screen_Consts.containerDecoration,
        child: Stack(
          alignment: Profile_Screen_Consts.stackAlignment,
          children: [
            SvgPicture.string(
              Profile_Screen_Consts.svgVectorString,
              width: Profile_Screen_Consts.vectorWidth,
              height: Profile_Screen_Consts.vectorHeight,
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
                            profile_screen_controller.Navigating_Back();
                          },
                        ),
                        const Text(
                          Profile_Screen_Consts.text1,
                          style: Profile_Screen_Consts.text1Style,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: GestureDetector(
                        onTap: () {
                          profile_screen_controller.Navigating(MyRoutes.updatingProfileScreen);
                        },
                        child: Container(
                          height: 90.0,
                          padding: EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                          color: Colors.white,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    Profile_Screen_Consts.text2,
                                    style: Profile_Screen_Consts.text2Style,
                                    textDirection: TextDirection.rtl,
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        Profile_Screen_Consts.text3,
                                        style: Profile_Screen_Consts.text2Style,
                                        textDirection: TextDirection.rtl,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffFFCE31),
                                        size: 35,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                    Profile_Screen_Consts.profileAvatarImage),
                                radius: 36,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(top: 75),
                        child: GestureDetector(
                          onTap: () {
                            profile_screen_controller.Navigating(
                                MyRoutes.walletScreen);
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                Profile_Screen_Consts.text4,
                                style: Profile_Screen_Consts.text4Style,
                                textDirection: TextDirection.rtl,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              SvgPicture.asset(
                                Profile_Screen_Consts.walletImage,
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
                            profile_screen_controller.Navigating(
                                MyRoutes.settingsScreen);
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                Profile_Screen_Consts.text5,
                                style: Profile_Screen_Consts.text4Style,
                                textDirection: TextDirection.rtl,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              SvgPicture.asset(
                                Profile_Screen_Consts.settingsImage,
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
                            profile_screen_controller.Navigating(
                                MyRoutes.helpScreen);
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                Profile_Screen_Consts.text6,
                                style: Profile_Screen_Consts.text4Style,
                                textDirection: TextDirection.rtl,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              SvgPicture.asset(
                                Profile_Screen_Consts.helpImage,
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
                            profile_screen_controller.Navigating(
                                MyRoutes.logInScreen);
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                Profile_Screen_Consts.text7,
                                style: Profile_Screen_Consts.text4Style,
                                textDirection: TextDirection.rtl,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              SvgPicture.asset(
                                Profile_Screen_Consts.logOutImage,
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
