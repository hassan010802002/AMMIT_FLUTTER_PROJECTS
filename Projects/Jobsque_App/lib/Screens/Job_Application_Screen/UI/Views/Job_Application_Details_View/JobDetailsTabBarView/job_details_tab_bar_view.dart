import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Config/AppConfig.dart';
import 'package:jobsque_app/Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Views/Job_Application_Details_View/JobDetailsTabBarView/JobDetailsDescriptionTabView/job_details_description_tab_view.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Views/Job_Application_Details_View/JobDetailsTabBarView/JobDetailsPeopleTapView/job_details_people_tap_view.dart';

import '../../../../Controllers/Details_Controller/details_cubit.dart';
import 'JobDetailsCompanyTapView/job_details_company_tap_view.dart';

class JobDetailsTabBarView extends StatefulWidget {
  final DetailsCubit? detailsCubitController;

  const JobDetailsTabBarView({Key? key, required this.detailsCubitController}) : super(key: key);

  @override
  _JobDetailsTabBarViewState createState() => _JobDetailsTabBarViewState();
}

class _JobDetailsTabBarViewState extends State<JobDetailsTabBarView> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h,
          decoration: BoxDecoration(
            color: const Color(0xffF4F4F5),
            borderRadius: BorderRadius.circular(45.0.sp),
          ),
          width: MediaQuery_Size_Helper.MAX_HEIGHT(context)!.w,
          child: TabBar(
            unselectedLabelColor: const Color(0xff6B7280),
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
              fontFamily: TextFontFamily,
            ),
            labelStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: MediaQuery_Size_Helper.MAX_WIDTH(context)! / 24.0.sp,
              fontFamily: TextFontFamily,
            ),
            labelColor: Colors.white,
            indicatorPadding: EdgeInsets.all(0.0.sp),
            indicatorWeight: 0.0.sp,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(45.0.sp),
              color: const Color(0xff02337A),
            ),
            dividerHeight: 0,
            splashBorderRadius: BorderRadius.circular(45.0.sp),
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h,
                text: "Description",
              ),
              Tab(
                height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h,
                text: "Company",
              ),
              Tab(
                height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 15.0.h,
                text: "People",
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 2.2.h,
          child: TabBarView(
            children: [
              SingleChildScrollView(
                child: JobDetailsDescriptionTabView(detailsCubitController: widget.detailsCubitController),
              ),
              SingleChildScrollView(
                child: JobDetailsCompanyTapView(detailsCubitController: widget.detailsCubitController),
              ),
              SingleChildScrollView(
                child: JobDetailsPeopleTapView(detailsCubitController: widget.detailsCubitController),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
