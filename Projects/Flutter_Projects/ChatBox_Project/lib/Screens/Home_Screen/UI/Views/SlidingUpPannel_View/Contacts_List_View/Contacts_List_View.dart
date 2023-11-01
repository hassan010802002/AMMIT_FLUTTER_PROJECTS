// ignore_for_file: camel_case_types, non_constant_identifier_names, must_be_immutable

import 'package:chatbox_project/Screens/Home_Screen/Controller/Home_Controller.dart';
import 'package:chatbox_project/Screens/Home_Screen/UI/Widgets/Contact_ListTile/Contact_ListTile_Widget.dart';
import 'package:chatbox_project/Screens/Home_Screen/UI/Widgets/Dismissible_Background/Dismissible_Background_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../Routes/MyPages/MyPages.dart';

class Contacts_List_View extends StatefulWidget {
  const Contacts_List_View({super.key});

  @override
  State<Contacts_List_View> createState() => _Contacts_List_View_State();
}

class _Contacts_List_View_State extends State<Contacts_List_View> {
  Home_Controller home_controller = Get.put(Home_Controller());
  final UniqueKey uniqueKey = UniqueKey();
  bool notify = false, remove = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.topCenter,
        child: GetX(
          init: home_controller,
          builder: (controller) {
            if (controller.listLength.value != 0) {
              return ListView.separated(
                controller: ScrollController(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Dismissible(
                    key: uniqueKey,
                    direction: DismissDirection.horizontal,
                    behavior: HitTestBehavior.deferToChild,
                    resizeDuration: const Duration(milliseconds: 600),
                    onDismissed: (direction) {
                      if (direction == DismissDirection.endToStart) {
                        controller.RemovingContact(index);
                      }
                    },
                    confirmDismiss: (direction) async {
                      if (direction == DismissDirection.endToStart) {
                        return true;
                      } else {
                        return false;
                      }
                    },
                    background: const Dismissible_Background_Widget(),
                    child: Contact_ListTile_Widget(homeController: home_controller, index: index),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 10.0.h),
                itemCount: home_controller.listLength.value,
              );
            } else {
              return Align(
                alignment: Alignment.center,
                child: CircularProgressIndicator(
                  strokeWidth: 5.0.w,
                  color: Colors.amber,
                  backgroundColor: Colors.grey,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
