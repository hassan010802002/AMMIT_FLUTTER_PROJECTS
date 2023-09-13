import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lamaiti/Consts/Confirm_New_Password_Consts.dart';
import 'package:lamaiti/Controllers/Confirm_New_Password_Controller/Confirm_New_Password_Controller.dart';
import 'package:lamaiti/Routes/My_Routes.dart';

class Confirm_MyNew_Password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Confirm_New_Password_Screen(),
    );
  }
}

class Confirm_New_Password_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Confirm_New_Password_Screen_State();
}

class _Confirm_New_Password_Screen_State
    extends State<Confirm_New_Password_Screen> {
  Confirm_New_Password_Controller controller =
      Get.put(Confirm_New_Password_Controller());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Confirm_New_Password_Consts.containerDecoration,
      child: Stack(
        alignment: Confirm_New_Password_Consts.stackAlignment,
        children: [
          SvgPicture.string(
            Confirm_New_Password_Consts.svgVectorString,
            width: Confirm_New_Password_Consts.vectorWidth,
            height: Confirm_New_Password_Consts.vectorHeight,
            alignment: Alignment.topCenter,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SvgPicture.asset(
                  "assets/Images/Group 1.svg",
                  alignment: Alignment.center,
                  height: 150,
                  width: 150,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  Confirm_New_Password_Consts.text1,
                  style: Confirm_New_Password_Consts.text1Style,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: TextButton(
                    onPressed: () {
                      controller.Navigate_and_Close_Current(
                          MyRoutes.logInScreen);
                    },
                    child: const Text(
                      Confirm_New_Password_Consts.text6,
                      textAlign: TextAlign.center,
                      style: Confirm_New_Password_Consts.text6Style,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
