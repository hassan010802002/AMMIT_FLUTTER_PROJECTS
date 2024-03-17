// ignore_for_file: library_private_types_in_public_api

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/portfolio_controller_bloc.dart';

class UploadPortfolioFileContainer extends StatefulWidget {
  final PortfolioControllerBloc portfolioControllerBloc;

  const UploadPortfolioFileContainer({super.key, required this.portfolioControllerBloc});

  @override
  _UploadPortfolioFileContainerState createState() => _UploadPortfolioFileContainerState();
}

class _UploadPortfolioFileContainerState extends State<UploadPortfolioFileContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.portfolioControllerBloc.add(UploadingPortfolioDataEvent());
      },
      child: DottedBorder(
        color: const Color(0xff6690FF),
        radius: Radius.circular(12.0.sp),
        strokeCap: StrokeCap.butt,
        dashPattern: const [8, 4],
        strokeWidth: 2.0.w,
        borderType: BorderType.RRect,
        child: Container(
          height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 3.5.h,
          decoration: const BoxDecoration(
            color: Color(0xffECF2FF),
          ),
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 10.0.h),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OctoImage(
                  image: const AssetImage("Assets/Images/document-upload.png"),
                  height: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 6.0.h,
                  width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 6.0.w,
                  fit: BoxFit.contain,
                  filterQuality: FilterQuality.high,
                  alignment: Alignment.center,
                ),
                Text(
                  'Upload your CV file',
                  style: TextStyle(
                    color: const Color(0xff111827),
                    fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 20.0.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: TextFontFamily,
                  ),
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Max. file size 10 MB',
                  style: TextStyle(
                    color: const Color(0xff6B7280),
                    fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 26.0.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: TextFontFamily,
                  ),
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    widget.portfolioControllerBloc.add(UploadingPortfolioDataEvent());
                  },
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(Color(0xffD6E4FF)),
                    padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 10.0.h)),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(45.0.sp),
                        side: BorderSide(
                          color: const Color(0xff3366FF),
                          strokeAlign: BorderSide.strokeAlignInside,
                          width: 1.5.w,
                        ),
                      ),
                    ),
                    visualDensity: VisualDensity.adaptivePlatformDensity,
                    alignment: Alignment.center,
                    fixedSize: MaterialStatePropertyAll(
                      Size(
                        MediaQuery_Size_Helper.MAX_WIDTH(context)! / 1.2.w,
                        MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 18.0.h,
                      ),
                    ),
                    iconSize: MaterialStatePropertyAll(35.0.sp),
                  ),
                  icon: OctoImage(
                    image: const AssetImage("Assets/Images/export.png"),
                    alignment: Alignment.center,
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.fill,
                  ),
                  label: Text(
                    'Add file',
                    style: TextStyle(
                      color: const Color(0xff3366FF),
                      fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 22.0.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: TextFontFamily,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
