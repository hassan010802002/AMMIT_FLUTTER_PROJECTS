import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lamaiti/Components/CustomTextField/CustomTextField.dart';
import 'package:lamaiti/Consts/SignUpConsts.dart';
import 'package:lamaiti/Screens/LogIn/LogIn.dart';
import 'package:lamaiti/Screens/OTP/OTP.dart';

class MySignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: SignUpConsts.containerDecoration,
        child: SingleChildScrollView(
          child: Stack(
            alignment: SignUpConsts.stackAlignment,
            children: [
              SvgPicture.string(
                SignUpConsts.svgVectorString,
                width: SignUpConsts.vectorWidth,
                height: SignUpConsts.vectorHeight,
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        SignUpConsts.text1,
                        style: SignUpConsts.text1Style,
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 50.0, right: 20),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                SignUpConsts.text2,
                                textAlign: TextAlign.right,
                                style: SignUpConsts.text2Style,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 65.0,
                        width: 380.0,
                        child: CustomTextField(
                          hintText: "Enter Your Name",
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
                                SignUpConsts.text4,
                                textAlign: TextAlign.right,
                                style: SignUpConsts.text2Style,
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
                                SignUpConsts.text5,
                                textAlign: TextAlign.right,
                                style: SignUpConsts.text2Style,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 65.0,
                        width: 380.0,
                        child: CustomTextField(
                          hintText: "Enter Your Phone Number",
                          icon: Icons.phone,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              SignUpConsts.text6,
                              textAlign: TextAlign.right,
                              style: SignUpConsts.text6Style,
                            ),
                            Radio(
                              value: "Female",
                              groupValue: "Gender",
                              onChanged: (_) {},
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Text(
                                SignUpConsts.text7,
                                textAlign: TextAlign.right,
                                style: SignUpConsts.text6Style,
                              ),
                            ),
                            Radio(
                              value: "Male",
                              groupValue: "Gender",
                              onChanged: (_) {},
                            ),
                          ],
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
                                SignUpConsts.text3,
                                textAlign: TextAlign.right,
                                style: SignUpConsts.text2Style,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 65.0,
                        width: 380.0,
                        child: CustomTextField(
                          hintText: "Enter Your Password",
                          icon: Icons.password_rounded,
                          opsecure: true,
                          opscureCharacter: "*",
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
                                SignUpConsts.text8,
                                textAlign: TextAlign.right,
                                style: SignUpConsts.text2Style,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 65.0,
                        width: 380.0,
                        child: CustomTextField(
                          hintText: "Confirm Your Password",
                          icon: Icons.password_rounded,
                          opsecure: true,
                          opscureCharacter: "*",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              SignUpConsts.text9,
                              textAlign: TextAlign.right,
                              style: SignUpConsts.text6Style,
                            ),
                            Radio(
                              value: "Policy Agree",
                              groupValue: "Policy",
                              onChanged: (_) {},
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15.0,
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => My_OTP(),));
                          },
                          style: SignUpConsts.buttonSyle,
                          child: const Text(
                            SignUpConsts.text10,
                            style: SignUpConsts.text10Style,
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
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => MyLogIn()));
                              },
                              child: const Text(
                                SignUpConsts.text11,
                                textAlign: TextAlign.center,
                                style: SignUpConsts.text11Style,
                              ),
                            ),
                            const Text(
                              SignUpConsts.text12,
                              textAlign: TextAlign.center,
                              style: SignUpConsts.text12Style,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
