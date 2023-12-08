// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Routes/MyPages/MyPages.dart';
import 'package:chatbox_project/Screens/Home_Screen/Controller/Home_Controller.dart';
import 'package:chatbox_project/Screens/Home_Screen/UI/Widgets/Contacts_Carousel_Items/Contacts_Carousel_Items_Widget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CarouselSlider_View extends StatefulWidget {
  final Home_Controller home_controller;

  const CarouselSlider_View({super.key, required this.home_controller});

  @override
  State<CarouselSlider_View> createState() => _CarouselSlider_View_State();
}

class _CarouselSlider_View_State extends State<CarouselSlider_View> {
  @override
  Widget build(BuildContext context) {
    return GetX<Home_Controller>(
      init: widget.home_controller,
      builder: (logic) {
        if (logic.listLength.value != 0) {
          return Align(
            alignment: Alignment.topCenter,
            child: StreamBuilder(
              stream: logic.availableUsers.value,
              builder: (BuildContext context, snapshot) {
                if (snapshot.hasData) {
                  return CarouselSlider.builder(
                    itemCount: widget.home_controller.listLength.value,
                    itemBuilder: (context, index, realIndex) {
                      return GestureDetector(
                        onTap: () {
                          widget.home_controller.settingChatID = widget.home_controller.RetrievingChatMessages(snapshot: snapshot, index: index).id;
                          widget.home_controller.settingUserChatName =
                              widget.home_controller.RetrievingChatMessages(snapshot: snapshot, index: index).displayName!;
                          widget.home_controller.Navigation(MyPages.chattingScreen);
                        },
                        child: Contacts_Carousel_Items_Widget(
                          homeController: widget.home_controller,
                          index: index,
                          snapshot: snapshot,
                        ),
                      );
                    },
                    carouselController: CarouselController(),
                    options: CarouselOptions(
                      height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 5.5.h,
                      scrollDirection: Axis.horizontal,
                      enlargeCenterPage: false,
                      enableInfiniteScroll: false,
                      initialPage: 0,
                      viewportFraction: 0.25,
                    ),
                  );
                } else {
                  return Container();
                }
              },
            ),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(
              strokeWidth: 5.0.w,
              color: Colors.amber,
              backgroundColor: Colors.grey,
            ),
          );
        }
      },
    );
  }
}
