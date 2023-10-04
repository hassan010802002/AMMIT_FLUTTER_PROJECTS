// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:octo_image/octo_image.dart';
import 'package:weathery_news_app/Components/CustomTextField/CustomTextField.dart';
import 'package:weathery_news_app/Consts/Weather_Searching_Consts/Weather_Searching_Consts.dart';
import 'package:weathery_news_app/Controllers/Weather_Home_Controller/Weather_Home_Controller.dart';
import 'package:weathery_news_app/Controllers/Weather_Searching_Controller/Weather_Searching_Controller.dart';
import 'package:weathery_news_app/Routes/MyPages/MyPages.dart';

class MyWeather_Search extends StatelessWidget {
  const MyWeather_Search({super.key});

  @override
  Widget build(BuildContext context) {
    return const Weather_Searching_Screen();
  }
}

class Weather_Searching_Screen extends StatefulWidget {
  const Weather_Searching_Screen({super.key});

  @override
  State<StatefulWidget> createState() => _Weather_Searching_Screen();
}

class _Weather_Searching_Screen extends State<Weather_Searching_Screen> {
  final Weather_Searching_Controller weather_searching_controller = Get.put(Weather_Searching_Controller());
  final Weather_Home_Controller weather_home_controller = Get.put(Weather_Home_Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        primary: true,
        elevation: 8.0,
        clipBehavior: Clip.antiAlias,
        toolbarHeight: 85.0,
        title: Text(
          Weather_Searching_Consts.text1,
          style: Weather_Searching_Consts.style1,
          textAlign: TextAlign.left,
        ),
        backgroundColor: Weather_Searching_Consts.color2,
        leading: GestureDetector(
          onTap: () {
            weather_searching_controller.Navigating_Back();
          },
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Weather_Searching_Consts.color3,
            size: 30.0.sp,
          ),
        ),
        leadingWidth: 50.0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SvgPicture.asset(
              Weather_Searching_Consts.image1,
              color: Weather_Searching_Consts.color1,
              alignment: Alignment.center,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: Weather_Searching_Consts.style2,
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 100.h),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
              child: CustomTextField(
                controller: weather_searching_controller.textEditingController.value,
                fillColor: Weather_Searching_Consts.color6,
                keyboardType: TextInputType.name,
                hintText: Weather_Searching_Consts.text2,
                icon: Icons.location_searching_rounded,
                style: Weather_Searching_Consts.style3,
                onSubmitted: (_) {
                  weather_searching_controller.Starting_Weather_Models();
                },
              ),
            ),
            Expanded(
              child: Align(
                alignment: AlignmentDirectional.topCenter,
                child: GetX(
                  init: weather_searching_controller,
                  builder: (controller) {
                    if (controller.getMyMainModels.value.isNotEmpty) {
                      return ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        controller: ScrollController(),
                        itemCount: controller.getCurrentLocations.value.length,
                        itemBuilder: (context, index) {
                          controller.Updating_Direct_Location_Model(index);
                          return Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: GestureDetector(
                                onTap: () {
                                  controller.Selecting_Weather_Location(index);
                                  weather_home_controller.Updating_Weather_Models(
                                    weatherModel: controller.getCurrentWeatherModel.value,
                                    weatherForcastModel: controller.getWeatherForecastingModel.value,
                                    locations_model: controller.getLocationModel.value,
                                    airQualityModel: controller.getAirQuality_Model.value,
                                  );
                                  controller.Navigation(MyPages.homeScreen);
                                },
                                child: Container(
                                  height: 185,
                                  decoration: Weather_Searching_Consts.style4,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    fit: StackFit.expand,
                                    children: [
                                      SvgPicture.asset(
                                        Weather_Searching_Consts.image2,
                                        fit: BoxFit.fill,
                                        alignment: Alignment.center,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "${((controller.getCurrentWeatherModel.value.main!.temp! - 273.15)).roundToDouble()}°C",
                                                  textAlign: TextAlign.start,
                                                  style: Weather_Searching_Consts.style5,
                                                ),
                                                OctoImage(
                                                  image: const AssetImage(
                                                    Weather_Searching_Consts.image3,
                                                  ),
                                                  width: 120,
                                                  height: 120,
                                                  fit: BoxFit.contain,
                                                  alignment: Alignment.center,
                                                  filterQuality: FilterQuality.high,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "max: ${((controller.getCurrentWeatherModel.value.main!.tempMax! - 273.15)).roundToDouble()}°C min: ${((controller.getCurrentWeatherModel.value.main!.tempMin! - 273.15)).roundToDouble()}°C",
                                                      textAlign: TextAlign.start,
                                                      style: Weather_Searching_Consts.style6,
                                                    ),
                                                    SizedBox(
                                                      height: 5.0.h,
                                                    ),
                                                    Text(
                                                      "${controller.getLocationModel.value.name}, ${controller.getLocationModel.value.state}",
                                                      textAlign: TextAlign.start,
                                                      style: Weather_Searching_Consts.style7,
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  "${controller.getCurrentWeatherModel.value.weather![0].description}",
                                                  textAlign: TextAlign.start,
                                                  style: Weather_Searching_Consts.style8,
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    } else {
                      return const Center(
                        child: SizedBox(
                          height: 50,
                        ),
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
