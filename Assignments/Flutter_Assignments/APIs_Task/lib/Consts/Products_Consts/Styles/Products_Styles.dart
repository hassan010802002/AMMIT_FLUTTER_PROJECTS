import 'package:application_4/Consts/Products_Consts/Colors/Products_Colors.dart';
import 'package:flutter/material.dart';

class Products_Styles{
  static final style1 = BoxDecoration(
    borderRadius: BorderRadius.circular(15.0),
    color: Products_Colors.color1,
  );
  static final style2 = BoxDecoration(
    color: Products_Colors.color2,
    borderRadius: BorderRadius.circular(15.0),
  );
  static const style3 = TextStyle(
    color: Products_Colors.color3,
    fontSize: 16.0,
    fontWeight: FontWeight.w800,
  );
}