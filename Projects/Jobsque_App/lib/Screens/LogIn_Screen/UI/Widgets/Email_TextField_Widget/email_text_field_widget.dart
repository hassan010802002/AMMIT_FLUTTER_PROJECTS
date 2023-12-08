// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/LogIn_Screen/Controller/log_in_cubit.dart';
import 'package:octo_image/octo_image.dart';
import '../../../../../Components/CustomTextField/CustomTextField.dart';
import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';

class EmailTextFieldWidget extends StatefulWidget {
  final LogInCubit cubit;

  const EmailTextFieldWidget({Key? key , required this.cubit}) : super(key: key);

  @override
  _EmailTextFieldWidgetState createState() => _EmailTextFieldWidgetState();
}

class _EmailTextFieldWidgetState extends State<EmailTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      textEditingController: widget.cubit.emailController,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0.sp),
        borderSide: BorderSide(
          color: const Color(0xffD1D5DB),
          width: 1.5.w,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0.sp),
        borderSide: BorderSide(
          color: const Color(0xff3366FF),
          width: 1.5.w,
        ),
      ),
      hintStyle: TextStyle(
        color: const Color(0xff9CA3AF),
        fontFamily: TextFontFamily,
        fontWeight: FontWeight.w400,
        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)!/24.0.sp,
      ),
      hintText: "Email",
      fillColor: Colors.white,
      keyboardType: TextInputType.name,
      prefixIcon: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w),
        child: OctoImage(
          fit: BoxFit.contain,
          alignment: Alignment.center,
          image: const AssetImage("Assets/Images/sms.png"),
          filterQuality: FilterQuality.high,
          width: MediaQuery_Size_Helper.MAX_WIDTH(context)!/15.0.w,
          height: MediaQuery_Size_Helper.MAX_WIDTH(context)!/15.0.h,
        ),
      ),
      onChanged: (p0) {
        widget.cubit.checkingUserEntrance();
      },
    );
  }
}
