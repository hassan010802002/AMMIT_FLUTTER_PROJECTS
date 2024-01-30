import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Components/Custom_Button/Custom_Button.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

import '../../../Controllers/Details_Controller/details_cubit.dart';

class JobApplicationButtonWidget extends StatefulWidget {
  final DetailsCubit? detailsCubitController;

  const JobApplicationButtonWidget({Key? key, required this.detailsCubitController}) : super(key: key);

  @override
  _JobApplicationButtonWidgetState createState() => _JobApplicationButtonWidgetState();
}

class _JobApplicationButtonWidgetState extends State<JobApplicationButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      style: TextStyle(
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
        fontFamily: TextFontFamily,
      ),
      onPressed: () {},
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45.0.sp),
        ),
      ),
      backgroundColor: const MaterialStatePropertyAll(Color(0xff3366FF)),
      buttonText: "Apply now",
      fixedSize: MaterialStatePropertyAll(
        Size(MediaQuery_Size_Helper.MAX_WIDTH(context)!, MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 16.0.h),
      ),
    );
  }
}
