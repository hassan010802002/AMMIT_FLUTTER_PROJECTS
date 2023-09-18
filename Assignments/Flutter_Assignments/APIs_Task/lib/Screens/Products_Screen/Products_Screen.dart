import 'package:application_4/Consts/Products_Consts/Products_Consts.dart';
import 'package:application_4/Controllers/Products_Contoller/Products_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Products_Screen(),
    );
  }
}

class Products_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Products_Screen_State();
}

class _Products_Screen_State extends State<Products_Screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Products_Consts.style1,
      child: GetX(
        init: Products_Controller(),
        builder: (controller) {
          return Flex(
            direction: Axis.vertical,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: GridView.builder(
                    itemCount: controller.productsLists!.value.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    primary: true,
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      bottom: 10.0,
                      top: 10,
                    ),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.9,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 12.0,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: Products_Consts.style2,
                        padding: const EdgeInsets.all(10.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image(
                                image: NetworkImage(
                                  controller
                                      .productsLists!.value[index].images![0],
                                ),
                                width: double.infinity,
                                height: 95,
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "Title : ${controller.productsLists!.value[index].title!}",
                                textAlign: TextAlign.center,
                                style: Products_Consts.style3,
                              ),
                              Text(
                                "Price : ${controller.productsLists!.value[index].price!}",
                                textAlign: TextAlign.center,
                                style: Products_Consts.style3,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
