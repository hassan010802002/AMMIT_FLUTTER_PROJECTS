import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lamaiti/Components/Custom_Divider/Custom_Divider.dart';
import 'package:lamaiti/Consts/Terms_Screen_Consts.dart';
import 'package:lamaiti/Controllers/Terms_Screen_Controller/Terms_Screen_Controller.dart';

class MyTerms_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Terms_Screen(),
    );
  }
}

class Terms_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Terms_Screen_State();
}

class _Terms_Screen_State extends State<Terms_Screen> {
  Terms_Screen_Controller terms_screen_controller =
      Get.put(Terms_Screen_Controller());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Terms_Screen_Consts.containerDecoration,
      child: Stack(
        alignment: Terms_Screen_Consts.stackAlignment,
        children: [
          SvgPicture.string(
            Terms_Screen_Consts.svgVectorString,
            width: Terms_Screen_Consts.vectorWidth,
            height: Terms_Screen_Consts.vectorHeight,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 50.0,
                right: 15.0,
                left: 15.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.black,
                          size: 30.0,
                        ),
                        onTap: () {
                          terms_screen_controller.Navigating_Back();
                        },
                      ),
                      const Text(
                        Terms_Screen_Consts.text1,
                        style: Terms_Screen_Consts.text1Style,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 35),
                      child: Text(
                        Terms_Screen_Consts.text4,
                        style: Terms_Screen_Consts.text4Style,
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                  Custom_Divider(
                    padding: EdgeInsets.only(top: 8),
                    thickness: 2.0,
                    dividerColor: Color(0xff808080),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        Terms_Screen_Consts.text4,
                        style: Terms_Screen_Consts.text4Style,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                  Custom_Divider(
                    padding: EdgeInsets.only(top: 8),
                    thickness: 2.0,
                    dividerColor: Color(0xff808080),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        Terms_Screen_Consts.text4,
                        style: Terms_Screen_Consts.text4Style,
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            Terms_Screen_Consts.text2,
                            style: Terms_Screen_Consts.text2Style,
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GetX(
                            init: terms_screen_controller,
                            builder: (controller) {
                              return Checkbox(
                                splashRadius: 30.0,
                                checkColor: Terms_Screen_Consts.mainColor,
                                fillColor: MaterialStatePropertyAll(Colors.white),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2.5),
                                ),
                                side: BorderSide(
                                  color: Terms_Screen_Consts.mainColor,
                                  width: 3.0,
                                  strokeAlign: 0.0,
                                ),

                                visualDensity: VisualDensity.comfortable,
                                value: terms_screen_controller.acceptTerms!.value,
                                onChanged: (value) {
                                  terms_screen_controller.AcceptTermsOnChange(value!);
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
