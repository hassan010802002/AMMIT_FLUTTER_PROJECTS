// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controllers/Application_Controller/application_cubit.dart';

class JobApplyUploadCVContainerWidget extends StatefulWidget {
  final ApplicationCubit applicationCubitController;

  const JobApplyUploadCVContainerWidget({super.key, required this.applicationCubitController});

  @override
  _JobApplyUploadCVContainerWidgetState createState() => _JobApplyUploadCVContainerWidgetState();
}

class _JobApplyUploadCVContainerWidgetState extends State<JobApplyUploadCVContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationCubit, ApplicationState>(
      bloc: widget.applicationCubitController,
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            widget.applicationCubitController.UploadingUserCV();
          },
          child: Container(
            width: MediaQuery_Size_Helper.MAX_WIDTH(context)!.w,
            height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 8.0.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: widget.applicationCubitController.isCVUploaded ? Colors.white : const Color(0xffECF2FF),
              border: Border.all(
                color: widget.applicationCubitController.isCVUploaded ? const Color(0xffD1D5DB) : const Color(0xff6690FF),
                strokeAlign: BorderSide.strokeAlignInside,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(12.0.sp),
            ),
            padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 10.0.h),
            child: widget.applicationCubitController.isCVUploaded
                ? Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            OctoImage(
                              image: const AssetImage("Assets/Images/PDF_Logo.png"),
                              height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.h,
                              width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 8.0.w,
                              fit: BoxFit.contain,
                              filterQuality: FilterQuality.high,
                              alignment: Alignment.center,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.applicationCubitController.myCVFile!.length > 25
                                      ? "${widget.applicationCubitController.myCVFile!.substring(0, 25)}..."
                                      : widget.applicationCubitController.myCVFile!,
                                  style: TextStyle(
                                    color: const Color(0xff111827),
                                    fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: TextFontFamily,
                                  ),
                                  softWrap: true,
                                  textAlign: TextAlign.start,
                                ),
                                Text(
                                  'CV.pdf 300KB',
                                  style: TextStyle(
                                    color: const Color(0xff6B7280),
                                    fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 28.0.sp,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: TextFontFamily,
                                  ),
                                  softWrap: true,
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                widget.applicationCubitController.UploadingUserCV();
                              },
                              child: Icon(
                                FontAwesomeIcons.penClip,
                                size: 22.0.sp,
                                color: const Color(0xff3366FF),
                              ),
                            ),
                            SizedBox(
                              width: 15.0.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                widget.applicationCubitController.CancelCVUpload();
                              },
                              child: Icon(
                                FontAwesomeIcons.circleXmark,
                                size: 22.0.sp,
                                color: const Color(0xffFF472B),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OctoImage(
                        image: const AssetImage("Assets/Images/document-upload.png"),
                        alignment: Alignment.center,
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.contain,
                        width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.w,
                        height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 10.0.h,
                      ),
                      SizedBox(
                        height: 10.0.h,
                      ),
                      Text(
                        'Upload CV',
                        style: TextStyle(
                          color: const Color(0xff6B7280),
                          fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 25.0.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: TextFontFamily,
                        ),
                        softWrap: true,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
          ),
        );
      },
    );
  }
}
