import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:weathery_news_app/Components/Custom_Button/Custom_Button.dart';
import 'package:weathery_news_app/Controllers/Weather_Splash_Screen_Controller/Weather_Splash_Screen_Controller.dart';
import 'package:weathery_news_app/Routes/MyPages/MyPages.dart';

class MyWeather_Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Weather_Splash_Screen(),
    );
  }
}

class Weather_Splash_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Weather_Splash_Screen_State();
}

class _Weather_Splash_Screen_State extends State<Weather_Splash_Screen> {
  Weather_Splash_Screen_Controller controller =
      Get.put(Weather_Splash_Screen_Controller());

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData(
        size: Size.infinite,
        boldText: true,
        highContrast: true,
        textScaleFactor: 1.0.sp,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0.sp),
          gradient: const LinearGradient(
            colors: <Color>[
              Color(0xff17203f),
              Color(0xff9638a8),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(
                "assets/icons/weather_icons/sun/13.png",
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 80.h,
              ),
              Text(
                "Weather",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w800,
                  fontSize: 72.sp,
                  letterSpacing: 5.0,
                ),
              ),
              Text(
                "ForeCasts",
                style: TextStyle(
                  color: const Color(0xffDDB130),
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: 72.sp,
                  letterSpacing: 5.0,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomButton(
                onPressed: () {
                  controller.Navigation(MyPages.homeScreen);
                },
                fixedSize: const MaterialStatePropertyAll(Size(310, 70)),
                backgroundColor:
                    const MaterialStatePropertyAll(Color(0xffDDB130)),
                buttonText: "Get Start",
                style: TextStyle(
                  color: const Color(0xff362A84),
                  fontWeight: FontWeight.w800,
                  fontSize: 30.0.spMax,
                  fontFamily: "Open Sans",
                  letterSpacing: 2.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
