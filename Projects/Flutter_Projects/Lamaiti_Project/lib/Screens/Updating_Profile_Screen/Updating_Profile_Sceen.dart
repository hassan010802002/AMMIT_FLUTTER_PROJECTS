import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lamaiti/Components/CustomTextField/CustomTextField.dart';
import 'package:lamaiti/Consts/Updating_Profile_Consts.dart';
import 'package:lamaiti/Controllers/Updating_Profile_Controller/Updating_Profile_Controller.dart';
import 'package:lamaiti/Routes/My_Routes.dart';

class Updating_MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Updating_Profile_Screen(),
    );
  }
}

class Updating_Profile_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Updating_Profile_Screen_State();
}

class _Updating_Profile_Screen_State extends State<Updating_Profile_Screen> {
  Updating_Profile_Controller controller =
      Get.put(Updating_Profile_Controller());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Updating_Profile_Consts.containerDecoration,
      child: Stack(
        alignment: Updating_Profile_Consts.stackAlignment,
        children: [
          SvgPicture.string(
            Updating_Profile_Consts.svgVectorString,
            width: Updating_Profile_Consts.vectorWidth,
            height: Updating_Profile_Consts.vectorHeight,
            alignment: Alignment.topCenter,
          ),
          SingleChildScrollView(
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 100.0,
                  left: 20.0,
                  right: 20.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SvgPicture.asset(
                      "assets/Images/Frame.svg",
                      width: 180,
                      height: 180,
                      alignment: Alignment.center,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            Updating_Profile_Consts.text2,
                            textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                            style: Updating_Profile_Consts.text2Style,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 65.0,
                      width: 380.0,
                      child: CustomTextField(
                        hintText: "Example: Hassan Saied Hassan",
                        keyboardType: TextInputType.name,
                        icon: Icons.person,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            Updating_Profile_Consts.text4,
                            textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                            style: Updating_Profile_Consts.text2Style,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 65.0,
                      width: 380.0,
                      child: CustomTextField(
                        keyboardType: TextInputType.emailAddress,
                        icon: Icons.email_rounded,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            Updating_Profile_Consts.text6,
                            textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                            style: Updating_Profile_Consts.text2Style,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 65.0,
                      width: 380.0,
                      child: CustomTextField(
                        keyboardType: TextInputType.phone,
                        hintText: "Example: \"01XXXXXXXXX123\"",
                        icon: Icons.phone_rounded,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 30.0,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          controller.Navigate(MyRoutes.profileScreen);
                        },
                        style: Updating_Profile_Consts.buttonSyle,
                        child: const Text(
                          Updating_Profile_Consts.text5,
                          style: Updating_Profile_Consts.text5Style,
                          textAlign: TextAlign.center,
                        ),
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
