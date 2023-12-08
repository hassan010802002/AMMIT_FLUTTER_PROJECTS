// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/Work_Type_Screen/UI/Views/Work_Types_GridView/work_types_grid_view.dart';
import 'package:jobsque_app/Screens/Work_Type_Screen/UI/Widgets/NextButton_Widget/next_button_widget.dart';
import 'package:jobsque_app/Screens/Work_Type_Screen/UI/Widgets/Text1_Widget/text1_widget.dart';
import 'package:jobsque_app/Screens/Work_Type_Screen/UI/Widgets/Text2_Widget/text2_widget.dart';

import '../../Controller/work_type_cubit.dart';

class WorkTypeMainView extends StatefulWidget {
  final WorkTypeCubit cubit;

  const WorkTypeMainView({Key? key, required this.cubit}) : super(key: key);

  @override
  _WorkTypeMainViewState createState() => _WorkTypeMainViewState();
}

class _WorkTypeMainViewState extends State<WorkTypeMainView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0.w, right: 20.0.w, top: 20.0.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text1Widget(),
            SizedBox(
              height: 12.0.h,
            ),
            const Text2Widget(),
            SizedBox(
              height: 30.0.h,
            ),
            SizedBox(
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)!/1.55.h,
              child: WorkTypesGridView(cubit: widget.cubit),
            ),
            const NextButtonWidget()
          ],
        ),
      ),
    );
  }
}
