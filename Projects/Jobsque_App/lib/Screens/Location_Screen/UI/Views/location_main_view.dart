// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/Location_Screen/Controller/location_cubit.dart';
import 'package:jobsque_app/Screens/Location_Screen/UI/Views/JobType_View/job_type_view.dart';
import 'package:jobsque_app/Screens/Location_Screen/UI/Views/LocationCountries_View/location_countries_view.dart';
import 'package:jobsque_app/Screens/Location_Screen/UI/Widgets/NextButton_Widget/next_button_widget.dart';
import 'package:jobsque_app/Screens/Location_Screen/UI/Widgets/Text1_Widget/text1_widget.dart';
import 'package:jobsque_app/Screens/Location_Screen/UI/Widgets/Text2_Widget/text2_widget.dart';
import 'package:jobsque_app/Screens/Location_Screen/UI/Widgets/Text3_Widget/text3_widget.dart';

class LocationMainView extends StatefulWidget {
  final LocationCubit cubit;

  const LocationMainView({super.key, required this.cubit});

  @override
  _LocationMainViewState createState() => _LocationMainViewState();
}

class _LocationMainViewState extends State<LocationMainView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0.w, right: 15.0.w, top: 20.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text1Widget(),
          SizedBox(
            height: 15.0.h,
          ),
          const Text2Widget(),
          SizedBox(
            height: 30.0.h,
          ),
          JobTypeView(cubit: widget.cubit),
          SizedBox(
            height: 20.0.h,
          ),
          const Text3Widget(),
          SizedBox(
            height: 20.0.h,
          ),
          LocationCountriesView(cubit: widget.cubit),
          SizedBox(
            height: 15.0.h,
          ),
          const NextButtonWidget(),
        ],
      ),
    );
  }
}
