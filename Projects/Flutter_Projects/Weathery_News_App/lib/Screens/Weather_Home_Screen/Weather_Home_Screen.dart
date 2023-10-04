import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:octo_image/octo_image.dart';
import 'package:weathery_news_app/Consts/Weather_Home_Consts/Colors/Weather_Home_Colors.dart';
import 'package:weathery_news_app/Consts/Weather_Home_Consts/Weather_Home_Consts.dart';
import 'package:weathery_news_app/Controllers/Weather_Home_Controller/Weather_Home_Controller.dart';
import 'package:weathery_news_app/Routes/MyPages/MyPages.dart';
import 'package:weathery_news_app/Screens/Home_Sliding_Screen/Home_Sliding_Screen.dart';

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
            Weather_Home_Consts.image1,
            fit: BoxFit.cover,
            color: Weather_Home_Colors.color1,
            colorBlendMode: BlendMode.difference,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 30.w, bottom: 10.h),
              child: GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  Weather_Home_Consts.image2,
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
                Weather_Home_Consts.image3,
                fit: BoxFit.fill,
                color: Weather_Home_Colors.color2,
              ),
              FloatingActionButton(
                onPressed: () {
                  weather_home_controller.Navigating(MyPages.searchScreen);
                },
                elevation: 20.0,
                isExtended: true,
                splashColor: Weather_Home_Colors.color3,
                backgroundColor: Weather_Home_Colors.color5,
                child: Icon(
                  Icons.add_rounded,
                  size: 45.spMax,
                  color: Weather_Home_Colors.color4,
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
                child: SvgPicture.asset(
                  Weather_Home_Consts.image4,
                  fit: BoxFit.fill,
                  width: 35.w,
                  height: 35.h,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: Weather_Home_Consts.style1,
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
                              style: Weather_Home_Consts.style2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "${((controller.getCurrentWeatherModel.value.main!.temp! - 273.15)).roundToDouble()}°C",
                              style: Weather_Home_Consts.style3,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Status: ${controller.getCurrentWeatherModel.value.weather![0].description!}",
                              style: Weather_Home_Consts.style4,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Max: ${((controller.getCurrentWeatherModel.value.main!.tempMax! - 273.15)).roundToDouble()}°C - Min: ${((controller.getCurrentWeatherModel.value.main!.tempMin! - 273.15)).roundToDouble()}°C",
                              style: Weather_Home_Consts.style5,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 35.h,
                            ),
                            OctoImage(
                              image: const AssetImage(
                                Weather_Home_Consts.image6,
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
                              Weather_Home_Consts.text1,
                              style: Weather_Home_Consts.style2,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              Weather_Home_Consts.text2,
                              style: Weather_Home_Consts.style3,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              Weather_Home_Consts.text3,
                              style: Weather_Home_Consts.style4,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              Weather_Home_Consts.text4,
                              style: Weather_Home_Consts.style5,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 35.h,
                            ),
                            OctoImage(
                              image: const AssetImage(
                                Weather_Home_Consts.image7,
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
                Flex(
                  direction: Axis.vertical,
                  children: [
                    Expanded(
                      child: MySliding_Pannel(weather_home_controller),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
