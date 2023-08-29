import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeConsts {
  static const unselectedIconTheme = IconThemeData(
    color: Colors.blueGrey,
    size: 25.0,
  );
  static const selectedIconTheme = IconThemeData(
    size: 35.0,
    color: Color(0xff0B3FA8),
  );
  static const selectedLabelStyle = TextStyle(
    color: Color(0xff0B3FA8),
    fontWeight: FontWeight.w900,
  );
  static const unselectedLabelStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w700,
  );
  static const text1 = "الرئيسية";
  static const text2 = "المركبات";
  static const text3 = "الحجز";
  static const text4 = "الحساب";
  static const text5 = "احجز الان";
  static const text6 = "اضف مركبة";
  static const assetImage = "assets/Images/ant-design_car-outlinedcar.png";
  static const assetImage2 = "assets/Images/mdi_car-2-plusaddCar.png";
  static const initialCameraPosition = CameraPosition(
    target: LatLng(0, 0),
    zoom: 11.0,
  );
  static const buttonSyle = ButtonStyle(
    elevation: MaterialStatePropertyAll(5.0),
    fixedSize: MaterialStatePropertyAll(Size(180, 65)),
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
    ),
    iconSize: MaterialStatePropertyAll(30.0),
    iconColor: MaterialStatePropertyAll(Colors.white),
    backgroundColor: MaterialStatePropertyAll(Color(0xff0B3FA8)),
  );
  static const text3Style = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 20.0,
      fontFamily: "Tajawal");
  static const popUpText1Style = TextStyle(
    color: Colors.black,
    fontSize: 20.0,
    fontWeight: FontWeight.w800,
  );
  static const popUpText2Style = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontWeight: FontWeight.w800,
  );
}
