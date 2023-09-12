import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lamaiti/Components/CustomTextField/CustomTextField.dart';
import 'package:lamaiti/Components/Custom_Button/Custom_Button.dart';
import 'package:lamaiti/Components/Custom_Carusel_Slider/Custom_Carusel_Slider.dart';
import 'package:lamaiti/Components/Custom_Dropdown_Menu/Custom_Dropdown_Menu.dart';
import 'package:lamaiti/Consts/Add_New_Car_Consts.dart';
import 'package:lamaiti/Controllers/Add_New_Car_Controller/Add_New_Car_Controller.dart';
import 'package:lamaiti/Routes/My_Routes.dart';

class My_New_Car extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Add_New_Car(),
    );
  }
}

class Add_New_Car extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Add_New_Car_State();
}

class _Add_New_Car_State extends State<Add_New_Car> {
  Add_New_Car_Controller controller = Get.put(Add_New_Car_Controller());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Add_New_Car_Consts.containerDecoration,
      child: SingleChildScrollView(
        primary: true,
        child: Stack(
          alignment: Add_New_Car_Consts.stackAlignment,
          children: [
            SvgPicture.string(
              Add_New_Car_Consts.svgVectorString,
              width: Add_New_Car_Consts.vectorWidth,
              height: Add_New_Car_Consts.vectorHeight,
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
                          Add_New_Car_Consts.text1,
                          style: Add_New_Car_Consts.text1Style,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              Add_New_Car_Consts.text2,
                              textAlign: TextAlign.right,
                              style: Add_New_Car_Consts.text2Style,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GetX(
                      init: Add_New_Car_Controller(),
                      builder: (controller) {
                        return CustomDropdownMenu(
                            menuItems: [...controller.carMenuEntries()]);
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 25.0, right: 5.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              Add_New_Car_Consts.text4,
                              textAlign: TextAlign.right,
                              style: Add_New_Car_Consts.text2Style,
                            ),
                            SizedBox(
                              width: 110,
                            ),
                            Text(
                              Add_New_Car_Consts.text3,
                              textAlign: TextAlign.right,
                              style: Add_New_Car_Consts.text2Style,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GetX(
                              init: Add_New_Car_Controller(),
                              builder: (controller) {
                                return CustomDropdownMenu(
                                  menuItems: [...controller.carMenuEntries()],
                                  menuHeight: 350,
                                  menuWidth: 180,
                                  menuLabel: Add_New_Car_Consts.menuLabel2,
                                  hintText: "",
                                );
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GetX(
                              init: Add_New_Car_Controller(),
                              builder: (controller) {
                                return CustomDropdownMenu(
                                  menuItems: [...controller.carMenuEntries()],
                                  menuHeight: 350,
                                  menuWidth: 180,
                                  menuLabel: Add_New_Car_Consts.menuLabel3,
                                  hintText: "",
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 45.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              Add_New_Car_Consts.text5,
                              textAlign: TextAlign.right,
                              style: Add_New_Car_Consts.text2Style,
                            )
                          ],
                        ),
                      ),
                    ),
                    CustomCarouselSlider(
                      height: 35,
                      viewportFraction: 0.3,
                      itemBuilder: (context, index, realIndex) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: GestureDetector(
                            child: Container(
                              width: 75,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(12.0)),
                                color: Color((Random().nextDouble() * 0xFFFFFF)
                                        .toInt())
                                    .withOpacity(1.0),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 25.0),
                      child: GetX(
                        init: Add_New_Car_Controller(),
                        builder: (controller) {
                          return GestureDetector(
                            onTap: () {
                              controller.selectImage();
                            },
                            child: Container(
                              height: 200,
                              width: 380,
                              padding: EdgeInsets.only(
                                  top: 10.0, right: 10, left: 10, bottom: 10),
                              decoration: BoxDecoration(
                                  image:
                                      controller.selectedImage.value.isNotEmpty
                                          ? DecorationImage(
                                              fit: BoxFit.fill,
                                              image: FileImage(
                                                File(
                                                  controller.selectedImage.value
                                                      .toString(),
                                                ),
                                              ),
                                            )
                                          : null,
                                  borderRadius: BorderRadius.circular(15.0),
                                  border: Border.all(
                                      color: Color(0xffC5D4F5),
                                      width: 3.0,
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside)),
                              child: controller.selectedImage.value.isEmpty
                                  ? Center(
                                      child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              "اضافة صورة للمركبة (اختياري)",
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                color: Colors.black45,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                controller.selectImage();
                                              },
                                              child: Icon(
                                                Icons.camera_alt_rounded,
                                                size: 150,
                                                color: Color(0xff808080),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  : null,
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              Add_New_Car_Consts.text6,
                              textAlign: TextAlign.right,
                              style: Add_New_Car_Consts.text2Style,
                            )
                          ],
                        ),
                      ),
                    ),
                    CustomTextField(
                      hintText: "",
                      icon: Icons.phone_rounded,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 65.0, bottom: 50),
                      child: CustomButton(
                        controller: controller,
                        onPressed: () {
                          controller.Navigate(MyRoutes.carServicesScreen);
                        },
                        buttonText: Add_New_Car_Consts.text7,
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
}
