import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lamaiti/Components/Custom_Button/Custom_Button.dart';
import 'package:lamaiti/Components/Custom_Divider/Custom_Divider.dart';
import 'package:lamaiti/Components/Custom_PopUp_Dialog/Custom_PopUp_Dialog.dart';
import 'package:lamaiti/Consts/Add_New_Car_Consts.dart';
import 'package:lamaiti/Consts/Car_Details_Consts.dart';
import 'package:lamaiti/Controllers/Car_Details_Controller/Car_Details_Controller.dart';
import 'package:lamaiti/Routes/My_Routes.dart';

class MyCar_Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Car_Details_Screen(),
    );
  }
}

class Car_Details_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Car_Details_Screen_State();
}

class _Car_Details_Screen_State extends State<Car_Details_Screen> {
  Car_Details_Controller controller = Get.put(Car_Details_Controller());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Car_Details_Consts.containerDecoration,
      child: SingleChildScrollView(
        primary: true,
        child: Stack(
          alignment: Car_Details_Consts.stackAlignment,
          children: [
            SvgPicture.string(
              Car_Details_Consts.svgVectorString,
              width: Car_Details_Consts.vectorWidth,
              height: Car_Details_Consts.vectorHeight,
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
                            controller.Navigating_Back();
                          },
                        ),
                        const Text(
                          Car_Details_Consts.text1,
                          style: Car_Details_Consts.text1Style,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    Car_Details_Consts.popUpText2,
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.center,
                                    style: Car_Details_Consts.text2Style,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Icon(
                                    Icons.alarm_rounded,
                                    size: 15.0,
                                    color: Color(0xffE91919),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    Car_Details_Consts.popUpText3,
                                    textAlign: TextAlign.center,
                                    style: Car_Details_Consts.text2Style,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Icon(
                                    Icons.calendar_month_rounded,
                                    size: 15.0,
                                    color: Color(0xffE91919),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                Car_Details_Consts.text2 +
                                    " ${Add_New_Car_Consts.carsLabels[0]}",
                                textAlign: TextAlign.right,
                                style: Car_Details_Consts.columnTextStyle,
                                textDirection: TextDirection.rtl,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                Car_Details_Consts.text3,
                                textAlign: TextAlign.right,
                                style: Car_Details_Consts.columnTextStyle,
                                textDirection: TextDirection.rtl,
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipOval(
                                    child: Container(
                                      height: 20,
                                      width: 20,
                                      decoration: Car_Details_Consts
                                          .caruselContainerDecoration2,
                                    ),
                                  ),
                                  Text(
                                    Car_Details_Consts.text4,
                                    textAlign: TextAlign.right,
                                    style: Car_Details_Consts.columnTextStyle,
                                    textDirection: TextDirection.rtl,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Image.asset(
                                Car_Details_Consts.containerImage,
                                width: 135,
                                height: 120,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Custom_Divider(),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Car_Details_Consts.popUpText4,
                          style: Car_Details_Consts.popUpText4Style,
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                        ),
                        Text(
                          Car_Details_Consts.popUpText5,
                          style: Car_Details_Consts.popUpText4Style,
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Car_Details_Consts.popUpText6,
                          style: Car_Details_Consts.popUpText5Style,
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                        ),
                        Text(
                          Car_Details_Consts.popUpText7,
                          style: Car_Details_Consts.popUpText5Style,
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Car_Details_Consts.popUpText8,
                          style: Car_Details_Consts.popUpText5Style,
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                        ),
                        Text(
                          Car_Details_Consts.popUpText9,
                          style: Car_Details_Consts.popUpText5Style,
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Car_Details_Consts.popUpText10,
                          style: Car_Details_Consts.popUpText5Style,
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                        ),
                        Text(
                          Car_Details_Consts.popUpText11,
                          style: Car_Details_Consts.popUpText5Style,
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Car_Details_Consts.popUpText12,
                          style: Car_Details_Consts.popUpText5Style,
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                        ),
                        Text(
                          Car_Details_Consts.popUpText13,
                          style: Car_Details_Consts.popUpText5Style,
                          textAlign: TextAlign.right,
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 145),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CustomButton(
                            controller: controller,
                            onPressed: () {
                              controller.Navigating_Back();
                            },
                            shape: Car_Details_Consts.shape,
                            buttonText: Car_Details_Consts.text5,
                            fixedSize: MaterialStatePropertyAll(Size(175, 60)),
                            style: Car_Details_Consts.text3Style,
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xffF9F9F9)),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          CustomButton(
                            controller: controller,
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) => Custom_PopUp_Dialog(
                                  content: PopUp_Content(context),
                                ),
                              );
                            },
                            shape: Car_Details_Consts.shape,
                            buttonText: Car_Details_Consts.text6,
                            backgroundColor: MaterialStatePropertyAll(
                                Car_Details_Consts.mainColor),
                            fixedSize: MaterialStatePropertyAll(Size(175, 60)),
                            style: Car_Details_Consts.text4Style,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget PopUp_Content(BuildContext context) {
    return Container(
      width: 500,
      height: 340,
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                Car_Details_Consts.popUpText15,
                style: Car_Details_Consts.popUpText6Style,
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              Car_Details_Consts.popUpText16,
              style: Car_Details_Consts.text1Style,
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomButton(
                  controller: controller,
                  onPressed: () {
                    controller.Navigating_Back();
                  },
                  shape: Car_Details_Consts.shape,
                  buttonText: Car_Details_Consts.text5,
                  fixedSize: MaterialStatePropertyAll(Size(140, 50)),
                  style: Car_Details_Consts.text3Style,
                  backgroundColor: MaterialStatePropertyAll(Color(0xffF9F9F9)),
                ),
                SizedBox(
                  width: 5.0,
                ),
                CustomButton(
                  controller: controller,
                  onPressed: () {
                    controller.Closing(1);
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Custom_PopUp_Dialog(
                          content: Second_PopUp_Content(context),
                        );
                      },
                    );
                  },
                  shape: Car_Details_Consts.shape,
                  buttonText: Car_Details_Consts.popUpText14,
                  backgroundColor:
                      MaterialStatePropertyAll(Car_Details_Consts.mainColor),
                  fixedSize: MaterialStatePropertyAll(Size(140, 50)),
                  style: Car_Details_Consts.text4Style,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget Second_PopUp_Content(BuildContext context) {
    return Container(
      width: 500,
      height: 400,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ClipOval(
            child: Image(
              image: AssetImage(
                Car_Details_Consts.smileImage,
              ),
              fit: BoxFit.fill,
              width: 150,
              height: 150,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            Car_Details_Consts.popUpText17,
            style: Car_Details_Consts.text1Style,
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              Car_Details_Consts.popUpText18,
              style: Car_Details_Consts.popUpText4Style,
              textAlign: TextAlign.center,
            ),
          ),
          CustomButton(
            controller: controller,
            buttonText: Car_Details_Consts.popUpText19,
            onPressed: () {
              controller.Navigating_and_Close(MyRoutes.carBookingsScreen);
            },
            fixedSize: MaterialStatePropertyAll(Size(160, 65)),
          ),
        ],
      ),
    );
  }
}
