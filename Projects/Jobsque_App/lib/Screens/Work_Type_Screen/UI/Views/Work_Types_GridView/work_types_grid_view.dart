// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/Work_Type_Screen/UI/Views/Work_Types_GridView/WorkType_Container_View/work_type_container_view.dart';

import '../../../Controller/work_type_cubit.dart';

class WorkTypesGridView extends StatefulWidget {
  final WorkTypeCubit cubit;

  const WorkTypesGridView({Key? key , required this.cubit}) : super(key: key);

  @override
  _WorkTypesGridViewState createState() => _WorkTypesGridViewState();
}

class _WorkTypesGridViewState extends State<WorkTypesGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 6,
      controller: ScrollController(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15.0.w,
        mainAxisSpacing: 20.0.h,
        childAspectRatio: 1.15,
      ),
      itemBuilder: (BuildContext context, int index) {
        return WorkTypeContainerView(index: index, cubit: widget.cubit);
      },
    );
  }
}
