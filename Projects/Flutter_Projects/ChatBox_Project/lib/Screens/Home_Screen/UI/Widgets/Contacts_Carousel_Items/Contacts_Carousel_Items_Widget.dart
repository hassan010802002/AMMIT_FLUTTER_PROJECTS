// ignore_for_file: camel_case_types, non_constant_identifier_names, must_be_immutable

import 'dart:typed_data';

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/Home_Screen/Controller/Home_Controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:octo_image/octo_image.dart';

class Contacts_Carousel_Items_Widget extends StatefulWidget {
  final Home_Controller? homeController;
  int? index;
  AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot;

  Contacts_Carousel_Items_Widget({super.key, required this.homeController, required this.index , required this.snapshot });

  @override
  State<Contacts_Carousel_Items_Widget> createState() => _Contacts_Carousel_Items_Widget_State();
}

class _Contacts_Carousel_Items_Widget_State extends State<Contacts_Carousel_Items_Widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.symmetric(horizontal: 10.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          widget.homeController!.RetrievingChatMessages(snapshot: widget.snapshot, index: widget.index!).avatarPhoto!.isEmpty
              ? Icon(
                  FontAwesomeIcons.solidUserCircle,
                  color: Colors.amberAccent,
                  size: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 5.0.w,
                )
              : CircleAvatar(
                  backgroundColor: Colors.amberAccent,
                  radius: 40.0,
                  child: OctoImage(
                    image: MemoryImage(widget.homeController!.RetrievingChatMessages(snapshot: widget.snapshot, index: widget.index!).avatarPhoto! as Uint8List ),
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                    filterQuality: FilterQuality.high,
                  ),
                ),
          SizedBox(
            height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 80.0.h,
          ),
          Text(
            widget.homeController!.RetrievingChatMessages(snapshot: widget.snapshot, index: widget.index!).displayName!,
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Caros",
              fontWeight: FontWeight.w500,
              fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 25.0.w,
            ),
          ),
        ],
      ),
    );
  }
}
