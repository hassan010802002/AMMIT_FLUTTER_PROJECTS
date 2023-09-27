import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weathery_news_app/Components/Custom_Button/Custom_Button.dart';
import 'package:weathery_news_app/Consts/Weather_Splash_%20Consts/Colors/Weather_Splash_Colors.dart';
import 'package:weathery_news_app/Consts/Weather_Splash_%20Consts/Weather_Splash_Consts.dart';
import 'package:weathery_news_app/Controllers/Weather_Splash_Controller/Weather_Splash_Controller.dart';
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
  Weather_Splash_Controller controller =
      Get.put(Weather_Splash_Controller());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0.sp),
        gradient: const LinearGradient(
          colors: <Color>[
            Weather_Splash_Consts.backgroundGraidientColor0,
            Weather_Splash_Consts.backgroundGraidientColor1,
            Weather_Splash_Consts.backgroundGraidientColor2,
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
              Weather_Splash_Consts.imagePath1,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 80.h,
            ),
            Text(
              Weather_Splash_Consts.text1,
              style: Weather_Splash_Consts.textStyle1,
            ),
            Text(
              Weather_Splash_Consts.text2,
              style: Weather_Splash_Consts.textStyle2,
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
                  const MaterialStatePropertyAll(Weather_Splash_Colors.textColor2),
              buttonText: Weather_Splash_Consts.text3,
              style: Weather_Splash_Consts.buttonTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
