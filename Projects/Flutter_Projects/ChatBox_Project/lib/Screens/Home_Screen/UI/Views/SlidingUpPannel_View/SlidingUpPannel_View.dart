// ignore_for_file: camel_case_types

import 'package:chatbox_project/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:chatbox_project/Screens/Home_Screen/UI/Views/SlidingUpPannel_View/Contacts_List_View/Contacts_List_View.dart';
import 'package:chatbox_project/Screens/Home_Screen/UI/Widgets/Sliding_Container/Sliding_Container_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SlidingUpPannel_View extends StatefulWidget{
  const SlidingUpPannel_View({super.key});

  @override
  State<SlidingUpPannel_View> createState() => _SlidingUpPannel_View_State();
}

class _SlidingUpPannel_View_State extends State<SlidingUpPannel_View>{


  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      renderPanelSheet: true,
      controller: PanelController(),
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(45.0.sp),
      ),
      isDraggable: true,
      minHeight: MediaQuery_Size_Helper.MAX_HEIGHT(context)!/1.2.h,
      maxHeight: MediaQuery_Size_Helper.MAX_HEIGHT(context)!/1.2.h,
      slideDirection: SlideDirection.UP,
      parallaxEnabled: true,
      defaultPanelState: PanelState.CLOSED,
      backdropEnabled: true,
      backdropTapClosesPanel: true,
      padding: EdgeInsets.symmetric(vertical: 12.0.sp),
      panelBuilder: (sc) {
        return Align(
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Sliding_Container_Widget(),
              SizedBox(
                height: 20.0.h,
              ),
              const Contacts_List_View(),
            ],
          ),
        );
      },
    );
  }
}