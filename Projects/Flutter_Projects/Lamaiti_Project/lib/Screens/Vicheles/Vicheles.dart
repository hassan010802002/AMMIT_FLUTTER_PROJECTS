import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lamaiti/Components/Custom_Carusel_Slider/Custom_Carusel_Slider.dart';
import 'package:lamaiti/Components/Custom_Navigation_Bar/Custom_Navigation_Bar.dart';
import 'package:lamaiti/Consts/Add_New_Car_Consts.dart';
import 'package:lamaiti/Consts/Vicheles_Consts.dart';
import 'package:lamaiti/Controllers/Home_Controller/Home_Controller.dart';
import 'package:lamaiti/Controllers/Vicheles_Controller/Vicheles_Controller.dart';
import 'package:lamaiti/Routes/My_Routes.dart';

class MyVicheles extends StatelessWidget {
  Home_Controller home_controller = Get.put(Home_Controller(1.obs));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GetX(
        init: home_controller,
        builder: (DisposableInterface controller) {
          return Custom_Bottom_Navigation_Bar(
            currentIdx: home_controller.currentIdx.value,
            BottomNavBarItemOnTap: home_controller.BottomNavBarItemOnTap,
          );
        },
      ),
      body: VichelesPage(),
    );
  }
}

class VichelesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _VichelesPageState();
}

class _VichelesPageState extends State<VichelesPage> {
  VichelesController vichelesController = Get.put(VichelesController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Vicheles_Consts.containerDecoration,
      child: Stack(
        alignment: Vicheles_Consts.stackAlignment,
        children: [
          SvgPicture.string(
            Vicheles_Consts.svgVectorString,
            width: Vicheles_Consts.vectorWidth,
            height: Vicheles_Consts.vectorHeight,
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
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        Vicheles_Consts.text1,
                        style: Vicheles_Consts.text1Style,
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomCarouselSlider(
                          viewportFraction: 0.2,
                          height: 650,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index, realIndex) {
                            return Container(
                              width: 350,
                              height: 120,
                              padding: EdgeInsets.all(12.0),
                              decoration:
                                  Vicheles_Consts.caruselContainerDecoration1,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: SizedBox(
                                      height: 20,
                                      width: 20,
                                      child: FloatingActionButton(
                                        heroTag: "closingButton${index}",
                                        onPressed: () {},
                                        backgroundColor: Color(0xffE91919),
                                        child: Icon(
                                          Icons.close_rounded,
                                          size: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        Vicheles_Consts.text2 +
                                            " ${Add_New_Car_Consts.carsLabels[index]}",
                                        textAlign: TextAlign.right,
                                        style: Vicheles_Consts.columnTextStyle,
                                        textDirection: TextDirection.rtl,
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        Vicheles_Consts.text3 +
                                            " ${Add_New_Car_Consts.carsLabels[index]}",
                                        textAlign: TextAlign.right,
                                        style: Vicheles_Consts.columnTextStyle,
                                        textDirection: TextDirection.rtl,
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 25,
                                            width: 45,
                                            decoration: Vicheles_Consts
                                                .caruselContainerDecoration2,
                                          ),
                                          Text(
                                            Vicheles_Consts.text4,
                                            textAlign: TextAlign.right,
                                            style:
                                                Vicheles_Consts.columnTextStyle,
                                            textDirection: TextDirection.rtl,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 0.0,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      Vicheles_Consts.containerImage,
                                      width: 100,
                                      height: 80,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: SizedBox(
                            width: 65,
                            height: 65,
                            child: FloatingActionButton(
                              heroTag: "addButton",
                              onPressed: () {
                                vichelesController.Navigate(MyRoutes.newCarScreen);
                              },
                              child: Icon(
                                Icons.add_rounded,
                                size: 60,
                              ),
                              backgroundColor: Color(0xff0B3FA8),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
