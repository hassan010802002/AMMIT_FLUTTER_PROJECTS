import 'package:flutter/material.dart';

class Splash_One_Consts {
  static const large_Vector = '''
  <svg width="414" height="521" viewBox="0 0 414 521" fill="none" xmlns="http://www.w3.org/2000/svg">
  <path opacity="0.1" d="M169.574 429.993C199.192 431.831 227.4 448.897 254.336 467.571C281.273 486.246 307.953 506.939 336.88 516.832C355.455 523.195 376.721 524.094 391.704 506.31C406.119 489.154 410.778 459.623 413.281 432.199C415.167 411.555 416.274 389.842 411.112 370.522C407.524 357.108 401.163 345.834 396.761 332.943C381.444 288.242 392.271 233.116 408.865 189.468C416.645 168.996 425.683 149.439 431.692 127.66C437.701 105.881 440.478 80.8914 435.22 58.6631C430.012 36.6063 417.597 20.0719 404.147 8.42261C376.831 -15.219 344.655 -21.9913 313.257 -25.8226C243.774 -34.3104 173.926 -30.6343 104.26 -26.9581C78.4773 -25.5939 52.5844 -24.2133 27.2224 -17.098C13.1365 -13.1441 -1.40253 -6.87012 -11.626 8.2265C-24.6091 27.4486 -27.8262 60.0028 -19.1266 84.1019C-4.53732 124.531 35.7893 134.579 45.9991 177.966C51.6097 201.844 45.8481 228.451 37.6885 250.598C20.1886 298.118 -9.14102 339.797 -10.6833 394.114C-11.745 431.415 2.35468 468.772 24.1563 486.426C47.0059 504.929 78.697 502.601 95.547 471.975C112.914 440.507 143.42 428.376 169.574 429.993Z" fill="white"/>
</svg>
  ''';
  static const image = "assets/Images/2_generated-removebg-preview(1) 1.png";
  static const image_Dimensions = 416.0;

  static const stack_Alignment = AlignmentDirectional.topCenter;
  static const vector_Width = 462.0;
  static const vector_Height = 552.0;
  static const image_Fit = BoxFit.cover;
  static const image_Repeat = ImageRepeat.noRepeat;
  static const screen_Decoration = BoxDecoration(
    color: Color(0xff0B3FA8),
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
  );
  static const text1 = "رعاية حقيقية, نتائج موثوقة";
  static const text1_Style = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontFamily: "Tajawal",
      fontSize: 24.0,
      fontStyle: FontStyle.normal);
  static const button_Top_Padding = EdgeInsets.only(
    top: 50,
    right: 20,
    left: 20,
  );
  static const button_Style = ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(Colors.white),
    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
    ),
    fixedSize: MaterialStatePropertyAll(Size(374.0, 60)),

  );
  static const button_Child = Text(
    "ابداء الان",
    style: TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 30,
      fontFamily: "Tajawal",
      fontWeight: FontWeight.w800,
      color: Color(0xff0B3FA8)
    ),
    textAlign: TextAlign.center,
  );
  static Container small_Container = Container(
    color: Colors.white,
    width: 20.0,
    height: 5,
  );
  static Container container = Container(
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
      color: Colors.white
    ),
    width: 23.0,
    height: 8,
  );
  static const simple_Space =  SizedBox(
    width: 6.0,
  );
  static const text2_Style = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w800,
    fontSize: 20.0,
    fontFamily: "Tajawal",
  );
}
