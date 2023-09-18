import 'package:application_4/Components/Custom_Button/Custom_Bottom.dart';
import 'package:application_4/Components/Custom_TextField/Custom_TextField.dart';
import 'package:application_4/Consts/LogIn_Consts/Colors/LogI_Colors.dart';
import 'package:application_4/Consts/LogIn_Consts/LogIn_Consts.dart';
import 'package:application_4/Controllers/LogIn_Controller/LogIn_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyLogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LogIn_Screen(),
    );
  }
}

class LogIn_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LogIn_Screen_State();
}

class _LogIn_Screen_State extends State<LogIn_Screen> {
  LogIn_Controller controller = Get.put(LogIn_Controller());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: LogIn_Consts.style1,
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
                  LogIn_Consts.image,
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
                      LogIn_Consts.text1,
                      style: LogIn_Consts.style2,
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    CustomTextField(
                      controller: controller.userNameController,
                      keyboardType: TextInputType.emailAddress,
                      fillColor: LogIn_Colors.color1,
                      labelText: LogIn_Consts.text2,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                      controller: controller.passwordNameController,
                      keyboardType: TextInputType.text,
                      opsecure: true,
                      opscureCharacter: LogIn_Consts.text4,
                      fillColor: LogIn_Colors.color1,
                      labelText: LogIn_Consts.text3,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(12.0)),
                      child: SizedBox(
                        width: 355,
                        height: 60,
                        child: CustomButton(
                          onPressed: () async {
                            await controller.logIn_Authurization(context);
                          },
                        )
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
