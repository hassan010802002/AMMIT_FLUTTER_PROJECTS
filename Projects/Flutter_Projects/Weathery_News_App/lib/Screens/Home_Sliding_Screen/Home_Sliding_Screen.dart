import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:octo_image/octo_image.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:weathery_news_app/Components/Custom_ShaderMask/Custom_ShaderMask.dart';
import 'package:weathery_news_app/Consts/Home_Sliding_Consts/Colors/Home_Sliding_Colors.dart';
import 'package:weathery_news_app/Consts/Home_Sliding_Consts/Home_Sliding_Consts.dart';
import 'package:weathery_news_app/Controllers/Weather_Home_Controller/Weather_Home_Controller.dart';

class MySliding_Pannel extends StatefulWidget {
  final Weather_Home_Controller weather_home_controller;

  MySliding_Pannel(this.weather_home_controller);

  @override
  State<StatefulWidget> createState() => _Sliding_Pannel_Screen(weather_home_controller);
}

class _Sliding_Pannel_Screen extends State<MySliding_Pannel> {
  final Weather_Home_Controller weather_home_controller;

  _Sliding_Pannel_Screen(this.weather_home_controller);

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      renderPanelSheet: true,
      controller: PanelController(),
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(45.0.sp),
      ),
      isDraggable: true,
      minHeight: 350,
      maxHeight: MediaQuery.of(context).size.height,
      slideDirection: SlideDirection.UP,
      parallaxEnabled: true,
      defaultPanelState: PanelState.CLOSED,
      panelBuilder: (sc) {
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          controller: sc,
          child: Container(
            decoration: Home_Sliding_Consts.style1,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: Home_Sliding_Consts.style2,
                    width: 50.w,
                    height: 5.h,
                  ),
                  DefaultTabController(
                    animationDuration: const Duration(milliseconds: 250),
                    length: 2,
                    initialIndex: 0,
                    child: Wrap(
                      children: [
                        TabBar(
                          unselectedLabelColor: Home_Sliding_Consts.color4,
                          unselectedLabelStyle: Home_Sliding_Consts.style3,
                          labelStyle: Home_Sliding_Consts.style3,
                          labelColor: Home_Sliding_Consts.color5,
                          indicatorColor: Home_Sliding_Consts.color6,
                          indicatorPadding: EdgeInsets.symmetric(horizontal: 12.0.w),
                          indicatorWeight: 3.0.sp,
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs: const [
                            Tab(
                              height: 50,
                              child: Text(
                                Home_Sliding_Consts.text1,
                              ),
                            ),
                            Tab(
                              height: 50,
                              child: Text(
                                Home_Sliding_Consts.text2,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 140.h,
                          child: TabBarView(
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15.h),
                                  child: CarouselSlider.builder(
                                    itemCount: 8,
                                    itemBuilder: (context, index, realIndex) {
                                      return GetX(
                                        init: weather_home_controller,
                                        builder: (controller) {
                                          if (controller.getMyMainModels.value.isNotEmpty) {
                                            return Container(
                                              width: 65,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: ((DateFormat.j()
                                                                    .format(DateTime.parse(controller.getWeatherForecastingModel.value
                                                                        .list![index + controller.getDayIndex].dtTxt!))
                                                                    .toString() ==
                                                                DateFormat.j().format(DateTime.now()).toString()) ||
                                                            (DateTime.parse(controller.getWeatherForecastingModel.value.list![index + controller.getDayIndex].dtTxt!)
                                                                        .hour -
                                                                    DateTime.now().hour ==
                                                                1) ||
                                                            (DateTime.now().hour -
                                                                    DateTime.parse(controller.getWeatherForecastingModel.value.list![index + controller.getDayIndex].dtTxt!)
                                                                        .hour ==
                                                                1)) &&
                                                        (DateFormat.E()
                                                                .format(
                                                                    DateTime.parse(controller.getWeatherForecastingModel.value.list![index + controller.getDayIndex].dtTxt!))
                                                                .toString() ==
                                                            DateFormat.E().format(DateTime.now()).toString())
                                                    ? Home_Sliding_Consts.color7
                                                    : Home_Sliding_Consts.color8,
                                                borderRadius: BorderRadius.circular(40.0),
                                                border: Border.all(
                                                  color: Home_Sliding_Consts.color9,
                                                  width: 1.5.w,
                                                ),
                                              ),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Text(
                                                    ((DateFormat.j().format(DateTime.parse(controller.getWeatherForecastingModel.value.list![index + controller.getDayIndex].dtTxt!)).toString() ==
                                                                    DateFormat.j().format(DateTime.now()).toString()) ||
                                                                (DateTime.parse(controller.getWeatherForecastingModel.value.list![index + controller.getDayIndex].dtTxt!).hour -
                                                                        DateTime.now().hour ==
                                                                    1) ||
                                                                (DateTime.now().hour -
                                                                        DateTime.parse(controller.getWeatherForecastingModel.value
                                                                                .list![index + controller.getDayIndex].dtTxt!)
                                                                            .hour ==
                                                                    1)) &&
                                                            (DateFormat.E()
                                                                    .format(DateTime.parse(controller.getWeatherForecastingModel.value
                                                                        .list![index + controller.getDayIndex].dtTxt!))
                                                                    .toString() ==
                                                                DateFormat.E().format(DateTime.now()).toString())
                                                        ? Home_Sliding_Consts.text3
                                                        : DateFormat.j()
                                                            .format(DateTime.parse(controller.getWeatherForecastingModel.value.list![index + controller.getDayIndex].dtTxt!))
                                                            .toString(),
                                                    style: Home_Sliding_Consts.style4,
                                                  ),
                                                  OctoImage(
                                                    image: const AssetImage(Home_Sliding_Consts.image1),
                                                    fit: BoxFit.fill,
                                                    alignment: Alignment.center,
                                                    filterQuality: FilterQuality.high,
                                                  ),
                                                  Text(
                                                    "${((controller.getWeatherForecastingModel.value.list![index + controller.getDayIndex].main!.temp! - 273.15).roundToDouble())}°C",
                                                    style: Home_Sliding_Consts.style5,
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                              ),
                                            );
                                          } else {
                                            return Container(
                                              width: 65,
                                              alignment: Alignment.center,
                                              decoration: Home_Sliding_Consts.style6,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Text(
                                                    Home_Sliding_Consts.text3,
                                                    style: Home_Sliding_Consts.style4,
                                                  ),
                                                  OctoImage(
                                                    image: const AssetImage(Home_Sliding_Consts.image1),
                                                    fit: BoxFit.fill,
                                                    alignment: Alignment.center,
                                                    filterQuality: FilterQuality.high,
                                                  ),
                                                  Text(
                                                    Home_Sliding_Consts.text4,
                                                    style: Home_Sliding_Consts.style5,
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                              ),
                                            );
                                          }
                                        },
                                      );
                                    },
                                    options: Home_Sliding_Consts.carouselOptions,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20),
                                  child: CarouselSlider.builder(
                                    itemCount: 5,
                                    itemBuilder: (context, index, realIndex) {
                                      return GetX(
                                        init: weather_home_controller,
                                        builder: (controller) {
                                          if (controller.getMyMainModels.value.isNotEmpty) {
                                            return GestureDetector(
                                              onTap: () => controller.changing_Weather_Forecasting_Day(index),
                                              child: Container(
                                                width: 65,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                  color: DateFormat.E()
                                                              .format(
                                                                  DateTime.parse(controller.getWeatherForecastingModel.value.list![index * 8].dtTxt!))
                                                              .toString() ==
                                                          DateFormat.E().format(DateTime.now()).toString()
                                                      ? Home_Sliding_Consts.color7
                                                      : Home_Sliding_Consts.color8,
                                                  borderRadius: BorderRadius.circular(40.0),
                                                  border: Border.all(
                                                    color: Home_Sliding_Consts.color9,
                                                    width: 1.5.w,
                                                  ),
                                                ),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    Text(
                                                      DateFormat.E()
                                                                  .format(DateTime.parse(
                                                                      controller.getWeatherForecastingModel.value.list![index * 8].dtTxt!))
                                                                  .toString() ==
                                                              DateFormat.E().format(DateTime.now()).toString()
                                                          ? Home_Sliding_Consts.text5
                                                          : DateFormat.E()
                                                              .format(
                                                                  DateTime.parse(controller.getWeatherForecastingModel.value.list![index * 8].dtTxt!))
                                                              .toString(),
                                                      style: Home_Sliding_Consts.style4,
                                                    ),
                                                    OctoImage(
                                                      image: const AssetImage(Home_Sliding_Consts.image1),
                                                      fit: BoxFit.fill,
                                                      alignment: Alignment.center,
                                                      filterQuality: FilterQuality.high,
                                                    ),
                                                    Text(
                                                      "${((controller.getWeatherForecastingModel.value.list![index * 8].main!.temp! - 273.15).roundToDouble())}°C",
                                                      style: Home_Sliding_Consts.style5,
                                                      textAlign: TextAlign.center,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          } else {
                                            return Container(
                                              width: 65,
                                              alignment: Alignment.center,
                                              decoration: Home_Sliding_Consts.style6,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Text(
                                                    Home_Sliding_Consts.text5,
                                                    style: Home_Sliding_Consts.style4,
                                                  ),
                                                  OctoImage(
                                                    image: const AssetImage(Home_Sliding_Consts.image1),
                                                    fit: BoxFit.fill,
                                                    alignment: Alignment.center,
                                                    filterQuality: FilterQuality.high,
                                                  ),
                                                  Text(
                                                    Home_Sliding_Consts.text4,
                                                    style: Home_Sliding_Consts.style5,
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                              ),
                                            );
                                          }
                                        },
                                      );
                                    },
                                    options: Home_Sliding_Consts.carouselOptions,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                      child: Container(
                        height: 175,
                        width: double.infinity,
                        padding: const EdgeInsets.all(12.0),
                        decoration: Home_Sliding_Consts.style7,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset(
                                    color: Colors.grey.withOpacity(0.8),
                                    height: 20.h,
                                    fit: BoxFit.contain,
                                    width: 20.w,
                                    Home_Sliding_Consts.image2,
                                  ),
                                  Text(
                                    Home_Sliding_Consts.text6,
                                    textAlign: TextAlign.left,
                                    style: Home_Sliding_Consts.style8,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: GetX(
                                init: weather_home_controller,
                                builder: (controller) {
                                  if (controller.getMyMainModels.value.isNotEmpty) {
                                    return Text(
                                      "${controller.getAirQuality_Model.value.list![0].main!.aqi}%"
                                          "${controller.getAirQuality_Model.value.list![0].main!.aqi == 5 ? "Very Poor"
                                          : controller.getAirQuality_Model.value.list![0].main!.aqi == 4 ? "Poor"
                                          : controller.getAirQuality_Model.value.list![0].main!.aqi == 3 ? "Moderate"
                                          : controller.getAirQuality_Model.value.list![0].main!.aqi == 2 ? "Fair" : "Good"}",
                                      style: Home_Sliding_Consts.style9,
                                      textAlign: TextAlign.start,
                                    );
                                  } else {
                                    return Text(
                                      Home_Sliding_Consts.text7,
                                      style: Home_Sliding_Consts.style9,
                                      textAlign: TextAlign.start,
                                    );
                                  }
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: CustomShaderMask(
                                child: LinearProgressIndicator(
                                  borderRadius: BorderRadius.circular(20.0),
                                  minHeight: 3,
                                ),
                              ),
                            ),
                            Divider(
                              height: 18.h,
                              color: Colors.grey.withOpacity(0.6),
                              thickness: 1.5,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    Home_Sliding_Consts.text8,
                                    textAlign: TextAlign.left,
                                    style: Home_Sliding_Consts.style8,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 25.sp,
                                    color: Home_Sliding_Consts.color12,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(10.sp),
                          child: Container(
                            width: 175,
                            height: 175,
                            padding: const EdgeInsets.all(8.0),
                            decoration: Home_Sliding_Consts.style7,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      OctoImage(
                                        height: 35.h,
                                        width: 35.w,
                                        fit: BoxFit.contain,
                                        filterQuality: FilterQuality.high,
                                        image: const CachedNetworkImageProvider(Home_Sliding_Consts.image3),
                                      ),
                                      Text(
                                        Home_Sliding_Consts.text9,
                                        textAlign: TextAlign.left,
                                        style: Home_Sliding_Consts.style8,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 12),
                                  child: Text(
                                    Home_Sliding_Consts.text10,
                                    style: Home_Sliding_Consts.style10,
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: CustomShaderMask(
                                    child: LinearProgressIndicator(
                                      borderRadius: BorderRadius.circular(20.0),
                                      minHeight: 3,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.all(10.sp),
                          child: Container(
                            width: 175,
                            height: 175,
                            padding: const EdgeInsets.all(8.0),
                            decoration: Home_Sliding_Consts.style7,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                ImageFiltered(
                                  imageFilter: ImageFilter.blur(
                                    sigmaX: 3.0,
                                    tileMode: TileMode.clamp,
                                    sigmaY: 3.0,
                                  ),
                                  child: OctoImage(
                                    image: const AssetImage(Home_Sliding_Consts.image4),
                                    filterQuality: FilterQuality.high,
                                    fit: BoxFit.fill,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            OctoImage(
                                              height: 35.h,
                                              width: 35.w,
                                              fit: BoxFit.contain,
                                              filterQuality: FilterQuality.high,
                                              color: Home_Sliding_Colors.color11,
                                              image: const AssetImage(Home_Sliding_Consts.image5),
                                            ),
                                            SizedBox(
                                              width: 8.0.w,
                                            ),
                                            Text(
                                              Home_Sliding_Consts.text11,
                                              textAlign: TextAlign.left,
                                              style: Home_Sliding_Consts.style8,
                                            ),
                                          ],
                                        ),
                                      ),
                                      GetX(
                                        init: weather_home_controller,
                                        builder: (controller) {
                                          if (controller.getMyMainModels.value.isNotEmpty) {
                                            return Text(
                                              DateFormat.jm().format(DateTime.fromMillisecondsSinceEpoch(
                                                  (controller.getCurrentWeatherModel.value.sys!.sunrise!.toInt() - 37140000).toInt())),
                                              style: Home_Sliding_Consts.style11,
                                              textAlign: TextAlign.center,
                                            );
                                          } else {
                                            return Text(
                                              Home_Sliding_Consts.text12,
                                              style: TextStyle(
                                                color: Colors.white,
                                                letterSpacing: 3.0.w,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 28.0.sp,
                                                fontFamily: "SF Pro Display",
                                              ),
                                              textAlign: TextAlign.start,
                                            );
                                          }
                                        },
                                      ),
                                      Divider(
                                        height: 30.h,
                                        color: Colors.grey.withOpacity(0.6),
                                        thickness: 2,
                                      ),
                                      GetX(
                                        init: weather_home_controller,
                                        builder: (controller) {
                                          if (controller.getMyMainModels.value.isNotEmpty) {
                                            return Text(
                                              "Sunset: ${DateFormat.jm().format(DateTime.fromMillisecondsSinceEpoch((controller.getCurrentWeatherModel.value.sys!.sunset!.toInt() + 6000000).toInt()))}",
                                              style: Home_Sliding_Consts.style12,
                                              textAlign: TextAlign.center,
                                            );
                                          } else {
                                            return Text(
                                              "Sunset: 06:00 PM",
                                              style: Home_Sliding_Consts.style12,
                                              textAlign: TextAlign.center,
                                            );
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.all(10.sp),
                          child: Container(
                            width: 175,
                            height: 175,
                            decoration: Home_Sliding_Consts.style7,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                ImageFiltered(
                                  imageFilter: ImageFilter.blur(
                                    sigmaX: 3.0,
                                    tileMode: TileMode.clamp,
                                    sigmaY: 3.0,
                                  ),
                                  child: OctoImage(
                                    image: const AssetImage(Home_Sliding_Consts.image6),
                                    filterQuality: FilterQuality.high,
                                    fit: BoxFit.fill,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            OctoImage(
                                              height: 40,
                                              width: 40,
                                              fit: BoxFit.contain,
                                              filterQuality: FilterQuality.high,
                                              image: const AssetImage(Home_Sliding_Consts.image7),
                                            ),
                                            SizedBox(
                                              width: 8.0.w,
                                            ),
                                            Text(
                                              Home_Sliding_Consts.text13,
                                              textAlign: TextAlign.left,
                                              style: Home_Sliding_Consts.style8,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: GetX(
                                    init: weather_home_controller,
                                    builder: (controller) {
                                      if (controller.getMyMainModels.value.isNotEmpty) {
                                        return Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              Home_Sliding_Consts.text14,
                                              style: Home_Sliding_Consts.style11,
                                              textAlign: TextAlign.center,
                                            ),
                                            Text(
                                              "${(controller.getCurrentWeatherModel.value.wind!.speed!.toDouble() * 3.6).roundToDouble()} Km/H",
                                              style: Home_Sliding_Consts.style10,
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        );
                                      } else {
                                        return Text(
                                          Home_Sliding_Consts.text15,
                                          style: Home_Sliding_Consts.style10,
                                          textAlign: TextAlign.start,
                                        );
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.all(10.sp),
                          child: Container(
                            width: 175,
                            height: 175,
                            decoration: Home_Sliding_Consts.style7,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                ImageFiltered(
                                  imageFilter: ImageFilter.blur(
                                    sigmaX: 3.0,
                                    tileMode: TileMode.decal,
                                    sigmaY: 3.0,
                                  ),
                                  child: OctoImage(
                                    image: const AssetImage(Home_Sliding_Consts.image8),
                                    filterQuality: FilterQuality.high,
                                    fit: BoxFit.fill,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            OctoImage(
                                              height: 50,
                                              width: 50,
                                              fit: BoxFit.cover,
                                              filterQuality: FilterQuality.high,
                                              image: const AssetImage(Home_Sliding_Consts.image9),
                                            ),
                                            Text(
                                              Home_Sliding_Consts.text16,
                                              textAlign: TextAlign.left,
                                              style: Home_Sliding_Consts.style8,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        Home_Sliding_Consts.text17,
                                        style: Home_Sliding_Consts.style11,
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        Home_Sliding_Consts.text18,
                                        style: Home_Sliding_Consts.style12,
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.all(10.sp),
                          child: Container(
                            width: 175,
                            height: 175,
                            decoration: Home_Sliding_Consts.style7,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                ImageFiltered(
                                  imageFilter: ImageFilter.blur(
                                    sigmaX: 3.0,
                                    tileMode: TileMode.clamp,
                                    sigmaY: 3.0,
                                  ),
                                  child: OctoImage(
                                    image: const AssetImage(Home_Sliding_Consts.image10),
                                    filterQuality: FilterQuality.high,
                                    fit: BoxFit.fill,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            OctoImage(
                                              height: 40,
                                              width: 40,
                                              fit: BoxFit.contain,
                                              filterQuality: FilterQuality.high,
                                              image: const AssetImage(Home_Sliding_Consts.image11),
                                            ),
                                            SizedBox(
                                              width: 8.0.w,
                                            ),
                                            Text(
                                              Home_Sliding_Consts.text19,
                                              textAlign: TextAlign.left,
                                              style: Home_Sliding_Consts.style8,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: GetX(
                                    init: weather_home_controller,
                                    builder: (controller) {
                                      if (controller.getMyMainModels.value.isNotEmpty) {
                                        return Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              Home_Sliding_Consts.text20,
                                              style: Home_Sliding_Consts.style11,
                                              textAlign: TextAlign.center,
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                "${((controller.getCurrentWeatherModel.value.main!.feelsLike! - 273.15)).roundToDouble()} °C",
                                                style: Home_Sliding_Consts.style9,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        );
                                      } else {
                                        return Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              Home_Sliding_Consts.text20,
                                              style: Home_Sliding_Consts.style11,
                                              textAlign: TextAlign.center,
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                Home_Sliding_Consts.text4,
                                                style: Home_Sliding_Consts.style9,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        );
                                      }
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      Home_Sliding_Consts.text21,
                                      style: Home_Sliding_Consts.style13,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.all(10.sp),
                          child: Container(
                            width: 175,
                            height: 175,
                            decoration: Home_Sliding_Consts.style7,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                ImageFiltered(
                                  imageFilter: ImageFilter.blur(
                                    sigmaX: 3.0,
                                    tileMode: TileMode.decal,
                                    sigmaY: 3.0,
                                  ),
                                  child: OctoImage(
                                    image: const AssetImage(Home_Sliding_Consts.image12),
                                    filterQuality: FilterQuality.high,
                                    fit: BoxFit.fill,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              OctoImage(
                                                height: 30,
                                                width: 30,
                                                fit: BoxFit.cover,
                                                filterQuality: FilterQuality.high,
                                                image: const AssetImage(Home_Sliding_Consts.image13),
                                              ),
                                              Text(
                                                Home_Sliding_Consts.text22,
                                                textAlign: TextAlign.left,
                                                style: Home_Sliding_Consts.style8,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        Home_Sliding_Consts.text23,
                                        style: Home_Sliding_Consts.style11,
                                        textAlign: TextAlign.center,
                                      ),
                                      GetX(
                                        init: weather_home_controller,
                                        builder: (controller) {
                                          if (controller.getMyMainModels.value.isNotEmpty) {
                                            return Text(
                                              "${controller.getCurrentWeatherModel.value.main!.humidity} %",
                                              style: Home_Sliding_Consts.style9,
                                              textAlign: TextAlign.center,
                                            );
                                          } else {
                                            return Text(
                                              Home_Sliding_Consts.text24,
                                              style: Home_Sliding_Consts.style9,
                                              textAlign: TextAlign.center,
                                            );
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.all(10.sp),
                          child: Container(
                            width: 175,
                            height: 175,
                            decoration: Home_Sliding_Consts.style7,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                ImageFiltered(
                                  imageFilter: ImageFilter.blur(
                                    sigmaX: 3.0,
                                    tileMode: TileMode.clamp,
                                    sigmaY: 3.0,
                                  ),
                                  child: OctoImage(
                                    image: const CachedNetworkImageProvider(Home_Sliding_Consts.image14),
                                    filterQuality: FilterQuality.high,
                                    fit: BoxFit.fill,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              OctoImage(
                                                height: 30,
                                                width: 30,
                                                fit: BoxFit.contain,
                                                filterQuality: FilterQuality.high,
                                                image: const CachedNetworkImageProvider(Home_Sliding_Consts.image15),
                                              ),
                                              SizedBox(
                                                width: 8.0.w,
                                              ),
                                              Text(
                                                Home_Sliding_Consts.text25,
                                                textAlign: TextAlign.left,
                                                style: Home_Sliding_Consts.style8,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: GetX(
                                    init: weather_home_controller,
                                    builder: (controller) {
                                      if (controller.getMyMainModels.value.isNotEmpty) {
                                        return Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              Home_Sliding_Consts.text26,
                                              style: Home_Sliding_Consts.style11,
                                              textAlign: TextAlign.center,
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                "${(controller.getCurrentWeatherModel.value.visibility! / 1000)} KM",
                                                style: Home_Sliding_Consts.style9,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        );
                                      } else {
                                        return Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              Home_Sliding_Consts.text26,
                                              style: Home_Sliding_Consts.style11,
                                              textAlign: TextAlign.center,
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                Home_Sliding_Consts.text27,
                                                style: Home_Sliding_Consts.style9,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        );
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.all(10.sp),
                          child: Container(
                            width: 175,
                            height: 175,
                            decoration: Home_Sliding_Consts.style7,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                ImageFiltered(
                                  imageFilter: ImageFilter.blur(
                                    sigmaX: 3.0,
                                    tileMode: TileMode.decal,
                                    sigmaY: 3.0,
                                  ),
                                  child: OctoImage(
                                    image: const CachedNetworkImageProvider(Home_Sliding_Consts.image16),
                                    filterQuality: FilterQuality.high,
                                    fit: BoxFit.contain,
                                    alignment: Alignment.center,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              OctoImage(
                                                height: 30,
                                                width: 30,
                                                fit: BoxFit.cover,
                                                filterQuality: FilterQuality.high,
                                                image: const AssetImage(Home_Sliding_Consts.image17),
                                              ),
                                              Text(
                                                Home_Sliding_Consts.text28,
                                                textAlign: TextAlign.left,
                                                style: Home_Sliding_Consts.style8,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        Home_Sliding_Consts.text29,
                                        style: Home_Sliding_Consts.style11,
                                        textAlign: TextAlign.center,
                                      ),
                                      GetX(
                                        init: weather_home_controller,
                                        builder: (controller) {
                                          if (controller.getMyMainModels.value.isNotEmpty) {
                                            return Text(
                                              "${controller.getCurrentWeatherModel.value.main!.pressure} hpa",
                                              style: Home_Sliding_Consts.style9,
                                              textAlign: TextAlign.center,
                                            );
                                          } else {
                                            return Text(
                                              Home_Sliding_Consts.text24,
                                              style: Home_Sliding_Consts.style9,
                                              textAlign: TextAlign.center,
                                            );
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      Home_Sliding_Consts.text30,
                                      style: Home_Sliding_Consts.style14,
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 170,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
