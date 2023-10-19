// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'dart:io';

import 'package:firebase_app/Components/Custom_Button/Custom_Bottom.dart';
import 'package:firebase_app/Controllers/Home_Controller/Home_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home_Screen();
  }
}

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<StatefulWidget> createState() => _Home_Screen_State();
}

class _Home_Screen_State extends State<Home_Screen> {
  Home_Controller home_controller = Get.put(Home_Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          gradient: const LinearGradient(
            colors: <Color>[
              Colors.grey,
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GetX(
                  init: home_controller,
                  builder: (controller) {
                    return Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        GestureDetector(
                          onTap: () {
                            controller.selectImage();
                          },
                          child: Container(
                            height: 450.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(
                                color: Colors.greenAccent,
                                width: 2.0,
                              ),
                              image: controller.selectedImage.value.isNotEmpty
                                  ? DecorationImage(
                                      image: FileImage(File(controller.selectedImage.value)),
                                      fit: BoxFit.fill,
                                      alignment: Alignment.center,
                                      filterQuality: FilterQuality.high)
                                  : null,
                            ),
                            child: controller.selectedImage.value.isEmpty
                                ? const Center(
                                    child: Icon(
                                      Icons.image,
                                      color: Colors.grey,
                                      size: 350.0,
                                    ),
                                  )
                                : null,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: SizedBox(
                            height: 80.0,
                            width: 80.0,
                            child: FloatingActionButton(
                              onPressed: () {
                                controller.selectImage();
                              },
                              backgroundColor: Colors.greenAccent,
                              elevation: 8.0,
                              child: const Icon(
                                Icons.add_a_photo_rounded,
                                color: Colors.limeAccent,
                                size: 40.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(
                  height: 25.0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: CustomButton(
                    buttonText: "SUBMIT",
                    backgroundColor: const MaterialStatePropertyAll(Colors.greenAccent),
                    fixedSize: const MaterialStatePropertyAll(Size(300.0, 60.0)),
                    onPressed: () {
                      home_controller.Submitting_Image();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
