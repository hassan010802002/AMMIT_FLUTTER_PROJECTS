// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/Registration_Screen/Consts/RegistrationConsts.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Components/CustomTextField/CustomTextField.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/registration_cubit.dart';

class UserNameTextFieldWidget extends StatefulWidget {
  final RegistrationCubit cubit;

  const UserNameTextFieldWidget({Key? key , required this.cubit}) : super(key: key);

  @override
  _UserNameTextFieldWidgetState createState() => _UserNameTextFieldWidgetState();
}

class _UserNameTextFieldWidgetState extends State<UserNameTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      textEditingController: widget.cubit.userNameController,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0.sp),
        borderSide: BorderSide(
          color: RegistrationConsts.color1,
          width: 1.5.w,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0.sp),
        borderSide: BorderSide(
          color: RegistrationConsts.color4,
          width: 1.5.w,
        ),
      ),
      hintStyle: RegistrationConsts.style12(context),
      hintText: RegistrationConsts.text12,
      fillColor: Colors.white,
      keyboardType: TextInputType.name,
      prefixIcon: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w),
        child: OctoImage(
          fit: BoxFit.contain,
          alignment: Alignment.center,
          image: const AssetImage(RegistrationConsts.image6),
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
