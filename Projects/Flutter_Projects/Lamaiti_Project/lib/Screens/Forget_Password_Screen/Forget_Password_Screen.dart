import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lamaiti/Components/CustomTextField/CustomTextField.dart';
import 'package:lamaiti/Consts/Forget_Password_Consts.dart';
import 'package:lamaiti/Controllers/Forget_Password_Controller/Forget_Password_Controller.dart';
import 'package:lamaiti/Routes/My_Routes.dart';

class Forget_MyPassword extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Forget_Password_Screen(),
    );
  }
}

class Forget_Password_Screen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_Forget_Password_Screen_State();
}

class _Forget_Password_Screen_State extends State<Forget_Password_Screen>{
  Forget_Password_Controller controller = Get.put(Forget_Password_Controller());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Forget_Password_Consts.containerDecoration,
      child: Stack(
        alignment: Forget_Password_Consts.stackAlignment,
        children: [
          SvgPicture.string(
            Forget_Password_Consts.svgVectorString,
            width: Forget_Password_Consts.vectorWidth,
            height: Forget_Password_Consts.vectorHeight,
            alignment: Alignment.topCenter,
          ),
          SingleChildScrollView(
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 100.0,
                  left: 20.0,
                  right: 20.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Text(
                      Forget_Password_Consts.text1,
                      style: Forget_Password_Consts.text1Style,
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 100.0 , bottom: 25),
                      child: Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              Forget_Password_Consts.text3,
                              textAlign: TextAlign.right,
                              textDirection: TextDirection.rtl,
                              style: Forget_Password_Consts.text3Style,
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            Forget_Password_Consts.text2,
                            textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                            style: Forget_Password_Consts.text2Style,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 65.0,
                      width: 380.0,
                      child: CustomTextField(
                        hintText: null,
                        icon: Icons.email_rounded,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.Navigate(MyRoutes.newPasswordScreen);
                        },
                        style: Forget_Password_Consts.buttonSyle,
                        child: const Text(
                          Forget_Password_Consts.text5,
                          style: Forget_Password_Consts.text5Style,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.bottomCenter,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton(
                            onPressed: () {
                              controller.Navigate_and_Close_Current(MyRoutes.logInScreen);
                            },
                            child: const Text(
                              Forget_Password_Consts.text6,
                              textAlign: TextAlign.center,
                              style: Forget_Password_Consts.text6Style,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}