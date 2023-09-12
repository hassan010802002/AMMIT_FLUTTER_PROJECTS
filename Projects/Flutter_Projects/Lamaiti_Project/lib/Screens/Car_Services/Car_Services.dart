import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lamaiti/Components/CustomTextField/CustomTextField.dart';
import 'package:lamaiti/Components/Custom_Button/Custom_Button.dart';
import 'package:lamaiti/Components/Custom_Divider/Custom_Divider.dart';
import 'package:lamaiti/Consts/Car_Services_Consts.dart';
import 'package:lamaiti/Controllers/Car_Services_Controller/Car_Services_Controller.dart';
import 'package:lamaiti/Routes/My_Routes.dart';

class MyCarServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Car_Services_Screen(),
    );
  }
}

class Car_Services_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Car_Services_Screen_State();
}

class _Car_Services_Screen_State extends State<Car_Services_Screen> {
  @override
  Widget build(BuildContext context) {
    Car_Services_Controller controller =
        Get.put(Car_Services_Controller(context));
    return Container(
      decoration: Car_Services_Consts.containerDecoration,
      child: SingleChildScrollView(
        primary: true,
        child: Stack(
          alignment: Car_Services_Consts.stackAlignment,
          children: [
            SvgPicture.string(
              Car_Services_Consts.svgVectorString,
              width: Car_Services_Consts.vectorWidth,
              height: Car_Services_Consts.vectorHeight,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 75.0,
                  right: 20.0,
                  left: 20.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
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
                            Get.back();
                          },
                        ),
                        const Text(
                          Car_Services_Consts.text1,
                          style: Car_Services_Consts.text1Style,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          Car_Services_Consts.text2,
                          style: Car_Services_Consts.text2Style,
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(
                          width: 155,
                        ),
                        const Text(
                          Car_Services_Consts.text3,
                          style: Car_Services_Consts.text2Style,
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 5.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            height: 80,
                            width: 180,
                            child: GetX(
                              init: controller,
                              builder: (controller) {
                                return CustomTextField(
                                  onTap: () {
                                    controller.selectTimePicker(context);
                                  },
                                  isReadOnly: true,
                                  fillColor: Colors.white,
                                  sufIcon: Icons.alarm_rounded,
                                  hintText: "",
                                  contentText: controller.currentTime!.value,
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          SizedBox(
                            height: 80,
                            width: 180,
                            child: GetX(
                              init: controller,
                              builder: (controller) {
                                return CustomTextField(
                                  onTap: () {
                                    controller.datePickerOnTap();
                                  },
                                  isReadOnly: true,
                                  fillColor: Colors.white,
                                  sufIcon: Icons.calendar_month_rounded,
                                  hintText: "",
                                  contentText: controller.date!.value,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          Car_Services_Consts.text4,
                          style: Car_Services_Consts.text4Style,
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: EdgeInsets.all(15.0),
                        width: 380,
                        height: 85,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GetX(
                              init: controller,
                              builder: (controller) {
                                return Radio(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  splashRadius: 30.0,
                                  activeColor: Color(0xffC5D4F5),
                                  fillColor: MaterialStatePropertyAll(
                                      Color(0xff0B3FA8)),
                                  value: Car_Services_Consts.radio1Value,
                                  groupValue: controller.normalWashing.value,
                                  onChanged: (value) {
                                    controller.NormalWashingOnChange(value);
                                  },
                                );
                              },
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Text(
                              Car_Services_Consts.text9,
                              textDirection: TextDirection.rtl,
                              style: Car_Services_Consts.text9Style,
                            ),
                            SizedBox(
                              width: 85,
                            ),
                            Text(
                              Car_Services_Consts.text10,
                              textDirection: TextDirection.rtl,
                              style: Car_Services_Consts.text10Style,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          Car_Services_Consts.text5,
                          style: Car_Services_Consts.text4Style,
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: EdgeInsets.all(15.0),
                        width: 380,
                        height: 85,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GetX(
                              init: controller,
                              builder: (controller) {
                                return Radio(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  splashRadius: 30.0,
                                  activeColor: Color(0xffC5D4F5),
                                  fillColor: MaterialStatePropertyAll(
                                      Color(0xff0B3FA8)),
                                  value: Car_Services_Consts.radio2Value,
                                  groupValue: controller.perfeiumSpray.value,
                                  onChanged: (value) {
                                    controller.PerfeiumSprayOnChange(value);
                                  },
                                );
                              },
                            ),
                            SizedBox(
                              width: 55,
                            ),
                            Text(
                              Car_Services_Consts.text11,
                              textDirection: TextDirection.rtl,
                              style: Car_Services_Consts.text9Style,
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Text(
                              Car_Services_Consts.text12,
                              textDirection: TextDirection.rtl,
                              style: Car_Services_Consts.text10Style,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 25.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            Car_Services_Consts.text6,
                            style: Car_Services_Consts.text6Style,
                            textAlign: TextAlign.right,
                          ),
                          const Text(
                            Car_Services_Consts.text7,
                            style: Car_Services_Consts.text6Style,
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                    Custom_Divider(
                      dividerColor: Color(0xffC5D4F5),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(top: 35),
                        child: Text(
                          Car_Services_Consts.text8,
                          style: Car_Services_Consts.text8Style,
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                    CustomTextField(
                      fillColor: Colors.white,
                      icon: null,
                      hintText: "",
                      maxLines: 3,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: CustomButton(
                        onPressed: () {
                          controller.Navigate(MyRoutes.carDetailsScreen);
                        },
                        controller: controller,
                        buttonText: Car_Services_Consts.text13,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
