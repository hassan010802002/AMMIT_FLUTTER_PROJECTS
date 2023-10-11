import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lywing/common/app_localizations.dart';
import 'package:lywing/common/constants.dart';
import 'package:lywing/sizes_helpers.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'dart:async';
import 'package:flutter/gestures.dart';

import 'verify-success.dart';

class Email_Verfication extends StatefulWidget {
  final String phoneNumber;

  Email_Verfication(this.phoneNumber);

  @override
  _Email_VerficationState createState() => _Email_VerficationState();
}

class _Email_VerficationState extends State<Email_Verfication> {
  var onTapRecognizer;

  TextEditingController textEditingController = TextEditingController();
  StreamController<ErrorAnimationType> errorController;
  bool hasError = false;
  String currentText = "";
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    onTapRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.pop(context);
      };
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          elevation: 0.0,
          bottomOpacity: 0.0,
          leading: InkWell(
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: kBlack,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: Text(
            AppLocalizations.of(context).translate('EmailVerification'),
            style: TextStyle(
              color: kBlack,
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: kWhite,
        ),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 30),
                  // Container(
                  //   height: MediaQuery.of(context).size.height / 3,
                  //   child: FlareActor(
                  //     "assets/otp.flr",
                  //     animation: "otp",
                  //     fit: BoxFit.fitHeight,
                  //     alignment: Alignment.center,
                  //   ),
                  // ),
                  SizedBox(height: 8),
                  Container(
                    margin: EdgeInsets.only(
                      left: displaySize(context).width * 0.06,
                      right: displaySize(context).width * 0.06,
                    ),
                    child: Text(
                      AppLocalizations.of(context)
                          .translate('Tosecureyouraccount'),
                      style: TextStyle(fontSize: 15, color: kGrey500),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  // Padding(
                  //   padding:
                  //       const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8),
                  //   child: RichText(
                  //     text: TextSpan(
                  //         text: "Enter the code sent to ",
                  //         children: [
                  //           TextSpan(
                  //               text: widget.phoneNumber,
                  //               style: TextStyle(
                  //                   color: Colors.black,
                  //                   fontWeight: FontWeight.bold,
                  //                   fontSize: 15)),
                  //         ],
                  //         style: TextStyle(color: Colors.black54, fontSize: 15)),
                  //     textAlign: TextAlign.center,
                  //   ),
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      AppLocalizations.of(context)
                          .translate('VerificationCode'),
                      style: TextStyle(
                        fontSize: 17,
                        color: kGrey500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Form(
                    key: formKey,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 30),
                        child: PinCodeTextField(
                          appContext: context,
                          pastedTextStyle: TextStyle(
                            color: kGrey200,
                            fontWeight: FontWeight.bold,
                          ),
                          length: 6,
                          obscureText: true,
                          obscuringCharacter: '*',
                          blinkWhenObscuring: true,
                          animationType: AnimationType.fade,
                          validator: (v) {
                            if (v.length < 3) {
                              return "I'm from validator";
                            } else {
                              return null;
                            }
                          },
                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(5),
                            borderWidth: 0,
                            fieldHeight: 50,
                            fieldWidth: 40,
                            activeFillColor: hasError ? kGrey200 : kGrey200,
                          ),
                          backgroundColor: kWhite100,
                          // cursorColor: Colors.black,
                          animationDuration: Duration(milliseconds: 300),
                          // backgroundColor:
                          enableActiveFill: true,
                          errorAnimationController: errorController,
                          controller: textEditingController,
                          keyboardType: TextInputType.number,
                          boxShadows: [
                            BoxShadow(
                              offset: Offset(0, 0),
                              color: kGrey300,
                              blurRadius: 10,
                            )
                          ],
                          onCompleted: (v) {
                            print("Completed");
                          },
                          // onTap: () {
                          //   print("Pressed");
                          // },
                          onChanged: (value) {
                            print(value);
                            setState(() {
                              currentText = value;
                            });
                          },
                          beforeTextPaste: (text) {
                            print("Allowing to paste $text");
                            //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                            //but you can show anything you want here, like your pop up saying wrong paste format or etc
                            return true;
                          },
                        )),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  //   child: Text(
                  //     hasError ? "*Please fill up all the cells properly" : "",
                  //     style: TextStyle(
                  //         color: Colors.red,
                  //         fontSize: 12,
                  //         fontWeight: FontWeight.w400),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Verify_Success()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: kBlue,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        minimumSize: Size(
                          500,
                          displaySize(context).height * 0.05,
                        ),
                      ),
                      child: Text(
                        AppLocalizations.of(context)
                            .translate('Next')
                            .toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          //       fontSize: 15,
                        ),
                      ),
                    ),
                    // ButtonTheme(
                    //   minWidth: 500,
                    //   height: 10,
                    //   child: TextButton(
                    //     onPressed: () {
                    //       Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: (context) => Verify_Success()),
                    //       );
                    // formKey.currentState.validate();
                    // // conditions for validating
                    // if (currentText.length != 6 ||
                    //     currentText != "towtow") {
                    //   errorController.add(ErrorAnimationType
                    //       .shake); // Triggering error shake animation
                    //   setState(() {
                    //     hasError = true;
                    //   });
                    // } else {
                    //   setState(() {
                    //     hasError = false;
                    //     scaffoldKey.currentState.showSnackBar(SnackBar(
                    //       content: Text("Aye!!"),
                    //       duration: Duration(seconds: 2),
                    //     ));
                    //   });
                    // }
                    //    },
                    //    child: Center(
                    //        child: Text(
                    //      AppLocalizations.of(context)
                    //          .translate('Next')
                    //         .toUpperCase(),
                    //      style: TextStyle(
                    //          color: Colors.white,
                    //         fontSize: 15,
                    //          fontWeight: FontWeight.bold),
                    //   )),
                    // ),
                    // ),
                    // decoration: BoxDecoration(
                    //   color: kBlue,
                    //   borderRadius: BorderRadius.circular(5),
                    // ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: displaySize(context).height * 0.02,
                    ),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: AppLocalizations.of(context).translate('Resend'),
                        recognizer: onTapRecognizer,
                        style: TextStyle(color: kBlue, fontSize: 17),
                      ),
                    ),
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: <Widget>[
                  //     Flexible(
                  //         child: TextButton(
                  //       child: Text("Clear"),
                  //       onPressed: () {
                  //         textEditingController.clear();
                  //       },
                  //     )),
                  //     Flexible(
                  //         child: TextButton(
                  //       child: Text("Set Text"),
                  //       onPressed: () {
                  //         textEditingController.text = "123456";
                  //       },
                  //     )),
                  //   ],
                  // )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
