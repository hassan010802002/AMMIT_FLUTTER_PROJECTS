import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lamaiti/Consts/Wallet_Screen_Consts.dart';
import 'package:lamaiti/Controllers/Wallet_Screen_Controller/Wallet_Screen_Controller.dart';

class MyWallet_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wallet_Screen(),
    );
  }
}

class Wallet_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Wallet_Screen_State();
}

class _Wallet_Screen_State extends State<Wallet_Screen> {
  Wallet_Screen_Controller wallet_screen_controller =
      Get.put(Wallet_Screen_Controller());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Wallet_Screen_Consts.containerDecoration,
      child: Stack(
        alignment: Wallet_Screen_Consts.stackAlignment,
        children: [
          SvgPicture.string(
            Wallet_Screen_Consts.svgVectorString,
            width: Wallet_Screen_Consts.vectorWidth,
            height: Wallet_Screen_Consts.vectorHeight,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 60.0,
                right: 20.0,
                left: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.black,
                          size: 30.0,
                        ),
                        onTap: () {
                          wallet_screen_controller.Navigating_Back();
                        },
                      ),
                      const Text(
                        Wallet_Screen_Consts.text1,
                        style: Wallet_Screen_Consts.text1Style,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SvgPicture.asset(
                      "assets/Images/bx_bx-wallet-alt.svg",
                      width: 180,
                      height: 180,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    "الرصيد المتاح",
                    style: TextStyle(
                      color: Wallet_Screen_Consts.secondaryColor,
                      fontWeight: FontWeight.w800,
                      fontSize: 38,
                      fontFamily: "Tajawal",
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  Text(
                    "50 ر س",
                    style: TextStyle(
                      color: Wallet_Screen_Consts.mainColor,
                      fontWeight: FontWeight.w800,
                      fontSize: 38,
                      fontFamily: "Tajawal",
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
