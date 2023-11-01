// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile_Image_Widget extends StatefulWidget {
  const Profile_Image_Widget({super.key});

  @override
  State<Profile_Image_Widget> createState() => _Profile_Image_Widget_State();
}

class _Profile_Image_Widget_State extends State<Profile_Image_Widget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Icon(
          FontAwesomeIcons.solidUserCircle,
          color: Colors.grey,
          size: MediaQuery_Size_Helper.MAX_WIDTH(context)!/8.0.w,
        ),
      ),
    );
  }
}
