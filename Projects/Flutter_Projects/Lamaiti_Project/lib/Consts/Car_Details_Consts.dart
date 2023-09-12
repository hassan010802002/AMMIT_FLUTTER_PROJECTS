import 'dart:math';

import 'package:flutter/material.dart';

class Car_Details_Consts {
  static const containerDecoration = BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      color: Color(0xffF9F9F9));
  static const stackAlignment = AlignmentDirectional.topCenter;
  static const svgVectorString = '''
  <svg width="414" height="236" viewBox="0 0 414 236" fill="none" xmlns="http://www.w3.org/2000/svg">
  <path opacity="0.1" d="M169.574 187.859C199.192 188.831 227.4 197.858 254.336 207.737C281.273 217.616 307.953 228.562 336.88 233.795C355.455 237.161 376.721 237.637 391.704 228.229C406.119 219.154 410.778 203.532 413.281 189.026C415.167 178.105 416.274 166.619 411.112 156.399C407.524 149.303 401.163 143.34 396.761 136.521C381.444 112.874 392.271 83.7135 408.865 60.6244C416.645 49.795 425.683 39.4496 431.692 27.9288C437.701 16.408 440.478 3.18893 435.22 -8.56953C430.012 -20.2372 417.597 -28.9837 404.147 -35.146C376.831 -47.6521 344.655 -51.2345 313.257 -53.2612C243.774 -57.7511 173.926 -55.8065 104.26 -53.8619C78.4773 -53.1402 52.5844 -52.4099 27.2224 -48.646C13.1365 -46.5545 -1.4025 -43.2357 -11.626 -35.2498C-24.609 -25.0815 -27.8262 -7.86084 -19.1266 4.88722C-4.53729 26.2737 35.7894 31.5891 45.9991 54.5399C51.6097 67.1713 45.8481 81.246 37.6885 92.9613C20.1886 118.099 -9.14099 140.146 -10.6832 168.879C-11.7449 188.611 2.35474 208.372 24.1563 217.711C47.006 227.499 78.697 226.267 95.547 210.066C112.914 193.42 143.42 187.003 169.574 187.859Z" fill="#0B3FA8"/>
</svg>
  ''';
  static const vectorWidth = 462.0;
  static const vectorHeight = 292.0;
  static const text1 = "التفاصيل";
  static const text2 = "نوع المركبة :";
  static const text3 = "موديل المركبة : " + " 2021 auto";
  static const text1Style = TextStyle(
    color: mainColor,
    fontFamily: "Tajawal",
    fontSize: 28.0,
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.normal,
  );
  static const mainColor = Color(0xff0B3FA8);
  static const secondaryColor = Color.fromRGBO(0, 0, 0, 0.5);
  static var randomColor =
      Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  static const popUpText2 = "ص 09:00";
  static const popUpText3 = "20 - 8 - 2021";
  static const popUpText4 = "المبلغ";
  static const popUpText5 = "الخدمات";
  static const popUpText6 = "50 ريال";
  static const popUpText7 = "غسيل عادي";
  static const popUpText8 = "10 ريال";
  static const popUpText9 = "عطر فواح";
  static const popUpText10 = "5 ريال";
  static const popUpText11 = "ضريبة القيمة المضافة";
  static const popUpText12 = "65 ريال";
  static const popUpText13 = "الملبلغ الاجمالي";
  static const popUpText14 = "استمرار";
  static const popUpText15 = "عند الرجوع سوف تفقد مقعدك الحالي";
  static const popUpText16 = "8 اغسطس الساعة 4 م";
  static const popUpText17 = "شكرا لك";
  static const popUpText18 = "تم تاكيد الحجز";
  static const popUpText19 = "تم";
  static const text2Style = TextStyle(
      color: Color(0xffE91919), fontSize: 12.0, fontFamily: "Tajawal");
  static const containerImage = "assets/Images/Rectangle 24.png";
  static const text4 = "لون المركبة : ";
  static const text5 = "رجوع";
  static const text6 = "تاكيد";
  static const smileImage = "assets/Images/bi_emoji-smile.png";
  static const text3Style = TextStyle(
    color: mainColor,
    fontSize: 28.0,
    fontFamily: "Tajawal",
    fontWeight: FontWeight.w800,
  );
  static const text4Style = TextStyle(
    color: Color(0xffF9F9F9),
    fontSize: 28.0,
    fontFamily: "Tajawal",
    fontWeight: FontWeight.w800,
  );
  static const columnTextStyle = TextStyle(
    color: secondaryColor,
    fontFamily: "Tajawal",
    fontSize: 14.0,
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.normal,
  );
  static var caruselContainerDecoration2 = BoxDecoration(
    color: randomColor,
  );
  static const popUpText4Style = TextStyle(
      fontSize: 20.0,
      color: mainColor,
      fontWeight: FontWeight.w800,
      fontFamily: "Tajawal");
  static const popUpText5Style = TextStyle(
      fontSize: 20.0,
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: "Tajawal");
  static const popUpText6Style = TextStyle(
      fontSize: 20.0,
      color: secondaryColor,
      fontWeight: FontWeight.w800,
      fontFamily: "Tajawal");
  static final MaterialStateProperty<OutlinedBorder?>? shape =
      MaterialStatePropertyAll(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
      side: BorderSide(
        color: Car_Details_Consts.mainColor,
        width: 3.0,
      ),
    ),
  );
}
