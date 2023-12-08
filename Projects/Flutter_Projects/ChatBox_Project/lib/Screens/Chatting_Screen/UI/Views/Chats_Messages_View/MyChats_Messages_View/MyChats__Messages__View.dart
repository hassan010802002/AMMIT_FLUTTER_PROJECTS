// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Models/Chats_Model/Chats_Model.dart';
import 'package:chatbox_project/Screens/Chatting_Screen/Controller/Chatting_Controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyChats__Messages__View extends StatefulWidget {
  final Chatting_Controller chatting_controller;

  const MyChats__Messages__View({super.key, required this.chatting_controller});

  @override
  State<MyChats__Messages__View> createState() => _MyChats__Messages__View_State();
}

class _MyChats__Messages__View_State extends State<MyChats__Messages__View> {
  @override
  Widget build(BuildContext context) {
    return GetX<Chatting_Controller>(
      init: widget.chatting_controller,
      builder: (logic) {
        return StreamBuilder(
            stream: logic.myChats.value,
            builder: (BuildContext context, snapshot) {
              if (snapshot.connectionState == ConnectionState.active) {
                if (snapshot.hasError) {
                  return const CircularProgressIndicator();
                }
                logic.RetrievingChat(snapshot: snapshot);
                return Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.w,
                    child: ListView.separated(
                      controller: ScrollController(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0.sp),
                                  bottomRight: Radius.circular(30.0.sp),
                                  bottomLeft: Radius.circular(30.0.sp),
                                ),
                                color: const Color(0xff20A090),
                              ),
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(10.0.sp),
                              margin: EdgeInsets.only(
                                right: 15.0.w,
                              ),
                              constraints: BoxConstraints(
                                maxWidth: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 1.8.w,
                                minHeight: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 18.0.h,
                              ),
                              child: Text(
                                logic.chatsMessages.value.messages![index].text!,
                                softWrap: true,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: const Color(0xff000E08),
                                  fontFamily: "Circular Std",
                                  fontWeight: FontWeight.w500,
                                  fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.w,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h,
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 10.0.h,
                        );
                      },
                      itemCount: logic.chatsMessages.value.messages!.length,
                    ),
                  ),
                );
              }
              return Container();
            });
      },
    );
  }
}
