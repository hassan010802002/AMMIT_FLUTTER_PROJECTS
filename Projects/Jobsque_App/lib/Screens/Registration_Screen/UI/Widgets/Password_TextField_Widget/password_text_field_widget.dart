// ignore_for_file: library_private_types_in_public_api, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/Registration_Screen/Consts/RegistrationConsts.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Components/CustomTextField/CustomTextField.dart';
import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/registration_cubit.dart';

class Password_TextField_Widget extends StatefulWidget {
  final RegistrationCubit cubit;

  const Password_TextField_Widget({Key? key, required this.cubit}) : super(key: key);

  @override
  _Password_TextField_WidgetState createState() => _Password_TextField_WidgetState();
}

class _Password_TextField_WidgetState extends State<Password_TextField_Widget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegistrationCubit, RegistrationState>(
      bloc: widget.cubit,
      builder: (context, state) {
        return CustomTextField(
          textEditingController: widget.cubit.passwordController,
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
              color: state is WrongUserPasswordLength ? RegistrationConsts.color6 : RegistrationConsts.color3,
              width: 1.5.w,
            ),
          ),
          hintStyle: RegistrationConsts.style6(context),
          hintText: RegistrationConsts.text6,
          fillColor: RegistrationConsts.whiteColor,
          keyboardType: TextInputType.text,
          opsecure: true,
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
            child: OctoImage(
              fit: BoxFit.contain,
              alignment: Alignment.center,
              image: const AssetImage(RegistrationConsts.image5),
              filterQuality: FilterQuality.high,
              width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 15.0.w,
              height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 15.0.h,
            ),
          ),
          onChanged: (p0) {
            widget.cubit.checkingUserEntrance();
            widget.cubit.checkingUserPasswordLength();
          },
        );
      },
    );
  }
}
