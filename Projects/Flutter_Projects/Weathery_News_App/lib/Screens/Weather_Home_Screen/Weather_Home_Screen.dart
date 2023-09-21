import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHome_Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home_Weather_Screen();
  }
}

class Home_Weather_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Home_Weather_Screen_State();
}

class _Home_Weather_Screen_State extends State<Home_Weather_Screen> {
  @override
  void initState() {
    super.initState();
    Home_BottomSheet_Context(context);
  }

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
            fit: BoxFit.fill,
            color: const Color(0xff2f2d55),
            colorBlendMode: BlendMode.difference,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 30.w, bottom: 10.h),
              child: MediaQuery(
                data: MediaQueryData(
                  size: Size(35.w, 35.h),
                ),
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
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/Subtract.svg",
                fit: BoxFit.fill,
                color: const Color(0xff262C51),
              ),
              MediaQuery(
                data: MediaQueryData(
                  size: Size(65.w, 65.h),
                ),
                child: FloatingActionButton(
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
      body: MediaQuery(
        data: MediaQueryData(
          size: Size.infinite,
          boldText: true,
          highContrast: true,
          textScaleFactor: 1.0.sp,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0.spMax),
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
                top: 80.0.h,
              ),
              child: Wrap(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Montreal",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 38.spMax,
                          fontWeight: FontWeight.w600,
                          fontFamily: "SF Pro Display",
                          letterSpacing: 2.8.w,
                        ),
                      ),
                      Text(
                        "19°",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 100.sp,
                          fontWeight: FontWeight.w200,
                          fontFamily: "SF Pro Display",
                          letterSpacing: 5.0.w,
                        ),
                      ),
                      Text(
                        "Mostly Clear",
                        style: TextStyle(
                          color: const Color(0xffEBEBF599).withOpacity(0.6),
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: "SF Pro Display",
                          letterSpacing: 2.5.w,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      Text(
                        "H:24° L:18°",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: "SF Pro Display",
                          letterSpacing: 2.5.w,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                      Image.asset(
                        "assets/images/House.png",
                        fit: BoxFit.contain,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Home_BottomSheet_Context(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return BottomSheet(
          onClosing: () {},
          builder: (context) {
            return Container(
              height: 300,
              width: 200,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45.0),
                    topRight: Radius.circular(45.0),
                  ),
                  color: Colors.blue),
            );
          },
        );
      },
    );
  }
}
