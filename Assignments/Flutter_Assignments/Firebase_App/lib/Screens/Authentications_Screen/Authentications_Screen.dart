import 'package:firebase_app/Components/Custom_Button/Custom_Bottom.dart';
import 'package:firebase_app/Components/Custom_TextField/Custom_TextField.dart';
import 'package:firebase_app/Consts/Authentications_Consts/Authentications_Consts.dart';
import 'package:firebase_app/Consts/Authentications_Consts/Colors/Authentications_Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Controllers/Authentications_Controller/Authentications_Controller.dart';

class MyAuthentications extends StatelessWidget {
  const MyAuthentications({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Authentications_Screen(),
    );
  }
}

class Authentications_Screen extends StatefulWidget {
  const Authentications_Screen({super.key});

  @override
  State<StatefulWidget> createState() => _Authentications_Screen_State();
}

class _Authentications_Screen_State extends State<Authentications_Screen> {
  Authentications_Controller controller = Get.put(Authentications_Controller());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Authentications_Consts.style1,
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
                  Authentications_Consts.image,
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
                      Authentications_Consts.text1,
                      style: Authentications_Consts.style2,
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    CustomTextField(
                      controller: controller.userNameController,
                      keyboardType: TextInputType.emailAddress,
                      fillColor: Authentications_Colors.color1,
                      labelText: Authentications_Consts.text2,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                      controller: controller.passwordNameController,
                      keyboardType: TextInputType.text,
                      opsecure: true,
                      opscureCharacter: Authentications_Consts.text4,
                      fillColor: Authentications_Colors.color1,
                      labelText: Authentications_Consts.text3,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      child: SizedBox(
                        width: 355,
                        height: 60,
                        child: CustomButton(
                          onPressed: () {
                            controller.SigningIn();
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      child: SizedBox(
                        width: 355,
                        height: 60,
                        child: CustomButton(
                          buttonText: "Sign Up",
                          onPressed: () {
                            controller.SigningUp();
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      child: SizedBox(
                        width: 355,
                        height: 60,
                        child: CustomButton(
                          buttonText: "Delete Account",
                          onPressed: () {
                            controller.Deleting();
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
