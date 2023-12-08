import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class BlurImageWidget extends StatefulWidget {
  const BlurImageWidget({super.key});

  @override
  State<BlurImageWidget> createState() => _BlurImageWidgetState();
}

class _BlurImageWidgetState extends State<BlurImageWidget> {
  @override
  Widget build(BuildContext context) {
    return OctoImage(
      fit: BoxFit.fill,
      alignment: Alignment.center,
      width: MediaQuery_Size_Helper.MAX_WIDTH(context)!,
      // height: MediaQuery_Size_Helper.MAX_HEIGHT(context)!,
      image: const AssetImage("Assets/Images/Blur.png"),
    );
  }
}
