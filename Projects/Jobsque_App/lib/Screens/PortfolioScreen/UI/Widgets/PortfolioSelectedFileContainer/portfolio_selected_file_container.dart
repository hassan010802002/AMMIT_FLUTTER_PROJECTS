// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../Controller/portfolio_controller_bloc.dart';

class PortfolioSelectedFileContainer extends StatefulWidget {
  final int currentFileIdx;
  final PortfolioControllerBloc portfolioControllerBloc;

  const PortfolioSelectedFileContainer({super.key, required this.portfolioControllerBloc, required this.currentFileIdx});

  @override
  _PortfolioSelectedFileContainerState createState() => _PortfolioSelectedFileContainerState();
}

class _PortfolioSelectedFileContainerState extends State<PortfolioSelectedFileContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery_Size_Helper.MAX_WIDTH(context)!.w,
      height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 10.0.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(0xffD1D5DB),
          strokeAlign: BorderSide.strokeAlignInside,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(12.0.sp),
      ),
      padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 10.0.h),
      child: Center(
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
                      widget.portfolioControllerBloc.portfolioFilesList!.elementAt(widget.currentFileIdx).length > 15
                          ? "${widget.portfolioControllerBloc.portfolioFilesList!.elementAt(widget.currentFileIdx).substring(0, 15)}..."
                          : widget.portfolioControllerBloc.portfolioFilesList!.elementAt(widget.currentFileIdx),
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
                  onTap: () {},
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
                    // widget.applicationCubitController.CancelCVUpload();
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
      ),
    );
  }
}
