import 'package:flutter/material.dart';

class Add_New_Car_Consts {
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
  static const text1 = "مركبة جديدة";
  static const text1Style = TextStyle(
    color: Color(0xff0B3FA8),
    fontFamily: "Tajawal",
    fontSize: 36.0,
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.normal,
  );
  static const text2 = "نوع المركبة";
  static const text3 = "موديل المركبة";
  static const text4 = "ماركة المركبة";
  static const text5 = "لون المركبة";
  static const text6 = "رقم الهاتف (اختياري)";
  static const text7 = "اضافة";
  static const text2Style = TextStyle(
    color: Color(0xff000000),
    fontFamily: "Tajawal",
    fontSize: 16.0,
    fontWeight: FontWeight.w800,
    fontStyle: FontStyle.normal,
  );
  static const carsLabels = [
    "Ferrari",
    "Honda",
    "Mercedes",
    "Jaguar",
    "Hammer",
    "Lamborghini",
    "Ford",
    "Tesla",
    "Toyota_Supra",
    "BMW",
    "Bentley",
    "Audi",
    "Bugatti",
    "MClaren",
    "Porsche"
  ];
  static const menuLabel = Text("Car Type", textAlign: TextAlign.right);
  static const menuLabel2 = Text("Car Brand", textAlign: TextAlign.right);
  static const menuLabel3 = Text("Car Model", textAlign: TextAlign.right);
  static const hintText = "Select A Car Type";
  static const hintTextStyle = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
    color: Color.fromRGBO(0, 0, 0, 0.4),
  );
  static var border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.0),
    gapPadding: 10.0,
  );
  static var outlinedBorderSide = BorderSide(
    color: Colors.blueGrey,
    strokeAlign: BorderSide.strokeAlignInside,
    width: 2,
  );
  static var enableBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
      borderSide: BorderSide(
          strokeAlign:
          BorderSide.strokeAlignOutside,
          width: 2,
          color: Colors.blueGrey,
          style: BorderStyle.solid));
  static var focusBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.0),
    gapPadding: 10.0,
    borderSide: BorderSide(
      width: 2.0,
      strokeAlign: BorderSide.strokeAlignOutside,
      color: Colors.indigo,
    ),
  );
  static const contentPadding = EdgeInsets.all(10.0);
  static const menuLabelStyle = TextStyle(
    fontWeight: FontWeight.w600,
    color: Color.fromRGBO(0, 0, 0, 0.4),
    fontSize: 14.0,
  );
  static const menuTextStyle = TextStyle(
    fontWeight: FontWeight.w800,
    color: Colors.black87,
    fontSize: 18.0,
  );
  static const menuStyle = MenuStyle(
    alignment: Alignment.center,
    elevation: MaterialStatePropertyAll(5.0),
    padding: MaterialStatePropertyAll(
        EdgeInsets.all(12.0)),
    backgroundColor:
    MaterialStatePropertyAll(Colors.white70),
    visualDensity: VisualDensity.comfortable,
  );
  static var inputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: Colors.white54,
    alignLabelWithHint: true,
    hintStyle: hintTextStyle,
    border: border,
    outlineBorder: outlinedBorderSide,
    enabledBorder: enableBorder,
    focusedBorder: focusBorder,
    contentPadding: contentPadding,
    labelStyle: menuLabelStyle,
  );
}
