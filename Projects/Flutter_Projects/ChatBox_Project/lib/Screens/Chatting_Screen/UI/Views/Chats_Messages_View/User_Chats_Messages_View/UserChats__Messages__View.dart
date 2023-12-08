// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:chatbox_project/Helpers/Local_Cache_Helper/cache_helper.dart';
import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Models/Chats_Model/Chats_Model.dart';
import 'package:chatbox_project/Screens/Chatting_Screen/Controller/Chatting_Controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class UserChats__Messages__View extends StatefulWidget {
  final Chatting_Controller chatting_controller;

  const UserChats__Messages__View({super.key, required this.chatting_controller});

  @override
  State<UserChats__Messages__View> createState() => _UserChats__Messages__View_State();
}

class _UserChats__Messages__View_State extends State<UserChats__Messages__View> {
  @override
  Widget build(BuildContext context) {
    return GetX<Chatting_Controller>(
      init: widget.chatting_controller,
      builder: (logic) {
        return StreamBuilder(
            stream: logic.userChat.value,
            builder: (BuildContext context, snapshot) {
              if (snapshot.connectionState == ConnectionState.active) {
                if (snapshot.hasError) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                logic.RetrievingChat(snapshot: snapshot);
                if (CacheHelper.getData(key: "type") == "voice") {
                  return Align(
                    alignment: Alignment.bottomLeft,
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
                              SizedBox(
                                height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30.0.sp),
                                    bottomRight: Radius.circular(30.0.sp),
                                    bottomLeft: Radius.circular(30.0.sp),
                                  ),
                                  color: const Color(0xffF2F7FB),
                                ),
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(12.0.sp),
                                margin: EdgeInsets.only(left: 15.0.w),
                                constraints: BoxConstraints(
                                  maxWidth: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 1.5.w,
                                  minHeight: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 18.0.h,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    IconButton.outlined(
                                      onPressed: () {
                                        logic.PlayingVoiceRecord(logic.chatsMessages.value.media!.audios![index].url);
                                      },
                                      splashRadius: 30.0,
                                      padding: EdgeInsets.all(10.0.sp),
                                      iconSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 25.0.w,
                                      alignment: Alignment.center,
                                      visualDensity: VisualDensity.comfortable,
                                      icon: const Icon(FontAwesomeIcons.play),
                                    ),
                                    Text(
                                      logic.chatsMessages.value.media!.audios![index].timeStampe!.split(",").last,
                                      softWrap: true,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        color: const Color(0xff000E08),
                                        fontFamily: "Circular Std",
                                        fontWeight: FontWeight.w500,
                                        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 28.0.w,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 10.0.h,
                          );
                        },
                        itemCount: logic.chatsMessages.value.media!.audios!.length
                        ,
                      ),
                    ),
                  );
                }
                return Align(
                  alignment: Alignment.bottomLeft,
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
                            SizedBox(
                              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30.0.sp),
                                  bottomRight: Radius.circular(30.0.sp),
                                  bottomLeft: Radius.circular(30.0.sp),
                                ),
                                color: const Color(0xffF2F7FB),
                              ),
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(12.0.sp),
                              margin: EdgeInsets.only(left: 15.0.w),
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
