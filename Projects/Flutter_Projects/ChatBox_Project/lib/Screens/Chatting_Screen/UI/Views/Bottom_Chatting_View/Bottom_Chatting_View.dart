// ignore_for_file: camel_case_types, non_constant_identifier_names, must_be_immutable

import 'package:chatbox_project/Components/CustomTextField/CustomTextField.dart';
import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/Chatting_Screen/Controller/Chatting_Controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:octo_image/octo_image.dart';

class Bottom_Chatting_View extends StatefulWidget {
  const Bottom_Chatting_View({super.key});

  @override
  State<Bottom_Chatting_View> createState() => _Bottom_Chatting_View_State();
}

class _Bottom_Chatting_View_State extends State<Bottom_Chatting_View> {
  Chatting_Controller chatting_controller = Get.put(Chatting_Controller());
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: GetX<Chatting_Controller>(
        init: chatting_controller,
        builder: (logic) {
          return Container(
            decoration: BoxDecoration(
              border: BorderDirectional(
                top: BorderSide(
                  color: const Color(0xffEEFAF8),
                  width: 2.0.w,
                ),
              ),
            ),
            height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 10.h,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    FontAwesomeIcons.paperclip,
                    color: const Color(0xff000E08),
                    size: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 15.0.w,
                  ),
                ),
                SizedBox(
                  height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.5.w,
                  width: logic.isEditing.value ?
                      MediaQuery_Size_Helper.MAX_WIDTH(context)! / 1.3.w
                          :
                      MediaQuery_Size_Helper.MAX_WIDTH(context)! / 1.5.w,
                  child: CustomTextField(
                    textEditingController: TextEditingController(),
                    onSubmitted: (p0) {
                      logic.editingStatus(false);
                    },
                    onEditingComplete: () {
                      logic.editingStatus(false);
                    },
                    onTap: () {
                      logic.editingStatus(true);
                    },
                    onTapOutside: (p0) {
                      logic.editingStatus(false);
                    },
                    fillColor: const Color(0xffF3F6F6),
                    hintText: "Write your message .....",
                    hintStyle: TextStyle(
                      color: const Color(0xff797C7B),
                      fontFamily: "Circular Std",
                      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 28.0.w,
                      fontWeight: FontWeight.w500,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0.sp),
                      borderSide: BorderSide(
                        width: 1.5.w,
                        color: const Color(0xffF3F6F6),
                        strokeAlign: BorderSide.strokeAlignInside,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24.0.sp),
                      borderSide: BorderSide(
                        width: 1.5.w,
                        color: const Color(0xffF3F6F6),
                        strokeAlign: BorderSide.strokeAlignInside,
                      ),
                    ),
                  ),
                ),
                logic.isEditing.value
                    ? GestureDetector(
                        onTap: () {},
                        child: OctoImage(
                          image: const AssetImage("Assets/Images/pngwing.com.png"),
                          fit: BoxFit.fill,
                          alignment: Alignment.center,
                          height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.w,
                          width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.w,
                          filterQuality: FilterQuality.high,
                        ),
                      )
                    : Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              FontAwesomeIcons.camera,
                              color: const Color(0xff000E08),
                              size: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 15.0.w,
                            ),
                          ),
                          SizedBox(
                            width: 8.0.w,
                          ),
                          GestureDetector(
                            onLongPress: () {},
                            child: Icon(
                              FontAwesomeIcons.microphone,
                              color: const Color(0xff000E08),
                              size: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 15.0.w,
                            ),
                          ),
                        ],
                      ),
              ],
            ),
          );
        },
      ),
    );
  }
}
