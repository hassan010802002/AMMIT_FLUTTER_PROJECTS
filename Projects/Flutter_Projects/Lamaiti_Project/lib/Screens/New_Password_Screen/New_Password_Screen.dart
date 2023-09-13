import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lamaiti/Components/CustomTextField/CustomTextField.dart';
import 'package:lamaiti/Consts/New_Password_Consts.dart';
import 'package:lamaiti/Controllers/New_Password_Controller/New_Password_Controller.dart';
import 'package:lamaiti/Routes/My_Routes.dart';

class MyNew_Password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: New_Password_Screen(),
    );
  }
}

class New_Password_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _New_Password_Screen_State();
}

class _New_Password_Screen_State extends State<New_Password_Screen> {
  New_Password_Controller controller = Get.put(New_Password_Controller());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: New_Password_Consts.containerDecoration,
      child: Stack(
        alignment: New_Password_Consts.stackAlignment,
        children: [
          SvgPicture.string(
            New_Password_Consts.svgVectorString,
            width: New_Password_Consts.vectorWidth,
            height: New_Password_Consts.vectorHeight,
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
                      New_Password_Consts.text1,
                      style: New_Password_Consts.text1Style,
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 100.0, bottom: 25),
                      child: Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              New_Password_Consts.text3,
                              textAlign: TextAlign.right,
                              textDirection: TextDirection.rtl,
                              style: New_Password_Consts.text3Style,
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
                            New_Password_Consts.text2,
                            textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                            style: New_Password_Consts.text2Style,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 65.0,
                      width: 380.0,
                      child: CustomTextField(
                        hintText: null,
                        opsecure: true,
                        icon: Icons.password_rounded,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            New_Password_Consts.text4,
                            textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                            style: New_Password_Consts.text2Style,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 65.0,
                      width: 380.0,
                      child: CustomTextField(
                        hintText: null,
                        opsecure: true,
                        icon: Icons.password_rounded,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.Navigate(MyRoutes.confirmNewPasswordScreen);
                        },
                        style: New_Password_Consts.buttonSyle,
                        child: const Text(
                          New_Password_Consts.text5,
                          style: New_Password_Consts.text5Style,
                          textAlign: TextAlign.center,
                        ),
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
