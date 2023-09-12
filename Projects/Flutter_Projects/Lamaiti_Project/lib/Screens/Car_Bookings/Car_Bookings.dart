import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lamaiti/Components/Custom_Divider/Custom_Divider.dart';
import 'package:lamaiti/Components/Custom_Navigation_Bar/Custom_Navigation_Bar.dart';
import 'package:lamaiti/Components/Custom_PopUp_Dialog/Custom_PopUp_Dialog.dart';
import 'package:lamaiti/Consts/Add_New_Car_Consts.dart';
import 'package:lamaiti/Consts/Car_Bookings_Consts.dart';
import 'package:lamaiti/Controllers/Car_Bookings_Controller/Car_Bookings_Controller.dart';
import 'package:lamaiti/Controllers/Home_Controller/Home_Controller.dart';

class My_Car_Bookings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Car_Bookings_Screen();
  }
}

class Car_Bookings_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Car_Bookings_Screen_State();
}

class _Car_Bookings_Screen_State extends State<Car_Bookings_Screen> {
  Home_Controller home_controller = Get.put(Home_Controller(2.obs));
  Car_Bookings_Controller car_bookings_controller = Get.put(Car_Bookings_Controller());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      animationDuration:
          Car_Bookings_Consts.defaultTabControllerAnimationDuration,
      length: 2,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        bottomNavigationBar: GetX(
          init: home_controller,
          builder: (DisposableInterface controller) {
            return Custom_Bottom_Navigation_Bar(
              currentIdx: car_bookings_controller.currentIdx.value,
              BottomNavBarItemOnTap: home_controller.BottomNavBarItemOnTap,
            );
          },
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          primary: false,
          toolbarHeight: 120,
          bottom: TabBar(
            indicatorWeight: 5,
            indicatorPadding: Car_Bookings_Consts.tabBarIndicatorPadding,
            labelColor: Car_Bookings_Consts.mainColor,
            unselectedLabelColor: Car_Bookings_Consts.secondaryColor,
            labelStyle: Car_Bookings_Consts.tabBarStyle,
            unselectedLabelStyle: Car_Bookings_Consts.tabBarStyle,
            indicatorColor: Car_Bookings_Consts.mainColor,
            tabs: [
              Tab(
                child: Text(
                  Car_Bookings_Consts.tab1Text,
                ),
              ),
              Tab(
                child: Text(
                  Car_Bookings_Consts.tab2Text,
                ),
              ),
            ],
          ),
        ),
        body: Container(
          decoration: Car_Bookings_Consts.containerDecoration,
          child: Stack(
            alignment: Car_Bookings_Consts.stackAlignment,
            children: [
              SvgPicture.string(
                Car_Bookings_Consts.svgVectorString,
                width: Car_Bookings_Consts.vectorWidth,
                height: Car_Bookings_Consts.vectorHeight,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 75.0,
                    right: 20.0,
                    left: 20.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            Car_Bookings_Consts.text1,
                            style: Car_Bookings_Consts.text1Style,
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Align(
                              alignment: AlignmentDirectional.topCenter,
                              child: GridView.builder(
                                primary: true,
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: 2,
                                padding: EdgeInsets.only(top: 80),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 1.9,
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 8.0,
                                  mainAxisSpacing: 12.0,
                                ),
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return Custom_PopUp_Dialog(
                                            content: PopUpContent(index),
                                          );
                                        },
                                      );
                                    },
                                    child: Container(
                                      decoration: Car_Bookings_Consts
                                          .gridViewBuildContainerDecoration,
                                      padding: EdgeInsets.only(
                                        top: 18.0,
                                        bottom: 18.0,
                                        right: 8.0,
                                        left: 8.0,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                Car_Bookings_Consts.text5,
                                                textDirection:
                                                    TextDirection.rtl,
                                                textAlign: TextAlign.center,
                                                style: Car_Bookings_Consts
                                                    .text5Style,
                                              ),
                                              SizedBox(
                                                width: 3,
                                              ),
                                              Icon(
                                                Icons.alarm_rounded,
                                                size: 15.0,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                Car_Bookings_Consts.text6,
                                                textAlign: TextAlign.center,
                                                style: Car_Bookings_Consts
                                                    .text5Style,
                                              ),
                                              SizedBox(
                                                width: 3,
                                              ),
                                              Icon(
                                                Icons.calendar_month_rounded,
                                                size: 15.0,
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width: 18.0,
                                                height: 18.0,
                                                child: CircleAvatar(
                                                  backgroundColor:
                                                      Car_Bookings_Consts
                                                          .randomColor,
                                                ),
                                              ),
                                              Text(
                                                Add_New_Car_Consts
                                                    .carsLabels[index],
                                                textAlign: TextAlign.center,
                                                style: Car_Bookings_Consts
                                                    .mainTextStyle,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 200,
                                    width: 200,
                                    child: CircleAvatar(
                                      backgroundImage: Car_Bookings_Consts.circleAvatarBackGroundImage,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Text(
                                      Car_Bookings_Consts.text7,
                                      style: Car_Bookings_Consts.text7Style,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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

  Widget? PopUpContent(int index) {
    return Container(
      width: 425,
      height: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: FloatingActionButton(
                    heroTag: "closingButton${index}",
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    backgroundColor: Car_Bookings_Consts.closeButtonBackgroundColor,
                    child: Icon(
                      Icons.close_rounded,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Text(
                Car_Bookings_Consts.popUpText1,
                style: Car_Bookings_Consts.popUpText1Style,
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
              ),
            ],
          ),
          Custom_Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
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
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          Car_Bookings_Consts.popUpText2,
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                          style: Car_Bookings_Consts.text5Style,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.alarm_rounded,
                          size: 15.0,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          Car_Bookings_Consts.popUpText3,
                          textAlign: TextAlign.center,
                          style: Car_Bookings_Consts.text5Style,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.calendar_month_rounded,
                          size: 15.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      Car_Bookings_Consts.text2 +
                          " ${Add_New_Car_Consts.carsLabels[index]}",
                      textAlign: TextAlign.right,
                      style: Car_Bookings_Consts.columnTextStyle,
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      Car_Bookings_Consts.text3,
                      textAlign: TextAlign.right,
                      style: Car_Bookings_Consts.columnTextStyle,
                      textDirection: TextDirection.rtl,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipOval(
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration:
                                Car_Bookings_Consts.caruselContainerDecoration2,
                          ),
                        ),
                        Text(
                          Car_Bookings_Consts.text4,
                          textAlign: TextAlign.right,
                          style: Car_Bookings_Consts.columnTextStyle,
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      Car_Bookings_Consts.containerImage,
                      width: 120,
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Custom_Divider(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Car_Bookings_Consts.popUpText4,
                style: Car_Bookings_Consts.popUpText4Style,
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
              ),
              Text(
                Car_Bookings_Consts.popUpText5,
                style: Car_Bookings_Consts.popUpText4Style,
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Car_Bookings_Consts.popUpText6,
                style: Car_Bookings_Consts.popUpText5Style,
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
              ),
              Text(
                Car_Bookings_Consts.popUpText7,
                style: Car_Bookings_Consts.popUpText5Style,
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Car_Bookings_Consts.popUpText8,
                style: Car_Bookings_Consts.popUpText5Style,
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
              ),
              Text(
                Car_Bookings_Consts.popUpText9,
                style: Car_Bookings_Consts.popUpText5Style,
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Car_Bookings_Consts.popUpText10,
                style: Car_Bookings_Consts.popUpText5Style,
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
              ),
              Text(
                Car_Bookings_Consts.popUpText11,
                style: Car_Bookings_Consts.popUpText5Style,
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Car_Bookings_Consts.popUpText12,
                style: Car_Bookings_Consts.popUpText5Style,
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
              ),
              Text(
                Car_Bookings_Consts.popUpText13,
                style: Car_Bookings_Consts.popUpText5Style,
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
              ),
            ],
          ),
        ],
      ),
    );
  }
}


