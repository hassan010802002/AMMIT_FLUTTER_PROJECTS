// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Helpers/LocationCountry_Helper/LocationCountry_Helper.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:octo_image/octo_image.dart';

import '../../../../../Config/AppConfig.dart';
import '../../../Controller/location_cubit.dart';

class CountryWidget extends StatefulWidget {
  final LocationCubit cubit;
  final int? index;

  const CountryWidget({super.key, required this.cubit, required this.index});

  @override
  _CountryWidgetState createState() => _CountryWidgetState();
}

class _CountryWidgetState extends State<CountryWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.cubit.changeSelectedCountry(widget.index!);
      },
      child: BlocBuilder<LocationCubit, LocationState>(
        bloc: widget.cubit,
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.only(right: 15.0.w, bottom: 15.0.h),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: widget.cubit.selectedCountries.contains(widget.index!) ? const Color(0xffD6E4FF) : const Color(0xffFAFAFA),
                borderRadius: BorderRadius.circular(30.0.sp),
                border: Border.all(
                  color: widget.cubit.selectedCountries.contains(widget.index!) ? const Color(0xff3366FF) : const Color(0xffE5E7EB),
                  width: 1.5.w,
                ),
              ),
              height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 18.0.h,
              width: LocationCountryHelper.locationCountry(widget.index!).title!.length < 12
                  ? MediaQuery_Size_Helper.MAX_WIDTH(context)! / 3.w
                  : MediaQuery_Size_Helper.MAX_WIDTH(context)! / 2.5,
              padding: EdgeInsets.all(10.0.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  OctoImage(
                    image: AssetImage(LocationCountryHelper.locationCountry(widget.index!).assetImage!),
                    alignment: Alignment.center,
                    fit: BoxFit.contain,
                    filterQuality: FilterQuality.high,
                    height: MediaQuery_Size_Helper.MAX_HEIGHT(context)!.h,
                    width: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 18.0.w,
                  ),
                  SizedBox(
                    width: 8.0.w,
                  ),
                  Flexible(
                    child: Text(
                      LocationCountryHelper.locationCountry(widget.index!).title!,
                      softWrap: true,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: const Color(0xff111827),
                        fontFamily: TextFontFamily,
                        fontWeight: FontWeight.w500,
                        fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
