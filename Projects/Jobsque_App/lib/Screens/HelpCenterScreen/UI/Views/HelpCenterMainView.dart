// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/HelpCenterScreen/Controller/help_center_controller_cubit.dart';
import 'package:jobsque_app/Screens/HelpCenterScreen/UI/Widgets/HelpCenterTextField/help_center_text_field.dart';

import '../../../../Components/CustomExpandableCollapsedContainer/CustomExpandableCollapsedContainer.dart';
import '../../../SearchScreen/UI/Widgets/BackButton_Widget/back_button_widget.dart';
import '../Widgets/HelpCenterScreenTitleWidget/help_center_screen_title_widget.dart';

class HelpCenterMainView extends StatefulWidget {
  final HelpCenterControllerCubit helpCenterControllerCubit;

  const HelpCenterMainView({super.key, required this.helpCenterControllerCubit});

  @override
  State<HelpCenterMainView> createState() => _HelpCenterMainViewState();
}

class _HelpCenterMainViewState extends State<HelpCenterMainView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 15.0.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BackButtonWidget(),
                    const HelpCenterScreenTitleWidget(),
                    const SizedBox(),
                  ],
                ),
                SizedBox(
                  height: 35.0.h,
                ),
                SizedBox(
                  height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 14.0.h,
                  child: const HelpCenterTextField(),
                ),
                SizedBox(
                  height: 30.0.h,
                ),
                const CustomExpandableCollapsedContainer(
                  headerText: 'Lorem ipsum dolor sit amet',
                  expandText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies mi enim, quis vulputate nibh'
                      ' faucibus at. Maecenas est ante, suscipit vel sem non, blandit blandit erat. Praesent pulvinar ante et felis porta vulputate.'
                      ' Curabitur ornare velit nec fringilla finibus. Phasellus mollis pharetra ante, in ullamcorper massa ullamcorper et. '
                      'Curabitur ac leo sit amet leo interdum mattis vel eu mauris.',
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                const CustomExpandableCollapsedContainer(
                  headerText: 'Lorem ipsum dolor sit amet',
                  expandText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies mi enim, quis vulputate nibh'
                      ' faucibus at. Maecenas est ante, suscipit vel sem non, blandit blandit erat. Praesent pulvinar ante et felis porta vulputate.'
                      ' Curabitur ornare velit nec fringilla finibus. Phasellus mollis pharetra ante, in ullamcorper massa ullamcorper et. '
                      'Curabitur ac leo sit amet leo interdum mattis vel eu mauris.',
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                const CustomExpandableCollapsedContainer(
                  headerText: 'Lorem ipsum dolor sit amet',
                  expandText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies mi enim, quis vulputate nibh'
                      ' faucibus at. Maecenas est ante, suscipit vel sem non, blandit blandit erat. Praesent pulvinar ante et felis porta vulputate.'
                      ' Curabitur ornare velit nec fringilla finibus. Phasellus mollis pharetra ante, in ullamcorper massa ullamcorper et. '
                      'Curabitur ac leo sit amet leo interdum mattis vel eu mauris.',
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                const CustomExpandableCollapsedContainer(
                  headerText: 'Lorem ipsum dolor sit amet',
                  expandText: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies mi enim, quis vulputate nibh'
                      ' faucibus at. Maecenas est ante, suscipit vel sem non, blandit blandit erat. Praesent pulvinar ante et felis porta vulputate.'
                      ' Curabitur ornare velit nec fringilla finibus. Phasellus mollis pharetra ante, in ullamcorper massa ullamcorper et. '
                      'Curabitur ac leo sit amet leo interdum mattis vel eu mauris.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
