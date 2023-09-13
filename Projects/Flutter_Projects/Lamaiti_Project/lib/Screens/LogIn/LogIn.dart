import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lamaiti/Components/CustomTextField/CustomTextField.dart';
import 'package:lamaiti/Consts/LogInConsts.dart';
import 'package:lamaiti/Controllers/LogIn_Controller/LogIn_Controller.dart';
import 'package:lamaiti/Routes/My_Routes.dart';

class MyLogIn extends StatelessWidget {
  const MyLogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LogInPage(),
    );
  }
}

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<StatefulWidget> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  LogInController controller = Get.put(LogInController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: LogInConsts.containerDecoration,
      child: Stack(
        alignment: LogInConsts.stackAlignment,
        children: [
          SvgPicture.string(
            LogInConsts.svgVectorString,
            width: LogInConsts.vectorWidth,
            height: LogInConsts.vectorHeight,
            alignment: Alignment.topCenter,
          ),
          SingleChildScrollView(
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  left: 20.0,
                  right: 20.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Text(
                      LogInConsts.text1,
                      style: LogInConsts.text1Style,
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      LogInConsts.text2,
                      style: LogInConsts.text2Style,
                      textAlign: TextAlign.right,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 100.0, right: 20),
                      child: Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              LogInConsts.text3,
                              textAlign: TextAlign.right,
                              style: LogInConsts.text3Style,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 65.0,
                      width: 380.0,
                      child: CustomTextField(
                        icon: Icons.email_rounded,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              LogInConsts.text4,
                              textAlign: TextAlign.right,
                              style: LogInConsts.text3Style,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 65.0,
                      width: 380.0,
                      child: CustomTextField(
                        icon: Icons.password_rounded,
                        opsecure: true,
                        hintText: "Enter Your Password",
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        style: ButtonStyle(
                          visualDensity: VisualDensity.comfortable
                        ),
                        onPressed: () {
                          controller.Navigate(MyRoutes.forgetPasswordScreen);
                        },
                        child: const Text(
                          LogInConsts.text8,
                          textAlign: TextAlign.right,
                          style: LogInConsts.text6Style,
                          textDirection: TextDirection.rtl,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.Navigate_and_Close_Current(
                              MyRoutes.homeScreen);
                        },
                        style: LogInConsts.buttonSyle,
                        child: const Text(
                          LogInConsts.text5,
                          style: LogInConsts.text5Style,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.bottomCenter,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton(
                            onPressed: () {
                              controller.Navigate(MyRoutes.signUpScreen);
                            },
                            child: const Text(
                              LogInConsts.text6,
                              textAlign: TextAlign.center,
                              style: LogInConsts.text6Style,
                            ),
                          ),
                          const Text(
                            LogInConsts.text7,
                            textAlign: TextAlign.center,
                            style: LogInConsts.text7Style,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
