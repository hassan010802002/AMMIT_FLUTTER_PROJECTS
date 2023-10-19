// ignore_for_file: camel_case_types

import 'package:firebase_app/Components/Custom_Button/Custom_Bottom.dart';
import 'package:firebase_app/Components/Custom_TextField/Custom_TextField.dart';
import 'package:firebase_app/Consts/Authentications_Consts/Authentications_Consts.dart';
import 'package:firebase_app/Consts/Authentications_Consts/Colors/Authentications_Colors.dart';
import 'package:firebase_app/Consts/Registeration_Consts/Registeration_Consts.dart';
import 'package:firebase_app/Controllers/Registeration_Controller/Registeration_Controller.dart';
import 'package:firebase_app/Screens/Authentications_Screen/Authentications_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Controllers/Authentications_Controller/Authentications_Controller.dart';

class MyRegisteration extends StatelessWidget {
  const MyRegisteration({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Registeration_Screen(),
    );
  }
}

class Registeration_Screen extends StatefulWidget {
  const Registeration_Screen({super.key});

  @override
  State<StatefulWidget> createState() => _Registeration_Screen_State();
}

class _Registeration_Screen_State extends State<Registeration_Screen> {
  final controller = Get.put(Registeration_Controller());

  @override
  Widget build(BuildContext context) {
    return
      Container(
      decoration: Registeration_Consts.style1,
      child: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          primary: true,
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Image.asset(
                  Registeration_Consts.image,
                  width: 420,
                  height: 450,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  textDirection: TextDirection.ltr,
                  children: [
                    const Text(
                      Registeration_Consts.text1,
                      style: Registeration_Consts.style2,
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    CustomTextField(
                      controller: controller.idController,
                      keyboardType: TextInputType.number,
                      fillColor: Authentications_Colors.color1,
                      labelText: Registeration_Consts.text6,
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    CustomTextField(
                      controller: controller.nameController,
                      keyboardType: TextInputType.name,
                      fillColor: Authentications_Colors.color1,
                      labelText: Registeration_Consts.text2,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                      controller: controller.userNameController,
                      keyboardType: TextInputType.name,
                      fillColor: Authentications_Colors.color1,
                      labelText: Registeration_Consts.text5,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                      controller: controller.emailController,
                      keyboardType: TextInputType.emailAddress,
                      fillColor: Authentications_Colors.color1,
                      labelText: Registeration_Consts.text8,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                      controller: controller.phoneController,
                      keyboardType: TextInputType.phone,
                      fillColor: Authentications_Colors.color1,
                      labelText: Registeration_Consts.text7,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                      controller: controller.passwordController,
                      keyboardType: TextInputType.text,
                      opsecure: true,
                      opscureCharacter: Registeration_Consts.text4,
                      fillColor: Authentications_Colors.color1,
                      labelText: Registeration_Consts.text3,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                      child: SizedBox(
                        width: 355,
                        height: 60,
                        child: CustomButton(
                          buttonText: "Auth Sign Up",
                          onPressed: () {
                            controller.SigningUp_to_Auth();
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                      child: SizedBox(
                        width: 355,
                        height: 60,
                        child: CustomButton(
                          buttonText: "FireStore Sign Up",
                          onPressed: () {
                            controller.SigningUp_to_FireStore();
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                      child: SizedBox(
                        width: 355,
                        height: 60,
                        child: CustomButton(
                          buttonText: "Real DB Sign Up",
                          onPressed: () {
                            controller.SigningUp_to_RealDB();
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                      child: SizedBox(
                        width: 355,
                        height: 60,
                        child: CustomButton(
                          buttonText: "Log In",
                          onPressed: () {
                            controller.Navigation(const MyAuthentications());
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    )
    ;
  }
}
