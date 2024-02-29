import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Config/AppConfig.dart';
import '../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class CustomExpandableCollapsedContainer extends StatelessWidget {
  final String headerText;
  final String expandText;

  const CustomExpandableCollapsedContainer({
    super.key,
    required this.headerText,
    required this.expandText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 15.0.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0.sp),
        border: Border.all(
          color: const Color(0xffD1D5DB),
          strokeAlign: BorderSide.strokeAlignInside,
          width: 1.5.w,
        ),
      ),
      child: ExpandableNotifier(
        controller: ExpandableController(),
        child: ExpandablePanel(
          theme: ExpandableThemeData(
            alignment: Alignment.centerLeft,
            iconColor: const Color(0xff9CA3AF),
            iconSize: 35.0.sp,
            iconPlacement: ExpandablePanelIconPlacement.right,
            animationDuration: const Duration(milliseconds: 300),
            bodyAlignment: ExpandablePanelBodyAlignment.left,
            tapBodyToCollapse: true,
            hasIcon: true,
            headerAlignment: ExpandablePanelHeaderAlignment.center,
            inkWellBorderRadius: BorderRadius.circular(15.0.sp),
            useInkWell: true,
            tapHeaderToExpand: true,
          ),
          header: Text(
            headerText,
            style: TextStyle(
              color: const Color(0xff111827),
              fontFamily: TextFontFamily,
              fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
              fontWeight: FontWeight.w700,
            ),
            softWrap: true,
            textAlign: TextAlign.start,
          ),
          collapsed: const SizedBox(),
          expanded: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies mi enim, quis vulputate nibh'
            ' faucibus at. Maecenas est ante, suscipit vel sem non, blandit blandit erat. Praesent pulvinar ante et felis porta vulputate.'
            ' Curabitur ornare velit nec fringilla finibus. Phasellus mollis pharetra ante, in ullamcorper massa ullamcorper et. '
            'Curabitur ac leo sit amet leo interdum mattis vel eu mauris.',
            style: TextStyle(
              color: const Color(0xff6B7280),
              fontFamily: TextFontFamily,
              fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 25.0.sp,
              fontWeight: FontWeight.w600,
            ),
            softWrap: true,
            textAlign: TextAlign.start,
          ),
        ),
      ),
    );
  }
}
