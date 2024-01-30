import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/AboutUsTextWidget/about_us_text_widget.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/ContactUsTextWidget/contact_us_text_widget.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/JobDetailsAboutCompanyTextWidget/job_details_about_company_text_widget.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/JobDetailsEmailContainerWidget/job_details_email_container_widget.dart';
import 'package:jobsque_app/Screens/Job_Application_Screen/UI/Widgets/JobDetailsWebsiteContainerWidget/job_details_website_container_widget.dart';

import '../../../../../../../Helpers/Size_Helper/MediaQuery_Size_Helper.dart';
import '../../../../../Controllers/Details_Controller/details_cubit.dart';

class JobDetailsCompanyTapView extends StatefulWidget {
  final DetailsCubit? detailsCubitController;

  const JobDetailsCompanyTapView({Key? key, required this.detailsCubitController}) : super(key: key);

  @override
  _JobDetailsCompanyTapViewState createState() => _JobDetailsCompanyTapViewState();
}

class _JobDetailsCompanyTapViewState extends State<JobDetailsCompanyTapView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailsCubit, DetailsState>(
      bloc: widget.detailsCubitController,
      builder: (context, state) {
        return widget.detailsCubitController!.isSuccessJobData
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 30.0.h,
                  ),
                  const ContactUsTextWidget(),
                  SizedBox(
                    height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 50.0.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      JobDetailsEmailContainerWidget(detailsCubitController: widget.detailsCubitController),
                      JobDetailsWebsiteContainerWidget(detailsCubitController: widget.detailsCubitController),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 30.0.h,
                  ),
                  const AboutUsTextWidget(),
                  SizedBox(
                    height: MediaQuery_Size_Helper.MAX_HEIGHT(context)! / 50.0.h,
                  ),
                  JobDetailsAboutCompanyTextWidget(detailsCubitController: widget.detailsCubitController),
                ],
              )
            : const SizedBox();
      },
    );
  }
}
