import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:octo_image/octo_image.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:weathery_news_app/Components/Custom_ShaderMask/Custom_ShaderMask.dart';
import 'package:weathery_news_app/Controllers/Weather_Home_Controller/Weather_Home_Controller.dart';
import 'package:weathery_news_app/Models/Locations_Model/Locations_Model.dart';
import 'package:weathery_news_app/Models/Weather_Model/Weather_Model.dart';

class MyHome_Weather extends StatelessWidget {
  const MyHome_Weather({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home_Weather_Screen();
  }
}

class Home_Weather_Screen extends StatefulWidget {
  const Home_Weather_Screen({super.key});

  @override
  State<StatefulWidget> createState() => _Home_Weather_Screen_State();
}

class _Home_Weather_Screen_State extends State<Home_Weather_Screen> {
  final Weather_Home_Controller weather_home_controller = Get.put(Weather_Home_Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        fit: StackFit.passthrough,
        children: [
          SvgPicture.asset(
            "assets/images/Rectangle364.svg",
            fit: BoxFit.cover,
            color: const Color(0xff2f2d55),
            colorBlendMode: BlendMode.difference,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 30.w, bottom: 10.h),
              child: GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  "assets/images/Map.svg",
                  fit: BoxFit.fill,
                  width: 35.w,
                  height: 35.h,
                ),
              ),
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/Subtract.svg",
                fit: BoxFit.fill,
                color: const Color(0xff262C51),
              ),
              FloatingActionButton(
                onPressed: () {},
                elevation: 20.0,
                isExtended: true,
                splashColor: const Color(0xff7582F4),
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.add_rounded,
                  size: 45.spMax,
                  color: const Color(0xff48319D),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(right: 30.w, bottom: 10.h),
              child: MediaQuery(
                data: MediaQueryData(
                  size: Size(35.w, 35.h),
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    "assets/images/Hover.svg",
                    fit: BoxFit.fill,
                    width: 35.w,
                    height: 35.h,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0.spMax),
          image: const DecorationImage(
            fit: BoxFit.fill,
            filterQuality: FilterQuality.high,
            image: AssetImage(
              "assets/images/imagescreen_background.jpg",
            ),
          ),
        ),
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(
              top: 65.0.h,
            ),
            child: Stack(
              fit: StackFit.passthrough,
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: GetX(
                    init: weather_home_controller,
                    builder: (controller) {
                      if (controller.getMyMainModels.value.isNotEmpty) {
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              controller.getReverseLocationModel.value.name!,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 50.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "SF Pro Display",
                                letterSpacing: 3.w,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "${((controller.getCurrentWeatherModel.value.main!.temp! - 273.15)).roundToDouble()}°C",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 65.sp,
                                fontWeight: FontWeight.w200,
                                fontFamily: "SF Pro Display",
                                letterSpacing: 3.w,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Status: ${controller.getCurrentWeatherModel.value.weather![0].description!}",
                              style: TextStyle(
                                color: const Color(0xffebebf599).withOpacity(0.6),
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "SF Pro Display",
                                letterSpacing: 2.w,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Max: ${((controller.getCurrentWeatherModel.value.main!.tempMax! - 273.15)).roundToDouble()}°C - Min: ${((controller.getCurrentWeatherModel.value.main!.tempMin! - 273.15)).roundToDouble()}°C",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w200,
                                fontFamily: "SF Pro Display",
                                letterSpacing: 2.w,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 35.h,
                            ),
                            OctoImage(
                              image: const AssetImage(
                                "assets/images/House.png",
                              ),
                              fit: BoxFit.contain,
                              alignment: Alignment.center,
                              filterQuality: FilterQuality.high,
                            ),
                          ],
                        );
                      } else {
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Montreal",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 50.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "SF Pro Display",
                                letterSpacing: 3.w,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "19°C",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 65.sp,
                                fontWeight: FontWeight.w200,
                                fontFamily: "SF Pro Display",
                                letterSpacing: 3.w,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Status: Mostly Clear",
                              style: TextStyle(
                                color: const Color(0xffebebf599).withOpacity(0.6),
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: "SF Pro Display",
                                letterSpacing: 2.w,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Max: 24°C Min: 18°C",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w200,
                                fontFamily: "SF Pro Display",
                                letterSpacing: 2.w,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 35.h,
                            ),
                            OctoImage(
                              image: const AssetImage(
                                "assets/images/House.png",
                              ),
                              fit: BoxFit.contain,
                              alignment: Alignment.center,
                              filterQuality: FilterQuality.high,
                            ),
                          ],
                        );
                      }
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SlidingUpPanel(
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
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(45.0.sp),
                            ),
                            gradient: const LinearGradient(
                              colors: <Color>[
                                Color(0xff17203f),
                                Color(0xff9638a8),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(0, 0, 0, 0.4),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
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
                                        onTap: (value) {},
                                        unselectedLabelColor: const Color.fromRGBO(235, 235, 245, 0.6),
                                        unselectedLabelStyle: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.sp,
                                          color: const Color.fromRGBO(235, 235, 245, 0.6),
                                          fontFamily: "SF Pro Display",
                                        ),
                                        labelStyle: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.sp,
                                          color: const Color.fromRGBO(235, 235, 245, 0.6),
                                          fontFamily: "SF Pro Display",
                                        ),
                                        labelColor: const Color.fromRGBO(235, 235, 245, 1),
                                        indicatorColor: const Color.fromRGBO(255, 255, 255, 0.3),
                                        indicatorPadding: EdgeInsets.symmetric(horizontal: 12.0.w),
                                        indicatorWeight: 3.0.sp,
                                        indicatorSize: TabBarIndicatorSize.tab,
                                        tabs: const [
                                          Tab(
                                            height: 50,
                                            child: Text(
                                              "Hourly Forecast",
                                            ),
                                          ),
                                          Tab(
                                            height: 50,
                                            child: Text(
                                              "Weekly Forecast",
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
                                                              color: (DateFormat.j()
                                                                              .format(DateTime.parse(controller
                                                                                  .getWeatherForecastingModel.value.list![index].dtTxt!))
                                                                              .toString() ==
                                                                          DateFormat.j().format(DateTime.now()).toString()) ||
                                                                      (DateTime.parse(controller
                                                                                      .getWeatherForecastingModel.value.list![index].dtTxt!)
                                                                                  .hour -
                                                                              DateTime.now().hour ==
                                                                          1) ||
                                                                      (DateTime.now().hour -
                                                                              DateTime.parse(controller
                                                                                      .getWeatherForecastingModel.value.list![index].dtTxt!)
                                                                                  .hour ==
                                                                          1)
                                                                  ? const Color(0xff48319D)
                                                                  : const Color.fromRGBO(72, 49, 157, 0.20),
                                                              borderRadius: BorderRadius.circular(40.0),
                                                              border: Border.all(
                                                                color: const Color.fromRGBO(255, 255, 255, 0.50),
                                                                width: 1.5.w,
                                                              ),
                                                            ),
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              mainAxisSize: MainAxisSize.max,
                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                              children: [
                                                                Text(
                                                                  (DateFormat.j()
                                                                                  .format(DateTime.parse(controller
                                                                                      .getWeatherForecastingModel.value.list![index].dtTxt!))
                                                                                  .toString() ==
                                                                              DateFormat.j().format(DateTime.now()).toString()) ||
                                                                          (DateTime.parse(controller.getWeatherForecastingModel.value.list![index].dtTxt!).hour -
                                                                                  DateTime.now().hour ==
                                                                              1) ||
                                                                          (DateTime.now().hour -
                                                                                  DateTime.parse(controller
                                                                                          .getWeatherForecastingModel.value.list![index].dtTxt!)
                                                                                      .hour ==
                                                                              1)
                                                                      ? "Now"
                                                                      : DateFormat.j()
                                                                          .format(DateTime.parse(
                                                                              controller.getWeatherForecastingModel.value.list![index].dtTxt!))
                                                                          .toString(),
                                                                  style: TextStyle(
                                                                      fontFamily: "SF Pro Display",
                                                                      color: Colors.white,
                                                                      fontSize: 18.sp,
                                                                      fontWeight: FontWeight.w800,
                                                                      letterSpacing: 2.w),
                                                                ),
                                                                OctoImage(
                                                                  image: const AssetImage("assets/icons/weather_icons/moon/3.png"),
                                                                  fit: BoxFit.fill,
                                                                  alignment: Alignment.center,
                                                                  filterQuality: FilterQuality.high,
                                                                ),
                                                                Text(
                                                                  "${((controller.getWeatherForecastingModel.value.list![index].main!.temp! - 273.15).roundToDouble())}°C",
                                                                  style: TextStyle(
                                                                    fontFamily: "SF Pro Display",
                                                                    color: Colors.white,
                                                                    fontSize: 15.sp,
                                                                    fontWeight: FontWeight.w600,
                                                                    letterSpacing: 2.w,
                                                                  ),
                                                                  textAlign: TextAlign.center,
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        } else {
                                                          return Container(
                                                            width: 65,
                                                            alignment: Alignment.center,
                                                            decoration: BoxDecoration(
                                                              color: const Color(0xff48319D),
                                                              borderRadius: BorderRadius.circular(40.0),
                                                              border: Border.all(
                                                                color: const Color.fromRGBO(255, 255, 255, 0.50),
                                                                width: 1.5.w,
                                                              ),
                                                            ),
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              mainAxisSize: MainAxisSize.max,
                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                              children: [
                                                                Text(
                                                                  "Now",
                                                                  style: TextStyle(
                                                                      fontFamily: "SF Pro Display",
                                                                      color: Colors.white,
                                                                      fontSize: 18.sp,
                                                                      fontWeight: FontWeight.w800,
                                                                      letterSpacing: 2.w),
                                                                ),
                                                                OctoImage(
                                                                  image: const AssetImage("assets/icons/weather_icons/moon/3.png"),
                                                                  fit: BoxFit.fill,
                                                                  alignment: Alignment.center,
                                                                  filterQuality: FilterQuality.high,
                                                                ),
                                                                Text(
                                                                  "20°C",
                                                                  style: TextStyle(
                                                                    fontFamily: "SF Pro Display",
                                                                    color: Colors.white,
                                                                    fontSize: 15.sp,
                                                                    fontWeight: FontWeight.w600,
                                                                    letterSpacing: 2.w,
                                                                  ),
                                                                  textAlign: TextAlign.center,
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                      },
                                                    );
                                                  },
                                                  options: CarouselOptions(
                                                    height: 150,
                                                    scrollDirection: Axis.horizontal,
                                                    enlargeCenterPage: false,
                                                    initialPage: 0,
                                                    viewportFraction: 0.2,
                                                  ),
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
                                                          return Container(
                                                            width: 65,
                                                            alignment: Alignment.center,
                                                            decoration: BoxDecoration(
                                                              color: DateFormat.E()
                                                                          .format(DateTime.parse(controller
                                                                              .getWeatherForecastingModel.value.list![index * 8].dtTxt!))
                                                                          .toString() ==
                                                                      DateFormat.E().format(DateTime.now()).toString()
                                                                  ? const Color(0xff48319D)
                                                                  : const Color.fromRGBO(72, 49, 157, 0.20),
                                                              borderRadius: BorderRadius.circular(40.0),
                                                              border: Border.all(
                                                                color: const Color.fromRGBO(255, 255, 255, 0.50),
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
                                                                              .format(DateTime.parse(controller
                                                                                  .getWeatherForecastingModel.value.list![index * 8].dtTxt!))
                                                                              .toString() ==
                                                                          DateFormat.E().format(DateTime.now()).toString()
                                                                      ? "Today"
                                                                      : DateFormat.E()
                                                                          .format(DateTime.parse(controller
                                                                              .getWeatherForecastingModel.value.list![index * 8].dtTxt!))
                                                                          .toString(),
                                                                  style: TextStyle(
                                                                      fontFamily: "SF Pro Display",
                                                                      color: Colors.white,
                                                                      fontSize: 18.sp,
                                                                      fontWeight: FontWeight.w800,
                                                                      letterSpacing: 2.w),
                                                                ),
                                                                OctoImage(
                                                                  image: const AssetImage("assets/icons/weather_icons/moon/3.png"),
                                                                  fit: BoxFit.fill,
                                                                  alignment: Alignment.center,
                                                                  filterQuality: FilterQuality.high,
                                                                ),
                                                                Text(
                                                                  "${((controller.getWeatherForecastingModel.value.list![index * 8].main!.temp! - 273.15).roundToDouble())}°C",
                                                                  style: TextStyle(
                                                                    fontFamily: "SF Pro Display",
                                                                    color: Colors.white,
                                                                    fontSize: 15.sp,
                                                                    fontWeight: FontWeight.w600,
                                                                    letterSpacing: 2.w,
                                                                  ),
                                                                  textAlign: TextAlign.center,
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        } else {
                                                          return Container(
                                                            width: 65,
                                                            alignment: Alignment.center,
                                                            decoration: BoxDecoration(
                                                              color: const Color(0xff48319D),
                                                              borderRadius: BorderRadius.circular(40.0),
                                                              border: Border.all(
                                                                color: const Color.fromRGBO(255, 255, 255, 0.50),
                                                                width: 1.5.w,
                                                              ),
                                                            ),
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              mainAxisSize: MainAxisSize.max,
                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                              children: [
                                                                Text(
                                                                  "Today",
                                                                  style: TextStyle(
                                                                      fontFamily: "SF Pro Display",
                                                                      color: Colors.white,
                                                                      fontSize: 18.sp,
                                                                      fontWeight: FontWeight.w800,
                                                                      letterSpacing: 2.w),
                                                                ),
                                                                OctoImage(
                                                                  image: const AssetImage("assets/icons/weather_icons/moon/3.png"),
                                                                  fit: BoxFit.fill,
                                                                  alignment: Alignment.center,
                                                                  filterQuality: FilterQuality.high,
                                                                ),
                                                                Text(
                                                                  "20°C",
                                                                  style: TextStyle(
                                                                    fontFamily: "SF Pro Display",
                                                                    color: Colors.white,
                                                                    fontSize: 15.sp,
                                                                    fontWeight: FontWeight.w600,
                                                                    letterSpacing: 2.w,
                                                                  ),
                                                                  textAlign: TextAlign.center,
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        }
                                                      },
                                                    );
                                                  },
                                                  options: CarouselOptions(
                                                    height: 150,
                                                    scrollDirection: Axis.horizontal,
                                                    enlargeCenterPage: false,
                                                    initialPage: 0,
                                                    viewportFraction: 0.2,
                                                  ),
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
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25.sp),
                                        border: Border.all(
                                          color: const Color.fromRGBO(255, 255, 255, 0.3),
                                          width: 3.w,
                                        ),
                                        color: const Color(0xff17203f),
                                      ),
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
                                                  "assets/images/air-quality-control-management-environment-ecology-purifier-pollution-svgrepo-com.svg",
                                                ),
                                                Text(
                                                  "AIR QUALITY",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16.sp,
                                                    fontFamily: "SF Pro Display",
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 12),
                                            child: Text(
                                              "5% Low Health Risk",
                                              style: TextStyle(
                                                color: Colors.white,
                                                letterSpacing: 3.0.w,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 24.0.sp,
                                                fontFamily: "SF Pro Display",
                                              ),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.symmetric(vertical: 8.0),
                                            child: CustomShaderMask(
                                              child: LinearProgressIndicator(),
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
                                                  "See more",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 20.sp,
                                                    fontFamily: "SF Pro Display",
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.arrow_forward_ios_rounded,
                                                  size: 25.sp,
                                                  color: Colors.blueGrey.withOpacity(0.8),
                                                )
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
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
