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
  const CarouselSlider_View({super.key});

  @override
  State<CarouselSlider_View> createState() => _CarouselSlider_View_State();
}

class _CarouselSlider_View_State extends State<CarouselSlider_View> {
  final Home_Controller home_controller = Get.put(Home_Controller());

  @override
  Widget build(BuildContext context) {
    return GetX<Home_Controller>(
      init: home_controller,
      builder: (logic) {
        if (logic.listLength.value != 0) {
          return Align(
            alignment: Alignment.topCenter,
            child: CarouselSlider.builder(
              itemCount: home_controller.myContacts!.length,
              itemBuilder: (context, index, realIndex) {
                return GestureDetector(
                  onTap: () {
                    logic.Navigation(MyPages.chattingScreen);
                  },
                  child: Contacts_Carousel_Items_Widget(homeController: home_controller, index: index),
                );
              },
              carouselController: CarouselController(),
              options: CarouselOptions(
                height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 5.5.h,
                scrollDirection: Axis.horizontal,
                enlargeCenterPage: false,
                initialPage: 0,
                viewportFraction: 0.25,
              ),
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
