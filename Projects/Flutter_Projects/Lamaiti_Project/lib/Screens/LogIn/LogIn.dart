import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lamaiti/Components/CustomTextField/CustomTextField.dart';
import 'package:lamaiti/Consts/LogInConsts.dart';
import 'package:lamaiti/Screens/Home_Screen/HomeScreen.dart';
import 'package:lamaiti/Screens/SignUp/SignUp.dart';

class MyLogIn extends StatelessWidget {
  const MyLogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogInPage(),
    );
  }
}

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<StatefulWidget> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
            Align(
              alignment: AlignmentDirectional.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
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
                      child: CustomTextField(),
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
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 30.0,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) => MyHome(),));
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
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => MySignUp()));
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
          ],
        ),
      ),
    );
  }
}
