import 'package:flutter/material.dart';
import 'package:jobsque_app/Screens/Splash_Screen/Consts/SplashConsts.dart';
import 'package:octo_image/octo_image.dart';

class LogoWidget extends StatefulWidget {
  const LogoWidget({super.key});

  @override
  State<LogoWidget> createState() => _LogoWidgetState();
}

class _LogoWidgetState extends State<LogoWidget> {
  @override
  Widget build(BuildContext context) {
    return OctoImage(
      fit: BoxFit.fill,
      alignment: Alignment.center,
      image: const AssetImage(SplashConsts.image2),
    );
  }
}
