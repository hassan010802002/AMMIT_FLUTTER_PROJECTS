import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lamaiti/Components/CustomTextField/CustomTextField.dart';
import 'package:lamaiti/Consts/OTP_Consts.dart';
import 'package:lamaiti/Controllers/OTP_Controller/OTP_Controller.dart';
import 'package:lamaiti/Routes/My_Routes.dart';
import 'package:lamaiti/Screens/Home_Screen/HomeScreen.dart';

class My_OTP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OTP_Page(),
    );
  }
}

class OTP_Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _OTP_Page_State();
}

class _OTP_Page_State extends State<OTP_Page> {
  OTP_Controller controller = Get.put(OTP_Controller());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: OTP_Consts.containerDecoration,
      child: SingleChildScrollView(
        child: Stack(
          alignment: OTP_Consts.stackAlignment,
          children: [
            SvgPicture.string(
              OTP_Consts.svgVectorString,
              width: OTP_Consts.vectorWidth,
              height: OTP_Consts.vectorHeight,
              alignment: Alignment.topCenter,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      OTP_Consts.text1,
                      style: OTP_Consts.text1Style,
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 250.0, right: 20.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              OTP_Consts.text2,
                              textAlign: TextAlign.right,
                              style: OTP_Consts.text2Style,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 65.0,
                          width: 90.0,
                          child: CustomTextField(
                            hintText: "0",
                            icon: Icons.numbers_rounded,
                            lenght: 1,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          height: 65.0,
                          width: 90.0,
                          child: CustomTextField(
                            hintText: "0",
                            icon: Icons.numbers_rounded,
                            lenght: 1,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          height: 65.0,
                          width: 90.0,
                          child: CustomTextField(
                            hintText: "0",
                            icon: Icons.numbers_rounded,
                            lenght: 1,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          height: 65.0,
                          width: 90.0,
                          child: CustomTextField(
                            hintText: "0",
                            icon: Icons.numbers_rounded,
                            lenght: 1,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 50.0,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.Navigate_and_Close_Current(MyRoutes.homeScreen);
                        },
                        style: OTP_Consts.buttonSyle,
                        child: const Text(
                          OTP_Consts.text3,
                          style: OTP_Consts.text3Style,
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
                            onPressed: () {},
                            child: const Text(
                              OTP_Consts.text4,
                              textAlign: TextAlign.center,
                              style: OTP_Consts.text4Style,
                            ),
                          ),
                          const Text(
                            OTP_Consts.text5,
                            textAlign: TextAlign.center,
                            style: OTP_Consts.text5Style,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
