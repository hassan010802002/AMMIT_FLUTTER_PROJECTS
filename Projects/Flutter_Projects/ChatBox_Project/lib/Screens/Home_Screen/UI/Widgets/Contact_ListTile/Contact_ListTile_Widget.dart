// ignore_for_file: camel_case_types, non_constant_identifier_names, must_be_immutable

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/Home_Screen/Controller/Home_Controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Routes/MyPages/MyPages.dart';

class Contact_ListTile_Widget extends StatefulWidget {
  final Home_Controller? homeController;
  int? index;

  Contact_ListTile_Widget({super.key , required this.homeController , required this.index});

  @override
  State<Contact_ListTile_Widget> createState() => _Contact_ListTile_Widget_State();
}

class _Contact_ListTile_Widget_State extends State<Contact_ListTile_Widget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: widget.homeController!.myContacts!.value.elementAt(widget.index!).avatar!.isNotEmpty
          ? CircleAvatar(
        backgroundColor: Colors.blueGrey,
        radius: 30.0,
        child: OctoImage(
          image: MemoryImage(widget.homeController!.myContacts!.value.elementAt(widget.index!).avatar!),
          fit: BoxFit.fill,
          alignment: Alignment.center,
          filterQuality: FilterQuality.high,
        ),
      )
          : Icon(
        FontAwesomeIcons.solidUserCircle,
        color: Colors.grey,
        size: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 6.0.w,
      ),
      title: Padding(
        padding: EdgeInsets.only(top: 20.0.h),
        child: Text(
          widget.homeController!.myContacts!.value.elementAt(widget.index!).displayName!,
          softWrap: true,
          textAlign: TextAlign.justify,
        ),
      ),
      subtitle: const Text(
        "this is My Message Here",
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
      style: ListTileStyle.list,
      onTap: () {
        widget.homeController?.Navigation(MyPages.chattingScreen);
      },
      visualDensity: VisualDensity.comfortable,
      minVerticalPadding: 12.0.h,
      titleAlignment: ListTileTitleAlignment.center,
      titleTextStyle: TextStyle(
        color: const Color(0xff000E08),
        fontFamily: "Caros",
        fontWeight: FontWeight.w600,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 18.0.w,
      ),
      subtitleTextStyle: TextStyle(
        color: const Color(0xff797C7B),
        fontFamily: "Circular Std",
        fontWeight: FontWeight.w400,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 25.0.w,
      ),
    );
  }
}
